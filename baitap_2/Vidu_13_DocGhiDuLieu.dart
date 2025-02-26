import 'dart:io';

void main(){
  // Nhập tên người dùng
  stdout.write('Enter your name: ');
  String name = stdin.readLineSync()!;

  // Nhập tuổi người dùng
  stdout.write('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);

  print("Xin chào: $name, tuổi của bạn là: $age");
}