import 'package:flutter/material.dart';

class ProductHeading extends StatelessWidget {
  const ProductHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        "2019 Ferrari Twin-turbo charged Racing Roadster",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
