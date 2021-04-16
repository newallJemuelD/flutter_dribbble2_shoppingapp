import 'package:flutter/material.dart';

class Advertisement extends StatelessWidget {
  const Advertisement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.lightBlue[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _text('Fast and Original', 15, Colors.grey, FontWeight.normal),
              _text('iBike 7 Speed', 30, Colors.black, FontWeight.bold),
              _text('\$900', 15, Colors.blue, FontWeight.normal),
            ],
          ),
          Image(
            image: AssetImage("images/blue_cycle.png"),
            height: 80,
          ),
        ],
      ),
    );
  }

  Widget _text (String text, double fontsize, Color color, FontWeight fontweight) {
    return Text(
                text,
                style: TextStyle(
                  fontSize: fontsize,
                  color: color,
                  fontWeight: fontweight,
                ),
              );
  }
}
