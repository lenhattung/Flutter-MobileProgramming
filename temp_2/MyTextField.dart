import "package:flutter/material.dart";

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

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

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),

              /*
            TextField là widget cho phép người dùng nhập văn bản thông qua bàn phím.
             Đây là thành phần thiết yếu trong hầu hết các ứng dụng,
             từ biểu mẫu đăng nhập,
             tìm kiếm, đến nhập liệu trong các ứng dụng phức tạp.
            */
              TextField(
                decoration: InputDecoration(
                  labelText: "Họ và tên",
                  hintText: "Nhập vào họ và tên của bạn",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "example@gmail.com",
                  helperText: "Nhập email cá nhân",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.clear),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(height: 30),
              TextField(
                // onChanged: (value){
                //   print("Đang ngập: $value");
                // },
                onSubmitted: (value) {
                  print("Đã hoàn thành nhập: $value");
                },
                onTap: () {
                  // Xử lý khi người dùng nhấn vào TextField
                  print('TextField được nhấn');
                },
                decoration: InputDecoration(
                  labelText: "Địa chỉ",
                  hintText: "Nhập vào địa chỉ của bạn",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  labelText: "Số điện thoại",
                  hintText: "Nhập vào địa chỉ của bạn",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),

              SizedBox(height: 30),

              TextField(
                obscureText: true, // Ẩn nội dung đã nhập
                decoration: InputDecoration(
                  labelText: "Mật khẩu",
                  hintText: "Nhập vào mật khẩu của bạn",
                  border: OutlineInputBorder(),

                ),
              ),
            ],
          ),
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
