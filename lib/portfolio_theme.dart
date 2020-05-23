import 'package:flutter/material.dart';
import 'package:flutterportfoliocodepen/constants.dart';

class PortfolioTheme {
  static get light => ThemeData.light().copyWith(
        primaryColor: kPrimaryColor,
        accentColor: kSecondaryColor,
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: kSecondaryColor,
                fontSize: 16.0,
              ),
            ),
      );
}
