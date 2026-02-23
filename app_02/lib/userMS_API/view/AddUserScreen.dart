import 'package:app_02/userMS_API/api/UserAPIService.dart';

import '../model/User.dart';

import 'UserForm.dart';
import 'package:flutter/material.dart';

class AddUserScreen extends StatelessWidget {
  const AddUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserForm(
      onSave: (User user) async {
        try {
          await UserAPIService.instance.createUser(user);
          Navigator.pop(context, true); // Return true to indicate a new user was added

          // Show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Thêm người dùng thành công'),
              backgroundColor: Colors.green,
            ),
          );
        } catch (e) {
          // Show error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Lỗi khi thêm người dùng: $e'),
              backgroundColor: Colors.red,
            ),
          );
          Navigator.pop(context, false);
        }
      },
    );
  }
}