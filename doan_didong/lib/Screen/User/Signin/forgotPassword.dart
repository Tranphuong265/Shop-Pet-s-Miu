import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text(
          'Quên mật khẩu hả ?',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
