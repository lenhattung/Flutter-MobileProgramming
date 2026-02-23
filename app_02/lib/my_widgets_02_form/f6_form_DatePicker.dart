import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormBasicDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormBasicDemoSate();
}

class _FormBasicDemoSate extends State<FormBasicDemo> {
  // Sử dụng Global key để truy cập form
  final _formKey = GlobalKey<FormState>();
  final _fullnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dateOfBirthController = TextEditingController();

  bool _obscurePassword = true;
  String? _name;
  String? _selectedCity;
  String? _gender;
  bool _isAgreed = false;
  DateTime? _dateOfBirth;

  final List<String> _cities = [
    'Hà Nội',
    'TP.HCM',
    'Đà Nẵng',
    'Cần Thơ',
    'Hải Phòng',
  ];

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
              // TextFormField là phiên bản mở rộng của TextField tích hợp với Form
              // Validator là hàm kiểm tra tính hợp lệ của dữ liệu
              // Controller cho phép truy cập và điều khiển giá trị
              // obscureText cho phép ẩn văn bản
              // AutovalidateMode điều khiển thời điểm validation được kích hoạt
              TextFormField(
                controller: _fullnameController,
                decoration: InputDecoration(
                  labelText: "Họ và tên",
                  hintText: "Nhập họ và tên của bạn",
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  _name = value;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập họ và tên';
                  }
                  return null;
                },
              ),

              SizedBox(height: 16),

              TextFormField(
                  controller: _dateOfBirthController,
                  decoration: InputDecoration(
                    labelText: 'Ngày sinh',
                    hintText: 'Chọn ngày sinh của bạn',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                  readOnly: true,
                onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context, 
                        firstDate: DateTime(1900), 
                        lastDate: DateTime(2025));

                    if(pickedDate!=null){
                      String formattedDate = DateFormat("dd/MM/yyyy").format(pickedDate);
                      setState(() {
                        _dateOfBirthController.text = formattedDate;
                        _dateOfBirth = pickedDate;
                      });
                    }
                },
                validator: (value){
                    if(value==null||value.isEmpty){
                      return "Vui lòng chọn ngày sinh";
                    }
                },
              ),

              SizedBox(height: 16),


              FormField<String>(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng chọn giới tính';
                  }
                  return null;
                },
                initialValue: _gender,
                builder: (FormFieldState<String> state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Giới tính',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 8),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: state.hasError ? Colors.red : Colors.grey.shade300,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: RadioListTile<String>(
                                title: Text('Nam'),
                                value: 'male',
                                groupValue: _gender,
                                onChanged: (value) {
                                  setState(() {
                                    _gender = value;
                                    state.didChange(value);
                                  });
                                },
                                activeColor: Colors.blue,
                                contentPadding: EdgeInsets.symmetric(horizontal: 8),
                              ),
                            ),
                            Expanded(
                              child: RadioListTile<String>(
                                title: Text('Nữ'),
                                value: 'female',
                                groupValue: _gender,
                                onChanged: (value) {
                                  setState(() {
                                    _gender = value;
                                    state.didChange(value);
                                  });
                                },
                                activeColor: Colors.pink,
                                contentPadding: EdgeInsets.symmetric(horizontal: 8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (state.hasError)
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 8),
                          child: Text(
                            state.errorText!,
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ),
                    ],
                  );
                },
              ),
              SizedBox(height: 24),

              // Email field
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'example@gmail.com',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập email';
                  }
                  if (!RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  ).hasMatch(value)) {
                    return 'Email không hợp lệ';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              // Số điện thoại
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: 'Số điện thoại',
                  hintText: 'Nhập số điện thoại của bạn',
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập số điện thoại';
                  }
                  if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                    return 'Số điện thoại phải có 10 chữ số';
                  }
                  return null;
                },
              ),

              SizedBox(height: 16),

              // Password field
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  hintText: 'Nhập mật khẩu',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(),
                ),
                obscureText: _obscurePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập mật khẩu';
                  }
                  if (value.length < 6) {
                    return 'Mật khẩu phải có ít nhất 6 ký tự';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Xác nhận mật khẩu
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  labelText: 'Xác nhận mật khẩu',
                  hintText: 'Nhập lại mật khẩu của bạn',
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng xác nhận mật khẩu';
                  }
                  if (value != _passwordController.text) {
                    return 'Mật khẩu không khớp';
                  }
                  return null;
                },
              ),

              SizedBox(height: 16),

              DropdownButtonFormField(
                decoration: InputDecoration(
                  labelText: "Thành phố",
                  border: OutlineInputBorder(),
                ),
                value: _selectedCity,
                items:
                    _cities.map((city) {
                      return DropdownMenuItem(
                          child: Text(city),
                          value: city);
                    }).toList(),
                onChanged: (value) {},
                validator: (value){
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng chọn thành phố';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20,),

              CheckboxListTile(
                title: Text("Đồng ý với điều khoản của công ty ABC."),
                value: _isAgreed,
                onChanged: (value){
                  setState(() {
                    _isAgreed = value!;
                    print("Đồng ý : $_isAgreed");
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Xin chào $_name")),
                        );
                      }
                    },
                    child: Text("Submit"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.reset();
                      setState(() {
                        _name = null;
                        _dateOfBirthController.text = "";
                      });
                    },
                    child: Text("Reset"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
