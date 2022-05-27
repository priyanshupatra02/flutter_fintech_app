import 'package:flutter/material.dart';
import 'package:flutter_fintech_app/utilities/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

// Normal Color
const kPrimaryBgColor = Color(0xFF212121);
const kPrimaryLightColor = Color(0xFF2E2E2E); // For appBar & stuffs.
const kSecondaryColor = Color(0xFFFFFFFF);
const kSecondaryLightColor = Color(0xFF585757); // For bottom modal sheet.
const kIconColor = Color(0xFF959595);
const kIconBgColor = Color(0xFF222121);
const kTileColor = Color(0xFF3D3C3C);

// Shadow Colors
const kShadowPrimaryDeep = Color(0xFF151515);

// Message colors
const kSuccessColor = Color(0xFF00BA39);
const kErrorColor = Color(0xFFFF4B4B);

// Gradients
// TODO: add stops

const kPrimaryDarkGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF000000), Color(0xFF484848)],
); // for debit cards & list tiles

const kSecondaryGradientColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFF328AF5), Color(0xFF171E93)],
); // for buttons.

const kTertiaryGradientColor = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [Color(0xFFFF26DF), Color(0xFFFF3692), Color(0xFFFF8A5B)],
); // for circular progress -> on-boarding screen

// Text Color
const kPrimaryTextColor = Color(0xFFFFFFFF); // For headline1 texts.
const kSecondaryTextColor = Color(0xFF979797); // For headline2 texts.
const kSecondaryLightTextColor = Color(0xFF83838F); // For subtitle texts.
const kSecondaryDeepTextColor =
    Color(0xFF006CFF); // For bold texts in onboarding.
const kInfoTextColor = Color(0xFF83838F); // For onboarding screen texts.

// Text styles
TextStyle kHeadingText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: kPrimaryTextColor,
);

TextStyle kSmallHeadingText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(11),
  fontWeight: FontWeight.bold,
  color: kPrimaryTextColor,
);

TextStyle kPrimaryInfoText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(9),
  fontWeight: FontWeight.bold,
  color: kInfoTextColor,
);

TextStyle kSecondaryInfoText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(7),
  fontWeight: FontWeight.bold,
  color: kInfoTextColor,
);

TextStyle onboardingHintText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(18),
  fontWeight: FontWeight.bold,
  color: kPrimaryTextColor.withOpacity(0.2),
);

TextStyle buttonText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(19),
  fontWeight: FontWeight.bold,
  color: kPrimaryTextColor,
);

TextStyle kAppbarTitleText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(17),
  letterSpacing: 25,
  fontWeight: FontWeight.bold,
  color: kPrimaryTextColor,
);

TextStyle listTitleText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(16),
  fontWeight: FontWeight.w600, //semi-bold
  color: kPrimaryTextColor,
);

TextStyle listSubtitleText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(10),
  letterSpacing: 2,
  fontWeight: FontWeight.w400, //regular
  color: kSecondaryLightTextColor,
);

TextStyle iconLabelText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(6),
  letterSpacing: 2,
  fontWeight: FontWeight.w600, //semi-bold
  color: kPrimaryTextColor,
);

TextStyle buttonTitleText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(10),
  letterSpacing: 2,
  fontWeight: FontWeight.w600, //semi-bold
  color: kPrimaryTextColor,
);

TextStyle buttonSubtitleText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(7),
  letterSpacing: 2,
  fontWeight: FontWeight.w300, //light
  color: kSecondaryLightTextColor,
);

TextStyle chipText = GoogleFonts.poppins(
  fontSize: getProportionateScreenWidth(12),
  letterSpacing: 2,
  fontWeight: FontWeight.w500, //medium
  color: kPrimaryTextColor,
);

//padding
// EdgeInsets.all Padding Constants on this Project
EdgeInsetsGeometry kQuatPad = EdgeInsets.all(getProportionateScreenWidth(5));
EdgeInsetsGeometry kHalfPad = EdgeInsets.all(getProportionateScreenWidth(10));
EdgeInsetsGeometry kQuatHalfPad =
    EdgeInsets.all(getProportionateScreenWidth(15));
EdgeInsetsGeometry kSinglePad = EdgeInsets.all(getProportionateScreenWidth(20));
EdgeInsetsGeometry kSingleMiddlePad =
    EdgeInsets.all(getProportionateScreenWidth(25));
EdgeInsetsGeometry kDoublePad = EdgeInsets.all(getProportionateScreenWidth(40));

// EdgeInsets.Symmetric -> Horizontal Padding Constants on this Project
EdgeInsetsGeometry kQuatHorizontal =
    EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5));
EdgeInsetsGeometry kHalfHorizontal =
    EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10));
EdgeInsetsGeometry kHalfMiddleHorizontal =
    EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10));
EdgeInsetsGeometry kSingleHorizontal =
    EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20));
EdgeInsetsGeometry kSingleMiddleHorizontal =
    EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25));
EdgeInsetsGeometry kDoubleHorizontal =
    EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40));
EdgeInsetsGeometry kDoubleMiddleHorizontal =
    EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(45));

// EdgeInsets.Symmetric -> Vertical Padding Constants on this Project
EdgeInsetsGeometry kQuatVertical =
    EdgeInsets.symmetric(vertical: getProportionateScreenWidth(5));
EdgeInsetsGeometry kHalfVertical =
    EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10));
EdgeInsetsGeometry kHalfMiddleVertical =
    EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10));
EdgeInsetsGeometry kSingleVertical =
    EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20));
EdgeInsetsGeometry kSingleMiddleVertical =
    EdgeInsets.symmetric(vertical: getProportionateScreenWidth(25));
EdgeInsetsGeometry kDoubleVertical =
    EdgeInsets.symmetric(vertical: getProportionateScreenWidth(40));
EdgeInsetsGeometry kDoubleMiddleVertical =
    EdgeInsets.symmetric(vertical: getProportionateScreenWidth(45));

// Form Error
// final RegExp emailValidatorRegExp =
//     RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
