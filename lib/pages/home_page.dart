import 'package:flutter/material.dart';
import 'package:jordans_store_ui/pages/cart_page.dart';
import 'package:jordans_store_ui/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jordans Store'),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 2),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[600],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          customCard(
              'https://i.pinimg.com/564x/b0/03/1a/b0031a4d1b2c2217730488f3103511ad.jpg',
              'Air Jordan 1 LA Lakers Edition',
              '200 Dollars'),
          customCard(
              'https://i.pinimg.com/564x/70/e1/cd/70e1cd5f054e36d97b669a44bf6d52f0.jpg',
              'Air Jordan 1 Blue Flannel',
              '180 Dollars'),
          customCard(
              'https://i.pinimg.com/564x/bb/51/d7/bb51d78d6dff2d8b50acbf654f6b6e1c.jpg',
              'Air Jordan 1 Low Poppy Blue',
              '320 Dollars'),
          customCard(
              'https://i.pinimg.com/564x/a1/bb/0a/a1bb0aef5d8c3289e80175358a96c360.jpg',
              'Air Jordan 1 x Cactus Jack',
              '480 Dollars'),
          customCard(
              'https://i.pinimg.com/564x/31/9f/71/319f714bf4fd279bcdd8ab1c4f1e1758.jpg',
              'Air Jordan 1 Panda Black',
              '220 Dollars'),
          customCard(
              'https://i.pinimg.com/564x/87/fd/fb/87fdfb80a8d125c58c15026cf517465f.jpg',
              'Air Jordan 6 Whitey Purp',
              '260 Dollars'),
          customCard(
              'https://i.pinimg.com/564x/b0/03/1a/b0031a4d1b2c2217730488f3103511ad.jpg',
              'Air Jordan 1 LA Lakers Edition',
              '200 Dollars'),
          customCard(
              'https://i.pinimg.com/564x/70/e1/cd/70e1cd5f054e36d97b669a44bf6d52f0.jpg',
              'Air Jordan 1 Blue Flannel',
              '180 Dollars'),
          customCard(
              'https://i.pinimg.com/564x/bb/51/d7/bb51d78d6dff2d8b50acbf654f6b6e1c.jpg',
              'Air Jordan 1 Low Poppy Blue',
              '320 Dollars'),
          customCard(
              'https://i.pinimg.com/564x/a1/bb/0a/a1bb0aef5d8c3289e80175358a96c360.jpg',
              'Air Jordan 1 x Cactus Jack',
              '480 Dollars'),
          customCard(
              'https://i.pinimg.com/564x/31/9f/71/319f714bf4fd279bcdd8ab1c4f1e1758.jpg',
              'Air Jordan 1 Panda Black',
              '220 Dollars'),
          customCard(
              'https://i.pinimg.com/564x/87/fd/fb/87fdfb80a8d125c58c15026cf517465f.jpg',
              'Air Jordan 6 Whitey Purp',
              '260 Dollars'),
        ],
      ),
    );
  }

  Card customCard(String image, String title, String count) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image(image: NetworkImage(image), fit: BoxFit.fill),
            ),
            SizedBox(height: 10),
            Text(title,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(
              count,
              style: TextStyle(fontSize: 15, color: Colors.grey[600]),
            )
          ],
        ),
      ),
    );
  }
}
