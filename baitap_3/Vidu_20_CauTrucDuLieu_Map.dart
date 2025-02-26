void main() {
  // ĐỊNH NGHĨA:
  // - Map là cấu trúc dữ liệu lưu trữ dạng key-value
  // - Mỗi key là duy nhất
  // - Value có thể trùng lặp
  // - Key và value có thể là bất kỳ kiểu dữ liệu nào

  // CÁCH KHAI BÁO:
  
  // Cách 1: Khai báo trực tiếp
  Map<String, dynamic> user1 = {
    'name': 'Tung',
    'age': 20,
    'isStudent': true,
    'address': 'Tung'
  };

  // Cách 2: Sử dụng var
  var user2 = <String, dynamic>{
    'name': 'Hoa',
    'age': 25
  };

  // Cách 3: Khởi tạo Map rỗng
  Map<int, String> numbers = {};
  var emptyMap = Map<String, int>();

  // CÁC PHƯƠNG THỨC:

  // 1. Thêm và cập nhật:
  user1['email'] = 'nam@gmail.com';     // Thêm entry mới
  user1['age'] = 21;                    // Cập nhật value
  user1.putIfAbsent('phone', () => '0123456789'); // Thêm nếu key chưa tồn tại
  user1.addAll({                        // Thêm nhiều entry
    'address': 'Hanoi',
    'gender': 'male'
  });

  // 2. Xóa:
  user1.remove('age');                  // Xóa theo key
  user1.removeWhere((key, value) => value == null); // Xóa theo điều kiện
  user1.clear();                        // Xóa tất cả

  // 3. Truy cập:
  print(user1['name']);                 // Lấy value theo key
  print(user1.length);                  // Số lượng entry
  
  // Lấy value an toàn với giá trị mặc định
  String phone = user1['phone'] ?? 'Không có số điện thoại';

  // 4. Kiểm tra:
  print(user1.isEmpty);                 // Kiểm tra rỗng
  print(user1.isNotEmpty);              // Kiểm tra không rỗng
  print(user1.containsKey('name'));     // Kiểm tra tồn tại key
  print(user1.containsValue('Nam'));    // Kiểm tra tồn tại value

  // 5. Lấy danh sách:
  print(user1.keys);                    // Lấy tất cả keys
  print(user1.values);                  // Lấy tất cả values
  print(user1.entries);                 // Lấy tất cả entries

  // 6. Duyệt Map:
  // Duyệt theo key-value
  user1.forEach((key, value) {
    print('$key: $value');
  });

  // Duyệt qua entries
  for (var entry in user1.entries) {
    print('${entry.key}: ${entry.value}');
  }

  // 7. Biến đổi:
  // Map key thành chữ hoa
  var upperMap = user1.map((key, value) => 
    MapEntry(key.toUpperCase(), value));

  // Lọc Map
  var filteredMap = user1.entries
    .where((entry) => entry.value is String)
    .toList();

  // VÍ DỤ THỰC TẾ:
  
  // 1. Lưu trữ thông tin sản phẩm trong giỏ hàng
  Map<String, int> cart = {
    'SP001': 2,  // productId: quantity
    'SP002': 1,
    'SP003': 3
  };

  // Thêm sản phẩm vào giỏ
  void addToCart(String productId) {
    cart.update(
      productId,
      (quantity) => quantity + 1,
      ifAbsent: () => 1
    );
  }

  // Cập nhật số lượng
  void updateQuantity(String productId, int quantity) {
    if (cart.containsKey(productId)) {
      cart[productId] = quantity;
    }
  }

  // 2. Lưu cài đặt ứng dụng
  Map<String, dynamic> settings = {
    'darkMode': false,
    'fontSize': 14,
    'language': 'vi',
    'notifications': true
  };

  // Cập nhật cài đặt
  void updateSetting(String key, dynamic value) {
    settings[key] = value;
  }

  // 3. Cache dữ liệu
  Map<String, String> cache = {};

  void cacheData(String key, String data) {
    cache[key] = data;
  }

  String getData(String key) {
    return cache[key] ?? 'No data';
  }

  // 4. Quản lý trạng thái form
  Map<String, String> formErrors = {};

  void setError(String field, String error) {
    formErrors[field] = error;
  }

  void clearError(String field) {
    formErrors.remove(field);
  }

  bool hasErrors() {
    return formErrors.isNotEmpty;
  }
}