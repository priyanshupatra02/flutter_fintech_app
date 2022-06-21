import 'package:flutter_fintech_app/utilities/import.dart';

class BuildDebitCard extends StatelessWidget {
  final bool isPrimary;
  const BuildDebitCard({
    Key? key,
    required this.isPrimary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kPrimaryBgColor,
      elevation: 2,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            padding: kHalfPad,
            width: getDeviceWidth(150),
            height: getDeviceHeight(95),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/logos/axis-bank-logo.svg"),
                    Spacer(),
                    SvgPicture.asset("assets/logos/upi-payment.svg"),
                  ],
                ),
                SizedBox(
                  height: getDeviceHeight(20),
                ),
                Text(
                  "Axis Bank - 5437",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF837F7F),
                    fontSize: getDeviceWidth(12),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "XXXX 5437",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF837F7F),
                    fontSize: getDeviceWidth(10),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: kQuatPad,
            height: getDeviceHeight(20),
            width: getDeviceWidth(60),
            decoration: BoxDecoration(
              color: kSecondaryLightColor,
              borderRadius: kQuatCurve,
            ),
            child: Text(
              "primary",
              style: GoogleFonts.poppins(
                color: kPrimaryTextColor,
                fontSize: getDeviceWidth(8),
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
