import 'package:flutter/material.dart';
import 'package:dictionary_flutter/utilities/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String searchedWord;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: kBackgroundColor,
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
                        child: TextField(
                          style: kTextFieldColorStyle,
                          decoration: kTextFieldInputDecoration,
                          onChanged: (String value) {
                            searchedWord = value;
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: kSearchIcon,
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 5,
                child: Text(
                  'Free Dictionary',
                  style: kHomePageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
