import 'package:flutter/material.dart';
import 'package:dictionary_flutter/utilities/constants.dart';

class WordPage extends StatelessWidget {
  final String word;

  const WordPage({Key? key, required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(word),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(word),
          ],
        ),
      ),
    );
  }
}
