import 'package:flutter/material.dart';
import 'restaurant_item.dart';  

class MostPopularPage extends StatelessWidget {
  const MostPopularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Most Popular Restaurants'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          RestaurantItem(
            title: 'KFC Broadway',
            address: '122 Queen Street',
            subtitle: 'Fried Chicken, American',
            imagePath: 'aset/2.png',
          ),
          RestaurantItem(
            title: 'Greek House',
            address: '23 Queen Street',
            subtitle: 'Buritos, Greek',
            imagePath: 'aset/3.png',
          ),
          RestaurantItem(
            title: 'Ayam Geprek',
            address: '47 Queen Street',
            subtitle: 'Chicken, Indonesian',
            imagePath: 'aset/4.png',
          ),
          RestaurantItem(
            title: 'Curry Rice',
            address: '155 Queen Street',
            subtitle: 'Curry, Indian',
            imagePath: 'aset/9.png',
          ),
        ],
      ),
    );
  }
}
