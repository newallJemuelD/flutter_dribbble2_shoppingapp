import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          "\$9,100",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
