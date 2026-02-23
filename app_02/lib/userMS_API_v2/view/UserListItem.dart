import "dart:io";
import "../model/User.dart";
import "../view/UserDetailScreen.dart";
import "package:flutter/material.dart";

class UserListItem extends StatelessWidget {
  final User user;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const UserListItem({
    Key? key,
    required this.user,
    required this.onDelete,
    required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          backgroundImage: user.avatar != null
              ? FileImage(File(user.avatar!))
              : null,
          child: user.avatar == null
              ? Text(user.name.substring(0, 1).toUpperCase())
              : null,
        ),
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit, color: Colors.blue),
              onPressed: onEdit,
            ),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Xác nhận xoá'),
                    content: Text('Bạn có chắc chắn muốn xoá người dùng này?'),
                    actions: [
                      TextButton(
                        child: Text('Huỷ'),
                        onPressed: () => Navigator.pop(context),
                      ),
                      TextButton(
                        child: Text('Xoá'),
                        onPressed: () {
                          onDelete();
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserDetailScreen(user: user),
            ),
          );
        },
      ),
    );
  }
}