import 'package:flutter/material.dart';

const kAppBarColor = Color(0xFF90AACB);
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

const kSearchIcon = Icon(
  Icons.search,
  size: 40.0,
  color: kWidgetColor,
);
