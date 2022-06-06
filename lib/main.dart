import 'package:flutter/material.dart';
import 'package:dictionary_flutter/utilities/constants.dart';
import 'package:dictionary_flutter/pages/home_page.dart';

void main() {
  runApp(const DictionaryApp());
}

class DictionaryApp extends StatelessWidget {
  const DictionaryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: kAppBarColor,
        ),
        backgroundColor: kBackgroundColor,
      ),
      home: const Home(),
    );
  }
}
