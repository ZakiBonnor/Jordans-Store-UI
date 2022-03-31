import 'package:flutter/material.dart';
import 'package:jordans_store_ui/data/const.dart';
import 'package:jordans_store_ui/models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
        elevation: 0,
        actions: [
          FlatButton(
              onPressed: () {
                setState(() {});
              },
              child: Icon(Icons.refresh_rounded, color: Colors.white))
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: shoppingCart.length,
                            itemBuilder: (context, index) {
                              return customCard(shoppingCart[index]);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Divider(
                height: 4,
                thickness: 5,
                color: Colors.black,
                indent: 2,
                endIndent: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Text('${totalShoppingPrice()}\$',style: TextStyle(fontSize: 20),),
                    ]),
              ),
              SizedBox(height: 20)
            ],
          )],
      ),
    );
  }

  int totalShoppingPrice(){
    int temp=0;
    for (int i=0;i<shoppingCart.length; i++){
      temp= temp + shoppingCart[i].price;
    }
    return temp;
  }

  Card customCard(Shoe shoe) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
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
          Expanded(
            flex: 1,
            child: Text('${shoe.price}\$'),
          ),
        ],
      ),
    );
  }
}
