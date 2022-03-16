import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jordans_store_ui/data/const.dart';
import 'package:jordans_store_ui/models/shoe.dart';

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
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              icon: Icon(Icons.search),color: Colors.black,)
        ],
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

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Shoe> matchQuery = [];
    for (var items in shoesList) {
      if (items.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(items);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            leading: Container(
                width: 100,
                height: 100,
                child: Image(image: NetworkImage(result.imageUrl))),
            title: Text(result.name),
            trailing: Text(result.price),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Shoe> matchQuery = [];
    for (var items in shoesList) {
      if (items.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(items);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            leading: Container(
                width: 100,
                height: 100,
                child: Image(image: NetworkImage(result.imageUrl), fit: BoxFit.cover)),
            title: Text(result.name),
          );});
  }
}
