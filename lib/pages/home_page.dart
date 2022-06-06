import 'package:flutter/material.dart';
import 'package:dictionary_flutter/utilities/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                        child: const TextField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: kTextFieldInputDecoration,
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
            ],
          ),
        ),
      ),
    );
  }
}
