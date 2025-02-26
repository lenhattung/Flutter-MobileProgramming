void main() {
  // ĐỊNH NGHĨA:
  // - Set là tập hợp các phần tử không trùng lặp
  // - Không có thứ tự xác định
  // - Mỗi phần tử chỉ xuất hiện một lần

  // Cách khai báo:
  Set<String> set1 = {'A', 'B', 'C'};  // Trực tiếp
  var set2 = <int>{1, 2, 3};          // Sử dụng var
  Set<String> set3 = Set();           // Set rỗng
  var set4 = Set<int>.from([1,2,2,3]); // Từ List (loại bỏ trùng)

  // CÁC PHƯƠNG THỨC:
  
  // 1. Thêm phần tử:
  set1.add('D');               // Thêm một phần tử
  set1.addAll(['E', 'F']);    // Thêm nhiều phần tử
  
  // 2. Xóa phần tử:
  set1.remove('A');           // Xóa một phần tử
  set1.removeAll(['B', 'C']); // Xóa nhiều phần tử
  set1.clear();               // Xóa tất cả
  
  // 3. Truy cập và kiểm tra:
  print(set1.length);         // Số lượng phần tử
  print(set1.isEmpty);        // Kiểm tra rỗng
  print(set1.contains('A'));  // Kiểm tra tồn tại
  
  // 4. Các phép toán tập hợp:
  var set5 = {1, 2, 3};
  var set6 = {3, 4, 5};
  
  var union = set5.union(set6);        // Hợp: {1,2,3,4,5}
  var intersection = set5.intersection(set6); // Giao: {3}
  var difference = set5.difference(set6);    // Hiệu: {1,2}
  var difference1 = set6.difference(set5);    // Hiệu: {4,5}
  
  // 5. Biến đổi:
  var list = set1.toList();   // Chuyển thành List
  var newSet = Set.from(set1); // Tạo Set mới
  
  // 6. Lọc và ánh xạ:
  var filtered = set1.where((e) => e.startsWith('A'));
  var mapped = set1.map((e) => e.toLowerCase());
  
  // 7. Xử lý từng phần tử:
  set1.forEach((element) {
    print(element);
  });

  // VÍ DỤ THỰC TẾ:
  // Quản lý danh sách bạn bè
  Set<String> friendIds = {'user1', 'user2', 'user3'};
  
  // Thêm bạn
  friendIds.add('user4');  // OK
  friendIds.add('user1');  // Không thêm được vì đã tồn tại
  
  // Kiểm tra bạn bè
  bool isFriend = friendIds.contains('user1');
  
  // Đề xuất bạn bè
  Set<String> suggestions = {'user5', 'user6', 'user1'};
  var newFriends = suggestions.difference(friendIds); // Chỉ lấy người chưa là bạn
}