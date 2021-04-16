import 'package:flutter/material.dart';

class ProductCategories extends StatelessWidget {
  const ProductCategories({
    Key? key,
    required List<String> categories,
  })   : _categories = categories,
        super(key: key);

  final List<String> _categories;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                  )),
              child: Text(_categories[index]),
            );
          },
        ),
      ),
    );
  }
}
