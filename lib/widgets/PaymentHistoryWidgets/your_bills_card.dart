import 'package:flutter_fintech_app/utilities/import.dart';

class YourBillsStatus extends StatelessWidget {
  final Widget icon;
  final String status;
  final bool isBillPaid;

  const YourBillsStatus({
    Key? key,
    required this.icon,
    required this.status,
    this.isBillPaid = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: getDeviceHeight(250),
      width: getDeviceWidth(160),
      decoration: BoxDecoration(
        borderRadius: kHalfCurve,
        color: kTileColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: getDeviceHeight(25)),
          icon,
          SizedBox(height: getDeviceWidth(25)),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: kHalfCurve,
              color: kIconBgColor,
            ),
            height: getDeviceHeight(50),
            width: getDeviceWidth(
              120,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Jio prepaid",
                  style: secondaryListTitleText,
                ),
                //TODO; replace with real number in production.
                Text(
                  "637****",
                  style: secondaryListSubtitleText,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            alignment: Alignment.center,
            height: getDeviceHeight(30),
            width: getDeviceWidth(
              90,
            ),
            decoration: BoxDecoration(
              borderRadius: kHalfCurve,
              color: kIconBgColor,
            ),
            child: Text(status, style: secondaryListTitleText),
          ),
          const Spacer(),
          Container(
            alignment: Alignment.center,
            padding: kQuatPad,
            height: getDeviceHeight(50),
            width: getDeviceWidth(160),
            decoration: BoxDecoration(
              borderRadius: kHalfCurveVerticalBottom,
              color: isBillPaid
                  ? kSuccessColor
                  : kIconBgColor, // if unpaid then show black or else show green if paid, by default it is false
            ),
            child: isBillPaid
                ? Text(
                    "paid.",
                    style: secondaryListTitleText,
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "recharge.",
                            style: secondaryListTitleText,
                          ),
                          Text(
                            "WIN UP TO ₹5k",
                            style: secondaryListSubtitleText,
                          ),
                        ],
                      ),
                      SvgPicture.asset("assets/icons/go-to-icon.svg")
                      // SizedBox(width: getDeviceWidth(10)),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
