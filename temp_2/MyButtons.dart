import "package:flutter/material.dart";

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

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
            // ElevatedButton là một button nổi với hiệu ứng đổ bóng, thường được sử dụng cho các hành động chính trong ứng dụng.
            ElevatedButton(
              onPressed: () {
                print("Click me!");
              },
              child: Text("Click me!", style: TextStyle(fontSize: 24)),
            ),

            SizedBox(height: 20),

            // TextButton là một button phẳng, không có đổ bóng, thường dùng cho các hành động thứ yếu hoặc trong các thành phần như Dialog, Card.
            TextButton(
              onPressed: () {},
              child: Text("Button 2", style: TextStyle(fontSize: 24)),
            ),

            SizedBox(height: 20),
            // OutlinedButton là button có viền bao quanh, không có màu nền, phù hợp cho các hành động thay thế.
            OutlinedButton(
              onPressed: () {},
              child: Text("Button 3", style: TextStyle(fontSize: 24)),
            ),

            SizedBox(height: 20),
            // IconButton là button chỉ gồm icon, không có văn bản, thường dùng trong AppBar, ToolBar.
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),

            SizedBox(height: 20),
            // FloatingActionButton là button hình tròn, nổi trên giao diện, thường dùng cho hành động chính của màn hình.
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),

            SizedBox(height: 20),
            // Tuy chinh
            ElevatedButton(
              onPressed: () {
                print("Click me!");
              },
              child: Text(
                "Click me!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                // màu nền
                foregroundColor: Colors.white,
                // màu chữ
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 10,
              ),
            ),

            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              label: Text("Yêu thích"),
            ),

            SizedBox(height: 20),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              label: Text("Yêu thích"),
            ),

            // InkWell không phải là button, nhưng nó cho phép tạo hiệu ứng gợn sóng (ripple effect) khi nhấn vào bất kỳ widget nào.
            InkWell(
              onTap: (){
                print("Inkwell được nhấn!");
              },
              splashColor: Colors.blue.withOpacity(0.5),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: Text("Button tùy chỉnh với Inkwell"),
              )
            )
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
