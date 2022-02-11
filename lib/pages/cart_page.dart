import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: FlatButton(
          onPressed: () {},
          child: Icon(Icons.arrow_back),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Text('Hello'),
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                  leading: Image(
                image: NetworkImage(
                    'https://i.pinimg.com/564x/87/fd/fb/87fdfb80a8d125c58c15026cf517465f.jpg'),
              ),
                title: Text('TEST'),
                trailing: Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
