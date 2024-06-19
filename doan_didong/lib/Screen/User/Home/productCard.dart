import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String price;

  ProductCard({required this.imagePath, required this.productName, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Hình ảnh sản phẩm
          Container(
            height: 234, // Chiều cao hình ảnh, bạn có thể điều chỉnh
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain, // Đảm bảo hình ảnh vừa với khung
            ),
          ),
          // Tên sản phẩm
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              productName,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Giá tiền
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
               textAlign: TextAlign.center,

            ),
          ),
          // Nút "Mua ngay"
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Màu nền của nút
                foregroundColor: Colors.white, // Màu chữ trên nút
              ),
              onPressed: () {
                // Xử lý sự kiện khi nhấn nút "Mua ngay"
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Bạn đã chọn mua $productName')),
                );
              },
              child: Text('Mua ngay'),
            ),
          ),
        ],
      ),
    );
  }
}
