import 'dart:convert';

class User {
  int? id;
  String name;
  String email;
  String phone;
  String? avatar;
  DateTime dateOfBirth;

  User({
    this.id,
    required this.name,
    required this.email,
    required this.phone,
    this.avatar,
    required this.dateOfBirth,
  });

  Map<String, dynamic> toData() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'avatar': avatar,
      'dateOfBirth': dateOfBirth.toIso8601String(),
    };
  }

  // Chuyển đối tượng User thành Map
  Map<String, dynamic> toMap() {
    return toData();
  }

  // Chuyển đối tượng User thành Map
  String toJSON() {
    return jsonEncode(toData());
  }

  // Tạo đối tượng User từ Map
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
      avatar: map['avatar'],
      dateOfBirth: DateTime.parse(map['dateOfBirth']),
    );
  }

  // Tạo đối tượng User từ JSON
  factory User.fromJSON(String json) {
    Map<String, dynamic> map = jsonDecode(json);
    return User(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
      avatar: map['avatar'],
      dateOfBirth: DateTime.parse(map['dateOfBirth']),
    );
  }

  // Phương thức copy để tạo bản sao với một số thuộc tính được cập nhật
  User copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? avatar,
    DateTime? dateOfBirth,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      avatar: avatar ?? this.avatar,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
    );
  }



  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phone: $phone, dateOfBirth: $dateOfBirth)';
  }

}