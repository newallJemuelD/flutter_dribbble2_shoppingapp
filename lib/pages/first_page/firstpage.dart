import 'package:flutter/material.dart';
import 'firstpage_components.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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

    //Urgent selling section

    List<String> urgentSellingImages = [
      "images/cycle.jpg",
      "images/iphone.jpg",
      "images/shirt.jpg",
      "images/utensils.png"
    ];

    List<String> urgentSellingItemname = [
      "Rodeo",
      "Iphone 12 Pro",
      "Allen solly",
      "Preeti vessels"
    ];

    List<String> urgentSellingItemprice = [
      "\$50",
      "\$950",
      "\$30",
      "\$25",
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppbarWidget(),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    CategoriesWidget(categories: _categories),
                    UrgentsellingHeadingWidget(),
                    UrgentsellingItemsWidget(
                      urgentSellingImages: urgentSellingImages,
                      urgentSellingItemname: urgentSellingItemname,
                      urgentSellingItemprice: urgentSellingItemprice,
                    ),
                    AllproductsHeadingWidget(),
                    AllproductsItemsWidget(),
                    AdWidget(),
                  ],
                ),
              ),
            ),
            BottomNavbarWidget(),
          ],
        ),
      ),
    );
  }
}
