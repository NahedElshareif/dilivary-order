import 'package:flutter/material.dart';

class ReorderCard extends StatelessWidget {
  final String restaurantName;
  final String order;
  final double price;

  ReorderCard({
    @required this.restaurantName,
    @required this.order,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 280,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  restaurantName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(order),
              ],
            ),
            Positioned(
              right: 0,
              child: Text('KD $price'),
            ),
            Positioned(
              bottom: -10,
              child: Row(
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.refresh,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Re-order',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.tag_faces,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Rate',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}