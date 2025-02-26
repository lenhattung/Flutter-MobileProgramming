/*
BÀI TẬP: Cấu trúc dữ liệu trong Dart
====================================
Bài 1: List

Có bao nhiêu cách để khai báo một List trong đoạn code? Liệt kê và giải thích từng cách.
Cho List ['A', 'B', 'C']. Viết code để:

Thêm phần tử 'D' vào cuối List
Chèn phần tử 'X' vào vị trí thứ 1
Xóa phần tử 'B'
In ra độ dài của List


Đoạn code sau sẽ cho kết quả gì?

dartCopyvar list = [1, 2, 3, 4, 5];
list.removeWhere((e) => e % 2 == 0);
print(list);

Giải thích sự khác nhau giữa các phương thức:

remove() và removeAt()
add() và insert()
addAll() và insertAll()


====================================
Bài 2: Set

Set khác List ở những điểm nào? Nêu ít nhất 3 điểm khác biệt.
Cho hai Set:

dartCopyvar set1 = {1, 2, 3};
var set2 = {3, 4, 5};
Tính kết quả của:

Union (hợp)
Intersection (giao)
Difference (hiệu) của set1 với set2


Đoạn code sau sẽ cho kết quả gì?

dartCopyvar mySet = Set.from([1, 2, 2, 3, 3, 4]);
print(mySet.length);



====================================
Bài 3: Map

Viết code để thực hiện các yêu cầu sau với Map:

dartCopyMap<String, dynamic> user = {
  'name': 'Nam',
  'age': 20,
  'isStudent': true
};

Thêm email: 'nam@gmail.com'
Cập nhật age thành 21
Xóa trường isStudent
Kiểm tra xem Map có chứa key 'phone' không


So sánh hai cách truy cập giá trị trong Map:

dartCopyuser['phone']
user['phone'] ?? 'Không có số điện thoại'

Viết một hàm nhận vào một Map và in ra tất cả các cặp key-value, mỗi cặp trên một dòng.


====================================
Phần 4: Runes

Runes được sử dụng để làm gì? Cho ví dụ cụ thể.
Viết code để:


Tạo một Runes chứa ký tự emoji cười 😀
Chuyển đổi Runes đó thành String
In ra số lượng điểm mã của Runes

*/