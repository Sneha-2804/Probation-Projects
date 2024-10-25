import 'package:flutter/material.dart';
import 'package:ecommerce_app/Components/product.dart';
import 'package:ecommerce_app/Components/navbar.dart';

const List<Widget> UPI = [
  Text('Google Pay'),
  Text('Amazon Pay'),
  Text('Credit Card/Debit Card'),
  Text('EMI'),
  Text('Net Banking'),
  Text('Cash on Delivery')
];

class Buy extends StatefulWidget {
  final Product product;

  Buy({required this.product});

  @override
  _BuyState createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  final List<bool> _selected = <bool>[true, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Checkout',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      //bottomNavigationBar: Navbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(widget.product.image, height: 80),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        widget.product.price,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        'Including taxes and duties',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Select your payment method',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ToggleButtons(
                  direction: Axis.vertical,
                  onPressed: (int index) {
                    setState(() {
                      _selected[index] = !_selected[index];
                      for (int i = 0; i < _selected.length; i++) {
                        if (i != index) {
                          _selected[i] = false;
                        }
                      }
                    });
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  selectedBorderColor: Colors.orange,
                  selectedColor: Colors.white,
                  fillColor: Colors.orangeAccent,
                  color: Colors.grey,
                  isSelected: _selected,
                  children: UPI,
                  //padding: EdgeInsets.symmetric(vertical: 8.0),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 16, color: Colors.white),
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
