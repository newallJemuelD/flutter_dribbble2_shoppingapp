import 'package:dribble_2/models/product.dart';
import 'package:dribble_2/models/product_list.dart';
import 'package:flutter/material.dart';

class AllproductsItemsWidget extends StatelessWidget {
  final ProductList allProducts = ProductList(
    productList: [
      Product(
        category: 'Cars',
        distance: '3.25 KM',
        price: '\$9100',
        productImages: 'images/lamborghini.jpg',
        productName: 'Lamborghini',
        rating: '4.9',
        timeTaken: '2hrs ago',
        sellerName: 'Ajith K.',
      ),
      Product(
        category: 'Gadgets and accessories',
        distance: '4.5 KM',
        price: '\$1200',
        productImages: 'images/laptop.jpg',
        productName: 'Dell thinkpad',
        rating: '5.0',
        timeTaken: '3 days ago',
        sellerName: 'Vijay T.',
      ),
      Product(
        category: 'Cycles',
        distance: '4.5 KM',
        price: '\$67',
        productImages: 'images/hero_cycle.jpg',
        productName: 'Hero sprint',
        rating: '3.7',
        timeTaken: '1 day ago',
        sellerName: 'Rajini K.',
      ),
      Product(
        category: 'Furnitures',
        distance: '4.5 KM',
        price: '\$250',
        productImages: 'images/bookshelf.jpg',
        productName: 'Damro cupboard',
        rating: '4.1',
        timeTaken: 'just now',
        sellerName: 'Kamal H.',
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: allProducts.productList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 65,
              width: 170,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage(
                          allProducts.productList[index].productImages),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          allProducts.productList[index].productName,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          allProducts.productList[index].price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              allProducts.productList[index].sellerName,
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 10,
                                ),
                                Text(
                                  allProducts.productList[index].rating,
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          allProducts.productList[index].category,
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 10,
                                ),
                                Text(
                                  allProducts.productList[index].distance,
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.upload_outlined,
                                  size: 10,
                                ),
                                Text(
                                  allProducts.productList[index].timeTaken,
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
