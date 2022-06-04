import 'package:flutter_fintech_app/utilities/import.dart';

class PayHistoryCategory extends StatelessWidget {
  final String categoryName;
  final Widget icon;
  final String iconLabel;

  const PayHistoryCategory({
    Key? key,
    required this.categoryName,
    required this.icon,
    required this.iconLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kSinglePad,
      height: getDeviceHeight(210),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: kPrimaryDarkGradientColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categoryName,
            style: kHeadingText,
          ),
          SizedBox(height: getDeviceHeight(25)),

          //List of icons
          SizedBox(
            height: getDeviceHeight(100),
            child: ListView.separated(
              itemCount: 10,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: getDeviceHeight(75),
                  width: getDeviceWidth(75),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        height: getDeviceHeight(65),
                        width: getDeviceWidth(65),
                        decoration: BoxDecoration(
                          border: whiteBorder,
                        ),
                        child: icon,
                      ),
                      SizedBox(
                        height: getDeviceHeight(5),
                      ),
                      Expanded(
                        child: Text(
                          iconLabel,
                          textAlign: TextAlign.center,
                          style: iconLabelText,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: getDeviceWidth(20));
              },
            ),
          ),
        ],
      ),
    );
  }
}
