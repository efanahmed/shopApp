// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            assets_location: 'assets/Images/cats/tshirt.png',
            assets_caption: 'tshirt ',
          ),
          Category(
            assets_location: 'assets/Images/cats/accessories.png',
            assets_caption: 'accessories',
          ),
          Category(
            assets_location: 'assets/Images/cats/dress.png',
            assets_caption: 'dress',
          ),
          Category(
            assets_location: 'assets/Images/cats/formal.png',
            assets_caption: 'formal',
          ),
          Category(
            assets_location: 'assets/Images/cats/informal.png',
            assets_caption: 'informal',
          ),
          // Category(
          //   assets_caption: 'assets/Images/cats/jeans.png',
          //   assets_location: 'pants',
          // ),
          Category(
            assets_location: 'assets/Images/cats/shoe1.jpg',
            assets_caption: 'shoe1',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String assets_location;
  final String assets_caption;

  Category({required this.assets_location, required this.assets_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              assets_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                assets_caption,
                style: const TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
