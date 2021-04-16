import 'package:flutter/material.dart';
import 'products_description_page_components.dart';

class ProductsDescriptionPage extends StatelessWidget {
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
