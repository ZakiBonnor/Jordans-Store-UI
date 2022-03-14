import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: FlatButton(child: Icon(Icons.add), onPressed: () => {}),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 10),
              child: Center(
                  child: SvgPicture.asset('assets/images/search1.svg',
                      width: 100)),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 150, 0, 20),
            child: Text('Search Items',
                style: TextStyle(
                    fontSize: 36, color: Colors.black, letterSpacing: 1)),
          )),
          Center(
              child: Text('Find Items That Suits Your Liking!',
                  style: TextStyle(fontSize: 18, color: Colors.black))),
        ],
      ),
    );
  }
}
