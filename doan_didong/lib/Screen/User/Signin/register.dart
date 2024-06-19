import 'package:flutter/material.dart';
import 'package:doan_didong/Screen/User/Signin/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
              'SIGN UP',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Full Name',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 213, 209, 10),
                                width: 10.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Vui lòng nhập họ tên';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Phone Number',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 213, 209, 10),
                                width: 10.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Vui lòng nhập số điện thoại';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextFormField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 213, 209, 10),
                                width: 10.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 25.0),
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
                        if (value!.isEmpty) {
                          return 'Vui lòng nhập lại mật khẩu';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextFormField(
                      obscureText: _obscureConfirmPassword,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(170, 213, 209, 10),
                                width: 10.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 25.0),
                        suffixIcon: IconButton(
                          icon: Icon(_obscureConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _obscureConfirmPassword =
                                  !_obscureConfirmPassword;
                            });
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Vui lòng nhập lại mật khẩu';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 500,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor:
                            const Color.fromRGBO(170, 213, 209, 10),
                        minimumSize: const Size(0, 50),
                        padding: const EdgeInsets.symmetric(vertical: 25),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage1()),
                          );
                        }
                      },
                      child: const Text(
                        'REGISTER',
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
          ],
        ),
      ),
    );
  }
}


// class _RegisterPageState extends State<RegisterPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
//         constraints: const BoxConstraints.expand(),
//         color: Colors.white,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 80,
//               ),
//               Image.asset('assets/images/logoTest.png'),
//               const Padding(
//                 padding: EdgeInsets.fromLTRB(0, 40, 0, 6),
//                 child: Text(
//                   "SIGN IN",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
//                 child: TextField(
//                   style: const TextStyle(
//                     fontSize: 30,
//                     color: Colors.black,
//                   ),
//                   decoration: InputDecoration(
//                       labelText: "Full Name",
//                       fillColor: Color.fromRGBO(170, 213, 209, 10),
//                       filled: true,
//                       // icon: const Icon(Icons.person),
//                       prefixIcon: Container(
//                         width: 50,
//                       ),
//                       border: const OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromRGBO(170, 213, 209, 10),
//                               width: 2.0),
//                           borderRadius: BorderRadius.all(Radius.circular(12)))),
//                 ),
//               ),
//               TextField(
//                 style: const TextStyle(
//                   fontSize: 30,
//                   color: Colors.black,
//                 ),
//                 decoration: InputDecoration(
//                     labelText: "Phone Number",
//                     fillColor: Color.fromRGBO(170, 213, 209, 10),
//                     filled: true,
//                     // icon: const Icon(Icons.person),
//                     prefixIcon: Container(
//                       width: 50,
//                     ),
//                     border: const OutlineInputBorder(
//                         borderSide: BorderSide(
//                             color: Color.fromRGBO(170, 213, 209, 10),
//                             width: 2.0),
//                         borderRadius: BorderRadius.all(Radius.circular(12)))),
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
//                 child: TextField(
//                   style: const TextStyle(fontSize: 30, color: Colors.black),
//                   obscureText: true,
//                   decoration: InputDecoration(
//                       labelText: "Password",
//                       fillColor: Color.fromRGBO(170, 213, 209, 10),
//                       filled: true,
//                       // icon: const Icon(Icons.person),
//                       prefixIcon: Container(
//                         width: 50,
//                       ),
//                       border: const OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Color.fromRGBO(170, 213, 209, 10),
//                               width: 2.0),
//                           borderRadius: BorderRadius.all(Radius.circular(12)))),
//                 ),
//               ),
//               TextField(
//                 style: const TextStyle(fontSize: 30, color: Colors.black),
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     labelText: "Password",
//                     fillColor: const Color.fromRGBO(170, 213, 209, 10),
//                     filled: true,
//                     // icon: const Icon(Icons.person),
//                     prefixIcon: Container(
//                       width: 50,
//                     ),
//                     border: const OutlineInputBorder(
//                         borderSide: BorderSide(
//                             color: Color.fromRGBO(170, 213, 209, 10),
//                             width: 2.0),
//                         borderRadius: BorderRadius.all(Radius.circular(12)))),
//               ),
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(0, 40, 0, 30),
//                 child: SizedBox(
//                   height: 65,
//                   width: 325,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12)),
//                         backgroundColor:
//                             const Color.fromRGBO(170, 213, 209, 10)),
//                     child: const Text(
//                       "REGISTER",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 32,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     onPressed: () {},
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
