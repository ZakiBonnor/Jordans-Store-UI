import 'package:flutter/material.dart';
import 'package:jordans_store_ui/pages/home.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
  },
));