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
                        Text(
                          "CONDITION",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                        Text("Used"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "MODEL",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                        Text("Roadster"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "TRM",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                        Text("Backdraft"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "MILEAGE",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
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
                        Text(
                          "MAKE",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                        Text("Shelby"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "TYPE",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                        Text("Convertible"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "YEAR",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                        Text("1965"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "COLOR",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
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
}
