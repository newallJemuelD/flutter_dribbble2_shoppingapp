import 'package:flutter/material.dart';

class ProductInfoTable extends StatelessWidget {
  const ProductInfoTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 60, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        text('CONDITION', Colors.grey),
                        Text("Used"),
                      ],
                    ),
                    Column(
                      children: [
                        text('MODEL', Colors.grey),
                        Text("Roadster"),
                      ],
                    ),
                    Column(
                      children: [
                        text('TRM', Colors.grey),
                        Text("Backdraft"),
                      ],
                    ),
                    Column(
                      children: [
                        text('MILEAGE', Colors.grey),
                        Text("100"),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        text('MAKE', Colors.grey),
                        Text("Shelby"),
                      ],
                    ),
                    Column(
                      children: [
                        text('TYPE', Colors.grey),
                        Text("Convertible"),
                      ],
                    ),
                    Column(
                      children: [
                        text('YEAR', Colors.grey),
                        Text("1965"),
                      ],
                    ),
                    Column(
                      children: [
                        text('COLOR', Colors.grey),
                        Text("Yellow"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  Widget text(String text, Color color) {
    return Text(
      text,
      style: TextStyle(
        color: color,
      ),
    );
  }

}
