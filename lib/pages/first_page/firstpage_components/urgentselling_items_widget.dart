import 'package:flutter/material.dart';

class UrgentsellingItemsWidget extends StatelessWidget {
  const UrgentsellingItemsWidget({
    Key? key,
    required this.urgentSellingImages,
    required this.urgentSellingItemname,
    required this.urgentSellingItemprice,
  }) : super(key: key);

  final List<String> urgentSellingImages;
  final List<String> urgentSellingItemname;
  final List<String> urgentSellingItemprice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 20,
                width: 260,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                      ),
                    ]),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 10,
                        ),
                      ),
                      child: Image(
                        image: AssetImage(urgentSellingImages[index]),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            urgentSellingItemname[index],
                          ),
                          Text(
                            urgentSellingItemprice[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.timelapse_outlined),
                                  Text("Now"),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star),
                                  Text("Promoted"),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
