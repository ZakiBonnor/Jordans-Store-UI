import 'package:flutter/material.dart';
import 'package:jordans_store_ui/data/const.dart';
import 'package:jordans_store_ui/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('My Cart',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2)),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: FlatButton(
            child: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => {Navigator.pushNamed(context, '/')}),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                customCard(
                  shoesList[0],
                ),
                SizedBox(height: 15),
                customCard(
                  shoesList[1],
                ),
                SizedBox(height: 15),
                customCard(
                  shoesList[2],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  child: Text('Back to Item search',
                      style: TextStyle(fontSize: 18)),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card customCard(Shoe shoe) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image(image: NetworkImage(shoe.imageUrl), fit: BoxFit.fill),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(shoe.name,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            ),
          ),
          FlatButton(
            onPressed: () {
              print(Text('Item Added Successfully'));
            },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
