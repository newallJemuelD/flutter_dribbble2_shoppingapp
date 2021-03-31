import 'package:dribble_2/pages/second_page/secondpage.dart';
import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 20,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.home,
            color: Colors.grey,
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          FloatingActionButton(
              backgroundColor: Colors.orange,
              child: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              }),
          Icon(
            Icons.message,
            color: Colors.grey,
          ),
          Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
