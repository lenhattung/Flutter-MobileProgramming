import "dart:io";
import "../model/User.dart";
import "package:flutter/material.dart";
import "package:intl/intl.dart";

class UserDetailScreen extends StatelessWidget {
  final User user;

  const UserDetailScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết người dùng'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue.shade100,
                backgroundImage: user.avatar != null
                    ? FileImage(File(user.avatar!))
                    : null,
                child: user.avatar == null
                    ? Text(
                  user.name.substring(0, 1).toUpperCase(),
                  style: TextStyle(fontSize: 40),
                )
                    : null,
              ),
            ),
            SizedBox(height: 24),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDetailRow('Họ và tên', user.name),
                    Divider(),
                    _buildDetailRow('Email', user.email),
                    Divider(),
                    _buildDetailRow('Số điện thoại', user.phone),
                    Divider(),
                    _buildDetailRow(
                      'Ngày sinh',
                      DateFormat('dd/MM/yyyy').format(user.dateOfBirth),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}