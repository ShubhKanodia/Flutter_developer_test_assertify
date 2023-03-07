import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'index_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DataProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => IndexPage(),
          '/first': (context) => FirstPage(),
          '/second': (context) => SecondPage(),
          '/index': (context) => IndexPage(),
        },
      ),
    );
  }
}
