import 'package:flutter_fintech_app/utilities/import.dart';

class CustomListTile extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget icon;
  final String titleText;
  final String subtitleText;
  final String deductedMoney;
  final String category;
  

  const CustomListTile({
    Key? key,
    this.height = 80,
    this.width = 370,
    required this.icon,
    required this.titleText,
    required this.subtitleText,
    required this.deductedMoney,
    required this.category,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kHalfPad,
      width: getDeviceWidth(370),
      height: getDeviceHeight(80),
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
                child: Text(titleText, style: listTitleText),
              ),
              SizedBox(
                child: Text(subtitleText, style: listSubtitleText),
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
                  style: deductedMoneyText,
                ),
              ),
              SizedBox(
                child: Text(category, style: listSubtitleText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
