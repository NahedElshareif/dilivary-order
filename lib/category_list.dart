import 'package:flutter/material.dart';

import './category.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Category(
            color: Colors.orange,
            text: 'Food',
            image: 'images/food.png',
          ),
          Category(
            color: Colors.green,
            text: 'Groceries',
            image: 'images/groceries.png',
          ),
          Category(
            color: Colors.blue,
            text: 'Pharmacy',
            image: 'images/pills.png',
          ),
          Category(
            color: Colors.pink,
            text: 'flowers',
            image: 'images/flowers.png',
          ),
        ],
      ),
    );
  }
}