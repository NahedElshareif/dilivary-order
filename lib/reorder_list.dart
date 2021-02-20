import 'package:flutter/material.dart';

import './reorder_card.dart';

class ReorderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ReorderCard(
            restaurantName: 'Konafa habiba',
            order: '1x konafa jagged',
            price: 4,
          ),
          ReorderCard(
            restaurantName: 'KFC',
            order: '1x Zinger meal',
            price: 3.5,
          ),
          ReorderCard(
            restaurantName: 'Burger king',
            order: '1x Whopper large meal',
            price: 4.25,
          ),
        ],
      ),
    );
  }
}