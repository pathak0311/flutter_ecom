import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'components/horizontal_listview.dart';

void main() {
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage()
      )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = Container(
      height: 800.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Shop App'),
        actions: [
          IconButton(
              onPressed: null, icon: Icon(Icons.search, color: Colors.white,)),
          IconButton(onPressed: null,
              icon: Icon(Icons.shopping_cart, color: Colors.white,)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            //  header
            UserAccountsDrawerHeader(accountName: Text('Harshit Pathak'),
                accountEmail: Text('pathak0311@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),

          //  body
            InkWell(
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
              onTap: () {},
            ),

            Divider(),

            InkWell(
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue,),
              ),
              onTap: () {},
            ),

          ],
        ),
      ),
      body: ListView(
        children: [
          image_carousel,
          Padding(padding: const EdgeInsets.all(8.0),
          child: Text('Categories'),),
          HorizontalList(),
        ],
      ),
    );
  }
}

