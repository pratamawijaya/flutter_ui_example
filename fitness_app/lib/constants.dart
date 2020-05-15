import 'package:flutter/material.dart';

const kNearlyWhite = Color(0xFFFAFAFA);
const kWhite = Color(0xFFFFFFFF);
const kBackground = Color(0xFFF2F3F8);
const kNearlyDarkBlue = Color(0xFF2633C5);

const Color kNearlyBlue = Color(0xFF00B6F0);
const Color kNearlyBlack = Color(0xFF213333);
const Color kGrey = Color(0xFF3A5160);
const Color kDark_grey = Color(0xFF313A44);

const Color kDarkText = Color(0xFF253840);
const Color kDarkerText = Color(0xFF17262A);
const Color kLightText = Color(0xFF4A6572);
const Color kDeactivatedText = Color(0xFF767676);
const Color kDismissibleBackground = Color(0xFF364A54);
const Color kSpacer = Color(0xFFF2F2F2);
const String kFontName = 'Roboto';

const TextTheme KTextTheme = TextTheme(
  headline4: display1,
  headline5: headline,
  headline6: title,
  subtitle2: subtitle,
  bodyText2: body2,
  bodyText1: body1,
  caption: caption,
);

const TextStyle display1 = TextStyle(
  fontFamily: kFontName,
  fontWeight: FontWeight.bold,
  fontSize: 36,
  letterSpacing: 0.4,
  height: 0.9,
  color: kDarkText,
);

const TextStyle headline = TextStyle(
  fontFamily: kFontName,
  fontWeight: FontWeight.bold,
  fontSize: 24,
  letterSpacing: 0.27,
  color: kDarkerText,
);

const TextStyle title = TextStyle(
  fontFamily: kFontName,
  fontWeight: FontWeight.bold,
  fontSize: 16,
  letterSpacing: 0.18,
  color: kDarkerText,
);

const TextStyle subtitle = TextStyle(
  fontFamily: kFontName,
  fontWeight: FontWeight.w400,
  fontSize: 14,
  letterSpacing: -0.04,
  color: kDarkText,
);

const TextStyle body2 = TextStyle(
  fontFamily: kFontName,
  fontWeight: FontWeight.w400,
  fontSize: 14,
  letterSpacing: 0.2,
  color: kDarkText,
);

const TextStyle body1 = TextStyle(
  fontFamily: kFontName,
  fontWeight: FontWeight.w400,
  fontSize: 16,
  letterSpacing: -0.05,
  color: kDarkText,
);

const TextStyle caption = TextStyle(
  fontFamily: kFontName,
  fontWeight: FontWeight.w400,
  fontSize: 12,
  letterSpacing: 0.2,
  color: kLightText, // was lightText
);
