import 'package:flutter_fintech_app/utilities/import.dart';

// Normal Colors
const Color kPrimaryBgColor = Color(0xFF212121);
const Color kAppBarColor = Color(0xFF2E2E2E); // For appBar & stuffs.
const Color kSecondaryColor = Color(0xFFFFFFFF);
const Color kSecondaryLightColor = Color(0xFF585757); // For bottom modal sheet.
const Color kIconColor = Color(0xFF959595);
const Color kIconBgColor = Color(0xFF222121);
const Color kTileColor = Color(0xFF3D3C3C);
const Color kBorderColor = Color(0xFFFF006F);
Color kPageIndicator = Colors.grey.shade800;
Color bottomNavBarColor = const Color(0xFF000000).withOpacity(0.3);

// Shadow Colors
const Color kShadowPrimaryDeep = Color(0xFF151515);
const Color kShadowPrimaryLight = Color(0xFF224ABB);

// Message colors
const Color kSuccessColor = Color(0xFF00BA39);
const Color kErrorColor = Color(0xFFFF4B4B);

// Gradients
// TODO: add stops

LinearGradient kPrimaryDarkGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF484848),
    Color(0xFF000000).withOpacity(0.4),
  ],
  stops: [0.002, 0.6],
); // for debit cards & list tiles

const LinearGradient kSecondaryGradientColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFF328AF5), Color(0xFF171E93)],
); // for buttons.

const LinearGradient kTertiaryGradientColor = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xFFFF8A5B),
    Color(0xFFFF3692),
    Color(0xFFFF26DF),
  ],
); // for circular progress -> on-boarding screen

// Text Color
const Color kPrimaryTextColor = Color(0xFFFFFFFF); // For headline1 texts.
const Color kSecondaryTextColor = Color(0xFF979797); // For headline2 texts.
const Color kSecondaryLightTextColor = Color(0xFF83838F); // For subtitle texts.
const Color kSecondaryDeepTextColor =
    Color(0xFF006CFF); // For bold texts in onboarding.
const Color kInfoTextColor = Color(0xFF83838F); // For onboarding screen texts.

// Text styles
TextStyle kHeadingText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(17),
letterSpacing: 0.5,
  fontWeight: FontWeight.bold,
); // used for your bills, rent & education etc.

TextStyle kFavouriteNames = GoogleFonts.poppins(
  fontSize: getDeviceWidth(9),
  fontWeight: FontWeight.w400,
  letterSpacing: 0.5,
);

TextStyle kSmallHeadingText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(11),
  fontWeight: FontWeight.bold,
  // color: kPrimaryTextColor,
);

TextStyle kPrimaryInfoText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(9),
  fontWeight: FontWeight.bold,
  color: kInfoTextColor,
);

TextStyle kSecondaryInfoText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(7),
  fontWeight: FontWeight.bold,
  color: kInfoTextColor,
);

TextStyle onboardingHintText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(18),
  fontWeight: FontWeight.bold,
  color: kPrimaryTextColor.withOpacity(0.2),
);

TextStyle categoryHeadingStyle = GoogleFonts.poppins(
  fontSize: getDeviceWidth(18),
  fontWeight: FontWeight.w500, //medium
); // for example "Settings & Preferences", "Recent Transactions" etc..

TextStyle buttonText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(18),
  fontWeight: FontWeight.bold,
);

TextStyle kAppbarTitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(17),
  height: 1.3,
  letterSpacing: 1,
  fontWeight: FontWeight.bold,
);

TextStyle primaryListTitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(16),
  fontWeight: FontWeight.w600, //semi-bold
);

TextStyle primaryListSubtitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(10),
  letterSpacing: 0.5,
  fontWeight: FontWeight.w400, //regular
  color: kSecondaryLightTextColor,
);

TextStyle secondaryListTitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(12),
  letterSpacing: 0.75,
  fontWeight: FontWeight.w600, //semi-bold
);

TextStyle secondaryListSubtitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(10),
  letterSpacing: 0.5,
  fontWeight: FontWeight.w300, // light
  color: kSecondaryLightTextColor,
);

TextStyle iconLabelText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(6),
  letterSpacing: 2,
  fontWeight: FontWeight.w600, //semi-bold
  // color: kPrimaryTextColor,
);

TextStyle buttonTitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(10),
  letterSpacing: 2,
  fontWeight: FontWeight.w600, //semi-bold
);

TextStyle deductedMoneyText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(18),
  fontWeight: FontWeight.w400, //regular
  color: kErrorColor,
);
TextStyle receivedMoneyText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(18),
  fontWeight: FontWeight.w400, //regular
  color: kSuccessColor,
);

TextStyle buttonSubtitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(7),
  letterSpacing: 2,
  fontWeight: FontWeight.w300, //light
  color: kSecondaryLightTextColor,
);

//padding
// EdgeInsets.all Padding Constants on this Project
EdgeInsetsGeometry kQuatPad = EdgeInsets.all(getDeviceWidth(5));
EdgeInsetsGeometry kHalfPad = EdgeInsets.all(getDeviceWidth(10));
EdgeInsetsGeometry kQuatHalfPad = EdgeInsets.all(getDeviceWidth(15));
EdgeInsetsGeometry kSinglePad = EdgeInsets.all(getDeviceWidth(20));
EdgeInsetsGeometry kSingleMiddlePad = EdgeInsets.all(getDeviceWidth(25));
EdgeInsetsGeometry kDoublePad = EdgeInsets.all(getDeviceWidth(40));
EdgeInsetsGeometry kDoubleMiddlePad = EdgeInsets.all(getDeviceWidth(45));
EdgeInsetsGeometry kTriplePad = EdgeInsets.all(getDeviceWidth(60));

// EdgeInsets.Symmetric -> Horizontal Padding Constants on this Project
EdgeInsetsGeometry kQuatHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(5));
EdgeInsetsGeometry kHalfHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(10));
EdgeInsetsGeometry kHalfMiddleHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(15));
EdgeInsetsGeometry kSingleHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(20));
EdgeInsetsGeometry kSingleMiddleHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(25));
EdgeInsetsGeometry kDoubleHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(40));
EdgeInsetsGeometry kDoubleMiddleHorizontal =
    EdgeInsets.symmetric(horizontal: getDeviceWidth(45));

// EdgeInsets.Symmetric -> Vertical Padding Constants on this Project
EdgeInsetsGeometry kQuatVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(5));
EdgeInsetsGeometry kHalfVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(10));
EdgeInsetsGeometry kHalfMiddleVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(15));
EdgeInsetsGeometry kSingleVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(20));
EdgeInsetsGeometry kSingleMiddleVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(25));
EdgeInsetsGeometry kDoubleVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(40));
EdgeInsetsGeometry kDoubleMiddleVertical =
    EdgeInsets.symmetric(vertical: getDeviceWidth(45));

// Radius Constant For container
BorderRadiusGeometry kQuatCurve = BorderRadius.circular(getDeviceWidth(5));
BorderRadiusGeometry kHalfCurve = BorderRadius.circular(getDeviceWidth(10));
BorderRadiusGeometry kHalfMiddleCurve =
    BorderRadius.circular(getDeviceWidth(15));
BorderRadiusGeometry kFullCurve = BorderRadius.circular(getDeviceWidth(20));
BorderRadiusGeometry kFullMiddleCurve =
    BorderRadius.circular(getDeviceWidth(25));

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

// symbols
String rupee = "₹";
