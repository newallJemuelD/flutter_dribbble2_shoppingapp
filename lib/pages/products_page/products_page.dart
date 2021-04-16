import 'package:flutter/material.dart';
import 'products_page_components.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    List<String> _categories = [
      "All",
      "Electronics",
      "Mobile",
      "Sports",
      "Clothes",
      "Tools"
    ];

    List<String> bestSellersImages = [
      "images/cycle.jpg",
      "images/iphone.jpg",
      "images/shirt.jpg",
      "images/utensils.png"
    ];

    List<String> bestSellersName = [
      "Rodeo",
      "Iphone 12 Pro",
      "Allen solly",
      "Preeti vessels"
    ];

    List<String> bestSellersPrice = [
      "\$50",
      "\$950",
      "\$30",
      "\$25",
    ];

    return Scaffold(
      body: SafeArea(
        child: Flex(
          direction: Axis.vertical,
          children: [
            Appbar(),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    ProductCategories(categories: _categories),
                    BestSellers(),
                    BestSellersListview(
                      bestSellersImages: bestSellersImages,
                      bestSellersName: bestSellersName,
                      bestSellersPrice: bestSellersPrice,
                    ),
                    AllProducts(),
                    AllProductsListview(),
                    Advertisement(),
                  ],
                ),
              ),
            ),
            BottomNavbar(),
          ],
        ),
      ),
    );
  }
}
