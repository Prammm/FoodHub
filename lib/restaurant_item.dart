import 'package:flutter/material.dart';

class RestaurantItem extends StatelessWidget {
  final String title;
  final String address;
  final String subtitle;
  final String imagePath;

  const RestaurantItem({
    Key? key,
    required this.title,
    required this.address,
    required this.subtitle,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: <Widget>[
            Image.asset(imagePath, fit: BoxFit.cover, height: width, width: width),  
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center, 
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                address,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,  
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                subtitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
