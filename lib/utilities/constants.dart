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
const Color kSecondaryBorderColor = Color(0xFF328AF5);
const Color kAvatarBorderColor = Color(0xFF6C6C6C);
Color kPageIndicator = Colors.grey.shade800;
Color bottomNavBarColor = const Color(0xFF000000).withOpacity(0.3);
Color kDropDownItemColor = const Color(0xFFA8A8A8);
const Color kGraphColor = Color(0xFF2F80ED);
const Color kTimerColor = Color(0xFF46AAFF);
// Shadow Colors
const Color kShadowPrimaryDeep = Color(0xFF151515);
const Color kShadowPrimaryLight = Color(0xFF224ABB);
Color kGraphShadowColor = const Color(0xFF2F80ED).withOpacity(0.6);

// Message colors
const Color kSuccessColor = Color(0xFF00BA39);
const Color kErrorColor = Color(0xFFFF4B4B);

// Gradients

LinearGradient kPrimaryDarkGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    const Color(0xFF484848),
    const Color(0xFF000000).withOpacity(0.4),
  ],
  stops: const [0.002, 0.6],
); // for debit cards & list tiles
const LinearGradient kSecondaryGradientColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF328AF5),
    Color(0xFF171E93),
  ],
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

TextStyle kSnackBarMessage = GoogleFonts.poppins(
  fontSize: getDeviceWidth(11),
  letterSpacing: getDeviceWidth(0.75),
  fontWeight: FontWeight.w400,
); // used displaying snackbar errors.

TextStyle kHeadingText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(17),
  letterSpacing: getDeviceWidth(0.5),
  fontWeight: FontWeight.bold,
); // used for your bills, rent & education etc.

TextStyle kFavouriteNames = GoogleFonts.poppins(
  fontSize: getDeviceWidth(9),
  fontWeight: FontWeight.w400,
  letterSpacing: getDeviceWidth(0.5),
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

TextStyle kMoneytext = GoogleFonts.poppins(
  fontSize: getDeviceWidth(50),
  letterSpacing: 1.5,
  fontWeight: FontWeight.w400,
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
  letterSpacing: 0.5,
  fontWeight: FontWeight.w500, //medium
);

TextStyle kAppbarTitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(15),
  height: getDeviceHeight(1.2),
  letterSpacing: getDeviceWidth(1),
  fontWeight: FontWeight.bold,
);

TextStyle primaryListTitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(16),
  fontWeight: FontWeight.w600, //semi-bold
);

TextStyle primaryListSubtitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(10),
  letterSpacing: getDeviceWidth(0.5),
  fontWeight: FontWeight.w400, //regular
  color: kSecondaryLightTextColor,
);

TextStyle secondaryListTitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(12),
  letterSpacing: getDeviceWidth(0.75),
  fontWeight: FontWeight.w600, //semi-bold
);

TextStyle secondaryListSubtitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(10),
  letterSpacing: getDeviceWidth(0.5),
  fontWeight: FontWeight.w300, // light
  color: kSecondaryLightTextColor,
);

TextStyle iconLabelText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(7.5),
  letterSpacing: getDeviceWidth(0.75),
  fontWeight: FontWeight.w600, //semi-bold
);

TextStyle buttonTitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(10),
  letterSpacing: getDeviceWidth(2),
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
  letterSpacing: getDeviceWidth(2),
  fontWeight: FontWeight.w300, //light
  color: kSecondaryLightTextColor,
);

TextStyle payCardsLabelText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(10),
  letterSpacing: getDeviceWidth(0.5),
  fontWeight: FontWeight.w500, //medium
); // for send/receive/add money labels

TextStyle bodyText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(20),
  letterSpacing: getDeviceWidth(0.5),
  fontWeight: FontWeight.w500, //semi-bold
); // like no notification title, request monet title

TextStyle hintTextStyle = GoogleFonts.poppins(
  fontSize: getDeviceWidth(18),
  letterSpacing: getDeviceWidth(0.5),
  fontWeight: FontWeight.w500, //medium
  color: kPrimaryTextColor.withOpacity(0.2),
);

TextStyle contactNameTextStyle = GoogleFonts.poppins(
  fontSize: getDeviceWidth(13),
  letterSpacing: getDeviceWidth(0.75),
  fontWeight: FontWeight.w500, //medium
);

TextStyle contactNumberTextStyle = GoogleFonts.poppins(
  fontSize: getDeviceWidth(12),
  letterSpacing: getDeviceWidth(1),
  fontWeight: FontWeight.w400, //medium
);

// Textstyle for registration page
TextStyle kBottomSheetHeading = GoogleFonts.poppins(
  fontSize: getDeviceWidth(26),
  letterSpacing: getDeviceWidth(0.5),
  height: getDeviceHeight(1.1),
  fontWeight: FontWeight.bold, //medium
);
TextStyle kPrimarySubtitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(10),
  fontWeight: FontWeight.w400, //regular
  color: kSecondaryLightTextColor,
);
TextStyle kSecondarySubtitleText = GoogleFonts.poppins(
  fontSize: getDeviceWidth(9),
  fontWeight: FontWeight.w400, //regular
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

// All Circular Radius Constant
BorderRadiusGeometry kQuatCurve = BorderRadius.circular(getDeviceWidth(5));
BorderRadiusGeometry kHalfCurve = BorderRadius.circular(getDeviceWidth(10));
BorderRadiusGeometry kHalfMiddleCurve =
    BorderRadius.circular(getDeviceWidth(15));
BorderRadiusGeometry kFullCurve = BorderRadius.circular(getDeviceWidth(20));
BorderRadiusGeometry kFullMiddleCurve =
    BorderRadius.circular(getDeviceWidth(25));

// Horizontal Circular Radius Constant
BorderRadiusGeometry kHalfCurveHorizontalLeft =
    BorderRadius.horizontal(left: Radius.circular(getDeviceWidth(10)));
BorderRadiusGeometry kHalfCurveHorizontalRight =
    BorderRadius.horizontal(right: Radius.circular(getDeviceWidth(10)));

// Vertical Circular Radius Constant
BorderRadiusGeometry kHalfCurveVerticalTop =
    BorderRadius.vertical(top: Radius.circular(getDeviceWidth(10)));
BorderRadiusGeometry kHalfCurveVerticalBottom =
    BorderRadius.vertical(bottom: Radius.circular(getDeviceWidth(10)));

// Icons border width
Border whiteBorder = const Border(
  top: BorderSide(width: 1, color: kSecondaryColor),
  left: BorderSide(width: 1, color: kSecondaryColor),
  right: BorderSide(width: 1, color: kSecondaryColor),
  bottom: BorderSide(width: 1, color: kSecondaryColor),
);

// Form Error
// final RegExp emailValidatorRegExp =
//     RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
// add a regex regarding upi id
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
