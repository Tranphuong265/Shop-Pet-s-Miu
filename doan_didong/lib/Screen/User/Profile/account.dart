import 'package:flutter/material.dart';

class AccountWidget extends StatefulWidget{
  const AccountWidget({super.key});

  @override
  State<AccountWidget> createState() => _AccountWidgetState();
  }

class _AccountWidgetState extends State<AccountWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Avatar and greeting
            Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/avatar.png'), // Đường dẫn đến hình ảnh avatar của bạn
                ),
                SizedBox(height: 10),
                Text(
                  'Xin chào, Lynda!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(color: Colors.teal),
            // User options
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Người dùng'),
            ),
            ListTile(
              title: Text('Thông tin'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                // Navigate to user info page
              },
            ),
            ListTile(
              title: Text('Thay đổi mật khẩu'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                // Navigate to change password page
              },
            ),
          ],
        ),
      ),
    );
  }
}