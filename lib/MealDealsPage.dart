import 'package:flutter/material.dart';
import 'restaurant_item.dart';

class MealDealsPage extends StatelessWidget {
  const MealDealsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Deals'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          RestaurantItem(
            title: 'Turkish Kebab',
            address: '10 Queen Street',
            subtitle: 'Lamb, Turkey',
            imagePath: 'aset/5.png',
          ),
          RestaurantItem(
            title: 'Beef Burger',
            address: '4 Queen Street',
            subtitle: 'Beef, American',
            imagePath: 'aset/6.png',
          ),
          RestaurantItem(
            title: 'Rawon Nguling',
            address: '33 Queen Street',
            subtitle: 'Soup, Indonesian',
            imagePath: 'aset/7.png',
          ),
          RestaurantItem(
            title: 'Bakso Solo',
            address: '34 Queen Street',
            subtitle: 'Soup, Indonesian',
            imagePath: 'aset/8.png',
          ),
        ],
      ),
    );
  }
}
