import "package:flutter/material.dart";

class MyStatelessWidget extends StatelessWidget{
  final String title;

  MyStatelessWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}


class MyStatefulWiget extends StatefulWidget{

  MyStatefulWiget();

  @override
  State<StatefulWidget> createState() => _MystatefulWiget();
}

class _MystatefulWiget extends State<MyStatefulWiget>{
  String title ='Hello, Flutter!';

  void _updateTitle(){
    setState(() {
      title = 'Title Updated';
    });
  }

  @override
  Widget build(BuildContext context) {
     return Column(
       children: <Widget>[
         Text(title),
         ElevatedButton(onPressed: _updateTitle, child: Text('Update Title')),
       ],
     );
  }
  
}

/*
Khi nào nên sử dụng StatelessWidget?
 Hiển thị dữ liệu cố định, chẳng hạn như tiêu đề, nút hoặc biểu tượng.
 Khi ta muốn tạo các thành phần giao diện không cần thay đổi sau khi đã được
render.
 Khi sử dụng trong StatefulWidget để render lại các item con khi trạng thái của
StatefulWidget thay đổi.
 */

/*
Khi nào nên sử dụng StatefulWidget?
 Khi cần hiển thị dữ liệu có thể thay đổi, chẳng hạn như trạng thái của một form,
danh sách động hoặc nội dung thay đổi theo hành vi của người dùng.
 Khi cần quản lý các trạng thái tạm thời, chẳng hạn như bộ đếm, thanh tiến trình
hoặc các tương tác người dùng khác.
 Khi cần hiển thị nội dung có thể thay đổi dựa trên sự kiện, như nhập liệu, chọn
mục từ danh sách hoặc nhận dữ liệu từ một API.
 */