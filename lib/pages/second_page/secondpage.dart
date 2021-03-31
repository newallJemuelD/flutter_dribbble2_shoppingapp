import 'package:flutter/material.dart';
import 'secondpage_components.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProductImage(),
                ProductInfo(),
                ProductHeading(),
                ProductPrice(),
                ProductInfoTable(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
