/*
  Chuỗi là một tập hợp ký tự UTF-16.
*/

void main(){
  String s1 = 'Le Nhat Tung';
  var s2 = "TITV.vn";


  // Chèn giá trị của một biểu thức, biến vào trong chuỗi: ${....}
  double diemToan = 9.5;
  double diemVan = 7.5;
  var s3 = 'Xin chào $s1, bạn đã đạt tổng điểm là: ${diemToan+diemVan}';
  print(s3);

  // Tạo ra chuỗi nằm ở nhiều dòng
  var s4 = '''
      Dòng 1
      Dòng 2
      Dòng 3
  ''';

  var s5 = """
        Dòng 1
        Dòng 2
        Dòng 3
    """;
  
  var s6 = 'Đây là một đoạn \n văn bản!';
  print(s6);

  var s7 = r'Đây là một đoạn \n văn bản!'; // raw
  print(s7);

  var s8 = "Chuỗi 1 " + "Chuỗi 2";
  print(s8);

  String s9 = 'Chuỗi '
            "này " 
            "là "
            "một chuỗi";
  print(s9);
}