import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'splash_screen.dart';
import 'MealDealsPage.dart';
import 'MostPopularPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodHub',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _buildWidgetOptions() {
    return <Widget>[
    ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 8),
          child: Container(
            width: 180,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for restaurants...',
                contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                prefixIcon: Icon(Icons.search, size: 20, color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 20.0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('aset/1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.5), Colors.transparent],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thai Style',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '12 Places',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Row(
                children: [
                  Icon(Icons.circle, size: 8, color: Colors.white.withOpacity(0.9)),
                  SizedBox(width: 8),
                  Icon(Icons.circle, size: 8, color: Colors.white.withOpacity(0.5)),
                  SizedBox(width: 8),
                  Icon(Icons.circle, size: 8, color: Colors.white.withOpacity(0.5)),
                  SizedBox(width: 8),
                  Icon(Icons.circle, size: 8, color: Colors.white.withOpacity(0.5)),
                ],
              ),
            ),
          ],
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          title: Text(
            'Most Popular',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Padding(
            padding: EdgeInsets.only(right: 0.0),
            child: TextButton(
              child: Text('See all', style: TextStyle(color: Colors.grey)),
              style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size.zero),
              onPressed: _navigateToMostPopular,
            ),
          ),
        ),
        Container(
          height: 200,
          margin: EdgeInsets.only(top: 0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16, top: 0),
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
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          title: Text(
            'Meal Deals',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Padding(
            padding: EdgeInsets.only(right: 0.0),
            child: TextButton(
              child: Text('See all', style: TextStyle(color: Colors.grey)),
              style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size.zero),
              onPressed: _navigateToMealDeals,
            ),
          ),
        ),
        Container(
          height: 200,
          margin: EdgeInsets.only(top: 0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16, top: 0),
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
        ),
      ],
    ),
    Text('Discovery Page'),
    Text('Bookmark Page'),
    Text('Top Foodie Page'),
    Text('Alfons P. K. C. / C14210237'),
  ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navigateToMostPopular() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MostPopularPage()),
    );
  }
  void _navigateToMealDeals() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MealDealsPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final widgetOptions = _buildWidgetOptions();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Sydney CBD',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.amber,
          ),
          onPressed: () {
            if (_selectedIndex != 0) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
                (Route<dynamic> route) => false,
              );
            } else {
            }
          },
        ),
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: 'Discovery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events_outlined),
            label: 'Top Foodie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

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
    return Container(
      width: 160.0,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(imagePath, fit: BoxFit.cover, height: 120, width: 160),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}