import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFFFEF1E6);
const kWidgetColor = Color(0xFFF9D5A7);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: kWidgetColor,
  hintText: 'Search',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);

const kTextFieldColorStyle = TextStyle(
  color: Colors.black,
);

const kSearchIcon = Icon(
  Icons.search,
  size: 40.0,
  color: kWidgetColor,
);

const kHomePageTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFFFFB085),
);

const kSearchedWordTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

const kPhoneticTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
);
