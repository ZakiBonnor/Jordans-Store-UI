import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jordans_store_ui/data/const.dart';
import 'package:jordans_store_ui/models/shoe.dart';

class ItemsDetailsPage extends StatefulWidget {
  const ItemsDetailsPage({Key? key}) : super(key: key);

  @override
  _ItemsDetailsPageState createState() => _ItemsDetailsPageState();
}

class _ItemsDetailsPageState extends State<ItemsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    List<Shoe> currentShoe =
        ModalRoute.of(context)!.settings.arguments as List<Shoe>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 34, letterSpacing: 2),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Text(currentShoe[0].name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Image.network(currentShoe[0].imageUrl)),
              ),
              const Text('Colors',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: colorCard(colorsList[0]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: colorCard(colorsList[1]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: colorCard(colorsList[2]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: colorCard(colorsList[3]),
                      ),
                    ],
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('${currentShoe[0].price}\$',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              const Text('Size',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  sizeCard(41),
                  sizeCard(42),
                  sizeCard(43),
                  sizeCard(44),
                  sizeCard(45),
                ],
              ),
              SizedBox(height: 15),
              const Text('Description',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              const Text(
                'This shoe is really cool you should definitely buy it <3',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    shoppingCart.add(currentShoe[0]);

                    final snackBar = SnackBar(
                      content: const Text('Item Added Successfully!'),
                      action: SnackBarAction(
                        label: 'Go To Cart',
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.popAndPushNamed(context, '/Cart');
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Add To Cart',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  OutlinedButton colorCard(Color shoeColor) {
    return OutlinedButton(
      onPressed: () {},
      child: SizedBox(),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(shoeColor)),
    );
  }

  Padding sizeCard(int shoeSize) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: OutlinedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        onPressed: () {},
        child: Text(shoeSize.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      ),
    );
  }
}
