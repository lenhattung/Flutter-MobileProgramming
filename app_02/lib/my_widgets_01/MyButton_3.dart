import "package:flutter/material.dart";

class MyButton_3 extends StatelessWidget {
  const MyButton_3({super.key});

  @override
  Widget build(BuildContext context) {
    // Tra ve Scaffold - widget cung cap bo cuc Material Design co ban
    // Man hinh
    return Scaffold(
      // Tiêu đề của ứng dụng
      appBar: AppBar(
        // Tieu de
        title: Text("App 02"),
        // Mau nen
        backgroundColor: Colors.yellow,
        // Do nang/ do bong cua AppBar
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {
              print("b1");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("b2");
            },
            icon: Icon(Icons.abc),
          ),
          IconButton(
            onPressed: () {
              print("b3");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),

            // khoa nut nhan
            ElevatedButton(
              onPressed: null, // Khóa lại
              child: Text("ElevatedButton", style: TextStyle(fontSize: 24)),
              style: ElevatedButton.styleFrom(
                // màu nền
                backgroundColor: Colors.green,
                // màu của các nội dung bên trong
                foregroundColor: Colors.white,
                // dạng hình
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                // padding
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                // elevate
                elevation: 15,
              ),
            ),

            SizedBox(height: 50),
            // khoa nut nhan
            ElevatedButton(
              onPressed: () {
                print("Pressed");
              },
              onLongPress: () {
                print("Long Pressed");
              },
              child: Text("ElevatedButton", style: TextStyle(fontSize: 24)),
              style: ElevatedButton.styleFrom(
                // màu nền
                backgroundColor: Colors.green,
                // màu của các nội dung bên trong
                foregroundColor: Colors.white,
                // dạng hình
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                // padding
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                // elevate
                elevation: 15,
              ),
            ),

            SizedBox(height: 50),

            // InkWell
            // InkWell không phải là button,
            // nhưng nó cho phép tạo hiệu ứng gợn sóng (ripple effect)
            // khi nhấn vào bất kỳ widget nào.
            InkWell(
              onTap: () {
                print("Inkwell được nhấn!");
              },
              onDoubleTap: () {
                print("Inkwell được nhấn 2 lần liên tiếp!");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: Text("Button tùy chỉnh với Inkwell"),
              ),
            ),

            SizedBox(height: 20),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              label: Text("Yêu thích"),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("pressed");
        },
        child: const Icon(Icons.add_ic_call),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm kiếm"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá nhân"),
        ],
      ),
    );
  }
}
