import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:storeapp/screen/home_page.dart';
void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id:(context)=> HomePage(),

      },
      initialRoute: HomePage.id,
    );
  }
}

