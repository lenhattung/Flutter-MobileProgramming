import 'package:app_02/userMS/db/UserDatabaseHelper.dart';
import 'package:app_02/userMS/model/User.dart';
import 'package:app_02/userMS/view/UserForm.dart';
import 'package:flutter/material.dart';

class EditUserScreen extends StatelessWidget {
  final User user;

  const EditUserScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserForm(
      user: user,
      onSave: (User updatedUser) async {
        try {
          await UserDatabaseHelper.instance.updateUser(updatedUser);
          Navigator.pop(context, true); // Return true to indicate the user was updated

          // Show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Cập nhật người dùng thành công'),
              backgroundColor: Colors.green,
            ),
          );
        } catch (e) {
          // Show error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Lỗi khi cập nhật người dùng: $e'),
              backgroundColor: Colors.red,
            ),
          );
          Navigator.pop(context, false);
        }
      },
    );
  }
}