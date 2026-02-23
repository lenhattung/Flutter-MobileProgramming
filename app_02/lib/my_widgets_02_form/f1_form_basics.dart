import 'package:flutter/material.dart';

class FormBasicDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormBasicDemoSate();
}

class _FormBasicDemoSate extends State<FormBasicDemo> {
  // Sử dụng Global key để truy cập form
  final _formKey = GlobalKey<FormState>();
  String? _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form cơ bản")),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        // Form là widget chứa và quản lý các trường nhập liệu
        // Key: được sử dụng để truy cập vào trạng thái của Form
        // Phương thức validate() kiểm tra tính hợp lệ của tất cả trường
        // Phương thức save() gọi hàm onSaved của mỗi trường
        // Phương thức reset() đặt lại giá trị của tất cả trường
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Họ và tên",
                  hintText: "Nhập họ và tên của bạn",
                  border: OutlineInputBorder(),
                ),
                onSaved: (value){
                  _name = value;
                },
              ),

              SizedBox(height: 20,),
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      _formKey.currentState!.save();
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Xin chào $_name"))
                      );
                    }
                  }, child: Text("Submit")),
                  SizedBox(width: 20,),
                  ElevatedButton(onPressed: (){
                      _formKey.currentState!.reset();
                      setState(() {
                        _name = null;
                      });
                  }, child: Text("Reset")),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
