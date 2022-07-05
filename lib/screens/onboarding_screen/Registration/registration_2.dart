import 'package:flutter_fintech_app/utilities/import.dart';

//TODO: Ask for permission

class RegistrationPage2 extends StatelessWidget {
  const RegistrationPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: scaffoldBgImage, //declared in import.dart
        ),
      ),
      bottomSheet: BottomSheetCard(
        height: getDeviceHeight(550),
        padding: kSinglePad,
        child: Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/icons/back.svg",
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(height: getDeviceHeight(20)),
                  Text(
                    "we will take the following permissions.",
                    style: kBottomSheetHeading,
                  ),
                  SizedBox(height: getDeviceHeight(20)),
                  BuildPermissionCategories(
                    icon: SvgPicture.asset(
                      "assets/icons/phone-state-permission.svg",
                      height: getDeviceHeight(50),
                      width: getDeviceWidth(48),
                    ),
                    headingText: "phone state permission",
                    isMandatory: true,
                    subtitleText:
                        "we need this permission to ensure the SIM card\nin your phone & your registered phone number\nmatch.",
                  ),
                  BuildPermissionCategories(
                    icon: SvgPicture.asset(
                      "assets/icons/sms-permission.svg",
                      height: getDeviceHeight(50),
                      width: getDeviceWidth(48),
                    ),
                    headingText: "sms permission",
                    isMandatory: true,
                    subtitleText:
                        "we need this permission to activate UPI and\nsend you credit card payment reminders to\nprovide a seamless experience.",
                  ),
                  BuildPermissionCategories(
                    icon: SvgPicture.asset(
                      "assets/icons/location-permission.svg",
                      height: getDeviceHeight(50),
                      width: getDeviceWidth(48),
                    ),
                    headingText: "location permission",
                    isMandatory: false,
                    subtitleText:
                        "we need this permission to intelligently surface\nlocation specific rewards, alerts & suggestions.",
                  ),
                  SizedBox(
                    height: getDeviceHeight(50),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ActionButton(
                      isBorder: false,
                      labelText: "Grant permission",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildPermissionCategories extends StatelessWidget {
  final Widget icon;
  final String headingText;
  final String subtitleText;
  final bool isMandatory;
  const BuildPermissionCategories({
    Key? key,
    required this.icon,
    required this.isMandatory,
    required this.subtitleText,
    required this.headingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kHalfVertical,
      child: Row(
        children: [
          icon,
          SizedBox(width: getDeviceWidth(20)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //heading text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    headingText,
                    style: GoogleFonts.poppins(
                      fontSize: getDeviceWidth(12.5),
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: getDeviceWidth(7),
                      vertical: getDeviceHeight(5),
                    ),
                    margin: kQuatPad,
                    color: kSecondaryLightTextColor,
                    child: FittedBox(
                        child: isMandatory
                            ? Text(
                                "MANDATORY",
                                style: GoogleFonts.poppins(
                                  fontSize: getDeviceWidth(8),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            : Text(
                                "OPTIONAL",
                                style: GoogleFonts.poppins(
                                  fontSize: getDeviceWidth(8),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                  )
                ],
              ),
              //subtitle text
              Text(
                subtitleText,
                style: kPrimarySubtitleText,
              )
            ],
          ),
        ],
      ),
    );
  }
}
