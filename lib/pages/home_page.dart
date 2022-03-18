import 'package:flutter/material.dart';
import 'package:jordans_store_ui/data/const.dart';
import 'package:jordans_store_ui/models/shoe.dart';

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
        backgroundColor: Colors.black87,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          customCard(shoesList[0]),
          customCard(shoesList[1]),
          customCard(shoesList[2]),
          customCard(shoesList[3]),
          customCard(shoesList[4]),
          customCard(shoesList[5]),
          customCard(shoesList[6]),
          customCard(shoesList[7]),
          customCard(shoesList[8]),
          customCard(shoesList[9]),
          customCard(shoesList[10]),
          customCard(shoesList[11]),
        ],
      ),
    );
  }

  GestureDetector customCard(Shoe shoe) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/details');
      },
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child:
                    Image(image: NetworkImage(shoe.imageUrl), fit: BoxFit.fill),
              ),
              SizedBox(height: 10),
              Text(shoe.name,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(
                shoe.price,
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
