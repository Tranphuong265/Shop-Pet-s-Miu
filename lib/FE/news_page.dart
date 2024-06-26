import 'package:flutter/material.dart';
import 'package:pet_s_miu/FE/news_item.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tin tức'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          NewsItem(
            imagePath: 'cat1_item.png',
            description:
                'Mèo cưng \'chu du bất đắc dĩ\' 1.000 km vì chui vào thùng hàng',
          ),
          SizedBox(height: 16.0),
          NewsItem(
            imagePath: 'cat1_item.png',
            description: 'Ngồi tù vì bỏ mặc 43 con mèo',
          ),
          SizedBox(height: 16.0),
          NewsItem(
            imagePath: 'cat1_item.png',
            description:
                'Bà Jill Biden viết sách thiếu nhi về Đệ nhất miêu Nhà Trắng',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Tin tức',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Đơn hàng',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tôi',
          ),
        ],
        currentIndex: 0, // This would be dynamically controlled in a real app
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          // Handle navigation logic here
        },
      ),
    );
  }
}
