import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jordans_store_ui/data/const.dart';

class ItemsDetailsPage extends StatefulWidget {
  const ItemsDetailsPage({Key? key}) : super(key: key);

  @override
  _ItemsDetailsPageState createState() => _ItemsDetailsPageState();
}

class _ItemsDetailsPageState extends State<ItemsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 34, letterSpacing: 2),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text('AIR JORDAN 3',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Image.network(
                'https://cdn.dribbble.com/users/1298822/screenshots/4205563/media/dc70c7f7ebd60b285d5b1faea538072e.png?compress=1&resize=800x600&vertical=top'),
            const Text('Colors',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold)),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: customCard(colorsList[0]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: customCard(colorsList[1]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: customCard(colorsList[2]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: customCard(colorsList[3]),
                ),
              ],
            ),
            const Text('Size',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Row(
              children: [
                OutlinedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () {},
                  child: const Text('41',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('42',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)),
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () {},
                  child: const Text('43',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () {},
                  child: const Text('44',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Description',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      margin: const EdgeInsets.all(12.0),
                      padding: const EdgeInsets.all(3.0),
                      child: const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo co',
                        style: TextStyle(fontSize: 20),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                        ),
                        onPressed: () {},
                        child: const Text('Add To Cart',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  OutlinedButton customCard(Color shoeColor) {
    return OutlinedButton(
      onPressed: () {},
      child: const SizedBox(),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(shoeColor)),
    );
  }
}
