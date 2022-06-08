import 'package:flutter/material.dart';
import 'package:dictionary_flutter/utilities/constants.dart';

class MeaningCard extends StatelessWidget {
  final String partOfSpeech;
  final String meaning;
  final String example;

  const MeaningCard({
    Key? key,
    required this.partOfSpeech,
    required this.meaning,
    required this.example,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(top: 5.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kWidgetColor,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            partOfSpeech,
            style: kDefinitionTextStyle,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            meaning,
            style: kDefinitionTextStyle,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            example,
            style: kExampleTextStyle,
          ),
        ],
      ),
    );
  }
}
