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
          children: [
            const OtpForm(),
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
