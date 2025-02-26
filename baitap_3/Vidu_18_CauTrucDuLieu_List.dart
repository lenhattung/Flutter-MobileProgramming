void main(){
  // ĐỊNH NGHĨA:
  // - List là tập hợp các phần tử có thứ tự và có thể trùng lặp
  // - Các phần tử được truy cập bằng chỉ số (index) từ 0
  // - Kích thước có thể thay đổi được

  List<String> list1 = ['A', 'B', 'C']; // Trực tiếp
  var list2 = [1,2,3]; // sử dụng var
  List<String> list3 = []; // list rỗng
  var list4 = List<int>.filled(3,0); // List có kích thước cố định [0,0,0]
  print(list4);

  // 1. Thêm phần tử
  list1.add('D'); // Thêm 1 phần tử
  list1.addAll(['A', 'C']); // Thêm nhiều phần tử
  list1.insert(0, 'Z'); // Chèn 1 phần tử
  list1.insertAll(1, ['1', '0']); // Chèn nhiều phần tử
  print(list1);

  // 2. Xóa phần tử bên trong list
  list1.remove('A'); // Xóa phần tử có giá trị A
  list1.removeAt(0); // Xóa phần tử tại vị trí 0
  list1.removeLast; // Xóa phần tử tại vị trí cuối
  list1.removeWhere((e)=>e=='B'); // Xóa theo điều kiện
  list1.clear();
  print(list1);

  // 3. Truy cập phần tử:
  print(list2[0]); // Lấy phần tử tại vị trí 0;
  print(list2.first); // Lấy phần tử đầu tiên
  print(list2.last); // Lấy phần tử cuối cùng
  print(list2.length); // Độ dài list

  // 4. Kiểm tra
  print(list2.isEmpty); // Kiểm tra rỗng
  print('List 3: ${list3.isNotEmpty?'không rỗng':'rỗng'}');
  print(list4.contains(1));
  print(list4.contains(0));
  print(list4.indexOf(0));
  print(list4.lastIndexOf(0));

  // 5. Biến đổi
  list4 = [2, 1 ,3, 9, 0, 10];
  print(list4);
  list4.sort(); // Sắp xếp tăng dần
  print(list4);
  list4.reversed; // Đảo ngược
  list4 = list4.reversed.toList();
  print(list4);

  // 7. Cắt và nối
  var subList = list4.sublist(1,3); // Cắt một sublits từ 1 đến < 3
  print(subList);
  var str_joined = list4.join(",");
  print(str_joined);

  // 8. Duyệt các phần tử bên trong List
  list4.forEach((element){
    print(element);
  });
 
}