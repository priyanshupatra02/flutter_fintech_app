import 'package:flutter_fintech_app/utilities/import.dart';

class RegistrationPage3 extends StatelessWidget {
  const RegistrationPage3({Key? key}) : super(key: key);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              "assets/icons/back.svg",
              fit: BoxFit.scaleDown,
            ),
            SizedBox(height: getDeviceHeight(20)),
            Text(
              "we have sent you\nan OTP.",
              style: kBottomSheetHeading,
            ),
            Text(
              "enter the 4 digit OTP sent on *******272.",
              style: kPrimarySubtitleText,
            ),
            SizedBox(height: getDeviceHeight(20)),
            const OtpForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "resend after",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                const SizedBox(width: 4),
                const OtpTimer(),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionButton(
                  labelText: "Resend",
                  onPressed: () {},
                  isBorder: true,
                ),
                ActionButton(
                  labelText: "Confirm",
                  onPressed: () {},
                  isBorder: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
