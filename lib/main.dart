import 'package:flutter/material.dart';
import 'package:jordans_store_ui/pages/cart_page.dart';
import 'package:jordans_store_ui/pages/home_page.dart';
import 'package:jordans_store_ui/pages/items_details_page.dart';
import 'package:jordans_store_ui/pages/profile_page.dart';
import 'package:jordans_store_ui/pages/search_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/profile': (context) => ProfilePage(),
      '/cart': (context) => CartPage(),
      '/details': (context) => ItemsDetailsPage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),

  ];

  void ontap(int index) {
    setState(() => {_selectedIndex = index});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: [...pages],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: ontap,
          items: [

            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.black87),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.black87),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
                backgroundColor: Colors.black87),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
                backgroundColor: Colors.black87),
          ],
        ));
  }
}
