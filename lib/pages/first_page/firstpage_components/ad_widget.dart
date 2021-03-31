import 'package:flutter/material.dart';

class AdWidget extends StatelessWidget {
  const AdWidget({
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
              Text(
                "Fast and Original",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              Text(
                "iBike 7 Speed",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "\$900",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue[900],
                ),
              ),
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
}
