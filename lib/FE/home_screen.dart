import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB2EBF2),
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  //ICon bên trái hihi
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: ClipRRect(
                        child: Image.asset(
                          'chanmeologo.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  ),
                  //Hình ảnh con mèo
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'meo.png',
                      width: 431.0,
                      height: 419.0,
                      //fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              //Biểu tượng và text
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(150),
                          topRight: Radius.circular(150))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        'chanmeo.png',
                        width: 45,
                        height: 45,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        'Chào mừng đến với \nPet\'s Miu',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Nút OK
                      ElevatedButton(
                        onPressed: () {
                          // Xử lý sự kiện khi nút được nhấn
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFB2EBF2), // Màu nền của nút
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 15.0),
                        ),
                        child: const Text(
                          'OK',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
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
