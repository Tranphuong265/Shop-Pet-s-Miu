import 'package:doan_didong/Screen/User/Home/homePage.dart';
import 'package:doan_didong/Screen/User/Signin/forgotPassword.dart';
import 'package:flutter/material.dart';
import 'package:doan_didong/Screen/User/Signin/register.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage1> {
  final _passWordcontroller = TextEditingController();
  final _phoneNumbercontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/images/logoTest.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'SIGN IN',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Canh giữa các button
                  children: [
                    SizedBox(
                      width: 176,
                      height: 65,
                      child: ElevatedButton(
                        onPressed: () {
                          //  "Đăng nhập bằng Google"
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(170, 213, 209, 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/googleIcon.webp', // Đường dẫn đến file ảnh logo Google
                              width: 24.0,
                              height: 24.0,
                            ),
                            const SizedBox(
                                width: 8.0), // Khoảng cách giữa icon và text
                            const Text(
                              'With Google',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                        width: 8.0), // Khoảng cách 8 độ giữa các button
                    SizedBox(
                      width: 65,
                      height: 65,
                      child: ElevatedButton(
                        onPressed: () {
                          //  "Đăng nhập bằng Facebook"
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(170, 213, 209, 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: const Icon(
                          Icons.facebook,
                          size: 32,
                        ),
                      ),
                    ),
                    const SizedBox(
                        width: 8.0), // Khoảng cách 8 độ giữa các button
                    SizedBox(
                      width: 65,
                      height: 65,
                      child: ElevatedButton(
                        onPressed: () {
                          //  "Đăng nhập bằng Twitter"
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(170, 213, 209, 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Image.asset('assets/images/twitterLogo.png',
                            width: 40, height: 40),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  controller: _phoneNumbercontroller,
                  decoration: const InputDecoration(
                    hintText: 'Your Phone',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(170, 213, 209, 10),
                            width: 10.0),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập số điện thoại của bạn';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  controller: _passWordcontroller,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(170, 213, 209, 10),
                            width: 10.0),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                    suffixIcon: IconButton(
                      icon: Icon(_obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập mật khẩu của bạn';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'New User? ',
                    style: TextStyle(color: Color.fromRGBO(21, 52, 72, 1)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const RegisterPage()), // Replace with your Forgot Password page
                      );
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color.fromRGBO(232, 189, 15, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '?',
                    style: TextStyle(color: Color.fromRGBO(170, 213, 209, 10)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ForgotPasswordPage()), // Replace with your Forgot Password page
                      );
                    },
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Color.fromRGBO(170, 213, 209, 10),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 16),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     const Text(
              //       "Forgot Password ?",
              //       style: TextStyle(color: Color.fromRGBO(170, 213, 209, 10)),
              //     ),
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) =>
              //                   const ForgotPasswordPage()), // Replace with your Forgot Password page
              //         );
              //       },
              //     ),
              //   ],
              // ),
              const SizedBox(height: 25),
              SizedBox(
                width: 500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: const Color.fromRGBO(170, 213, 209, 10),
                      minimumSize: const Size(0, 50),
                      padding: const EdgeInsets.symmetric(vertical: 25)),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    }
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
