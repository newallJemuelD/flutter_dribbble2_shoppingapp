import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 5),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.grey,
              ),
              Text("Location"),
              DropdownButton(items: null),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.map_outlined,
                  color: Colors.orange,
                ),
                Text("See Map"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
