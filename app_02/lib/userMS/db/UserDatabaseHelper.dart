import "../model/User.dart";
import "package:sqflite/sqflite.dart";
import 'package:path/path.dart';

class UserDatabaseHelper {
  static final UserDatabaseHelper instance = UserDatabaseHelper._init();
  static Database? _database;

  UserDatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('app_database.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
        CREATE TABLE users (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
          email TEXT NOT NULL,
          phone TEXT NOT NULL,
          avatar TEXT,
          dateOfBirth TEXT NOT NULL
        )
      ''');

    // Tạo sẵn dữ liệu mẫu
    await _insertSampleData(db);
  }

  // Phương thức chèn dữ liệu mẫu
  Future _insertSampleData(Database db) async {
    // Danh sách dữ liệu mẫu
    final List<Map<String, dynamic>> sampleUsers = [
      {
        'name': 'Nguyễn Văn An',
        'email': 'nguyenvanan@gmail.com',
        'phone': '0901234567',
        'avatar': null,
        'dateOfBirth': DateTime(1990, 5, 15).toIso8601String(),
      },
      {
        'name': 'Trần Thị Bình',
        'email': 'tranthibinh@gmail.com',
        'phone': '0912345678',
        'avatar': null,
        'dateOfBirth': DateTime(1992, 8, 21).toIso8601String(),
      },
      {
        'name': 'Lê Văn Cường',
        'email': 'levancuong@gmail.com',
        'phone': '0923456789',
        'avatar': null,
        'dateOfBirth': DateTime(1988, 3, 10).toIso8601String(),
      },
      {
        'name': 'Phạm Thị Dung',
        'email': 'phamthidung@gmail.com',
        'phone': '0934567890',
        'avatar': null,
        'dateOfBirth': DateTime(1995, 11, 25).toIso8601String(),
      },
      {
        'name': 'Hoàng Văn Emm',
        'email': 'hoangvanemm@gmail.com',
        'phone': '0945678901',
        'avatar': null,
        'dateOfBirth': DateTime(1993, 7, 8).toIso8601String(),
      },
    ];

    // Chèn từng người dùng vào cơ sở dữ liệu
    for (final userData in sampleUsers) {
      await db.insert('users', userData);
    }
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }

  /*
  instance: Singleton pattern đảm bảo chỉ có một instance của DatabaseHelper
  database: Getter trả về instance của Database, tạo mới nếu chưa tồn tại
  _initDB: Khởi tạo database với đường dẫn cụ thể
  _createDB: Tạo các bảng khi database được tạo lần đầu
  close: Đóng kết nối database
   */

  // Create - Thêm user mới
  Future<int> createUser(User user) async {
    final db = await instance.database;
    return await db.insert('users', user.toMap());
  }

  // Read - Đọc tất cả users
  Future<List<User>> getAllUsers() async {
    final db = await instance.database;
    final result = await db.query('users');

    return result.map((map) => User.fromMap(map)).toList();
  }

  // Read - Đọc user theo id
  Future<User?> getUserById(int id) async {
    final db = await instance.database;
    final maps = await db.query('users', where: 'id = ?', whereArgs: [id]);

    if (maps.isNotEmpty) {
      return User.fromMap(maps.first);
    }
    return null;
  }

  // Update - Cập nhật user
  Future<int> updateUser(User user) async {
    final db = await instance.database;
    return await db.update(
      'users',
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  // Delete - Xoá user
  Future<int> deleteUser(int id) async {
    final db = await instance.database;
    return await db.delete('users', where: 'id = ?', whereArgs: [id]);
  }

  // Delete - Xoá tất cả users
  Future<int> deleteAllUsers() async {
    final db = await instance.database;
    return await db.delete('users');
  }

  // Đếm số lượng users
  Future<int> countUsers() async {
    final db = await instance.database;
    final result = await db.rawQuery('SELECT COUNT(*) FROM users');
    return Sqflite.firstIntValue(result) ?? 0;
  }
}
