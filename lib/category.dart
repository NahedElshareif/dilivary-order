import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String text;
  final String image;
  final Color color;

  Category({
    @required this.text,
    @required this.image,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 150,
          height: 150,
          color: color,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              Image.asset(image),
            ],
          ),
        ),
      ),
    );
  }
}