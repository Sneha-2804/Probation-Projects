import 'package:ecommerce_app/Components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/Components/product.dart';
import 'package:ecommerce_app/Components/product_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce_app/Components/searchbar.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Searchbar(),
      backgroundColor: Colors.white,
      //bottomNavigationBar: Navbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text("Mobiles",
                 style: GoogleFonts.poppins(fontSize: 50.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
                    height: 10, 
                    width:250 , 
                    color: Colors.orange,
                  ),
          SizedBox(height: 5),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(15.0,0.0,15.0,10.0),
              child:GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (100/140),
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: MyProduct.allProducts.length,
                  itemBuilder:(context, index) {
                    final allProducts = MyProduct.allProducts[index];
                    return ProductCard(product : allProducts);
                  },
                )
            ),
          )
        ]
      )
      );
  }
}



class MyProduct {
  static List<Product> allProducts = [
    Product(
      name: 'iPhone 16',
      price: '\$990',
      image: 'assets/images/phone.png'),
      Product(
      name: 'iPhone 16',
      price: '\$990',
      image: 'assets/images/phone.png'),
      Product(
      name: 'iPhone 16',
      price: '\$990',
      image: 'assets/images/phone.png'),
      Product(
      name: 'iPhone 16',
      price: '\$990',
      image: 'assets/images/phone.png'),
      Product(
      name: 'iPhone 16',
      price: '\$990',
      image: 'assets/images/phone.png'),
      Product(
      name: 'iPhone 16',
      price: '\$990',
      image: 'assets/images/phone.png'),
  ];
}