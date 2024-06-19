import 'package:doan_didong/Screen/User/Profile/account.dart';
import 'package:flutter/material.dart';
import 'productCard.dart';
import 'package:doan_didong/mainPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> products = [
    {
      'imagePath': 'assets/images/product.png',
      'productName': 'Sản phẩm 1',
      'price': '\$150.00',
    },
    {
      'imagePath': 'assets/images/product.png',
      'productName': 'Sản phẩm 2',
      'price': '\$200.00',
    },
    {
      'imagePath': 'assets/images/product.png',
      'productName': 'Sản phẩm 3',
      'price': '\$250.00',
    },
    // Thêm các sản phẩm khác tương tự ở đây
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        
        title: Text( 'Pet\'s Miu'),
        centerTitle: true,
        actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Hành động khi biểu tượng giỏ hàng được nhấn
              },
            ),
          ],
      ),
//body
        body:
         SingleChildScrollView(
        child: Column(
          children: [
            // Banner và Product trong một Container
            Container(
              child: Column(
                children: [
                  // Banner
                  Container(
                    width: double.infinity,
                    height: 150.0,
                    child: Image.asset(
                      'assets/images/banner.png', // Đường dẫn đến hình ảnh banner
                      fit: BoxFit.contain,
                    ),
                  ),
                  // GridView
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        childAspectRatio: 1.75, // Điều chỉnh tỷ lệ chiều rộng / chiều cao của các ô lưới
                      ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return ProductCard(
                          imagePath: products[index]['imagePath'],
                          productName: products[index]['productName'],
                          price: products[index]['price'],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
 
  
  
        /*
        body: GridView.builder(
        padding: const EdgeInsets.all(30.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns
          crossAxisSpacing: 75.0,
          mainAxisSpacing: 75.0,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 2.0,
            child: Center(
              child: Text(products[index]),
            ),
          );
        },
      ),
//
*/
      
    );
  }
}
