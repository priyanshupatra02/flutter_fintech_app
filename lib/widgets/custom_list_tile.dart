import 'package:flutter_fintech_app/utilities/import.dart';

class CustomListTile extends StatelessWidget {
  final double height;
  final double width;
  final Widget icon;
  final String titleText;
  final String subtitleText;
  final String deductedMoney;
  final bool isReceivedMoney;
  final String category;

  const CustomListTile({
    Key? key,
    required this.height,
    required this.width,
    required this.icon,
    required this.titleText,
    required this.subtitleText,
    required this.deductedMoney,
    required this.category,
    required this.isReceivedMoney,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kHalfPad,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: kTileColor,
        borderRadius: kHalfCurve,
      ),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: getDeviceHeight((55)),
            width: getDeviceWidth(55),
            decoration: BoxDecoration(
              color: kIconBgColor,
              borderRadius: kHalfCurve,
            ),
            child: icon,
          ),
          SizedBox(
            width: getDeviceWidth(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: Text(titleText, style: primaryListTitleText),
              ),
              SizedBox(
                child: Text(subtitleText, style: primaryListSubtitleText),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: Text(
                  deductedMoney,
                  style: isReceivedMoney ? receivedMoneyText : deductedMoneyText,
                ),
              ),
              SizedBox(
                child: Text(category, style: primaryListSubtitleText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
