import 'package:flutter_fintech_app/utilities/import.dart';

class SideActionButton extends StatelessWidget {
  final bool isLeftCircularBorder;
  final Widget leadingIcon;
  final Widget trailingIcon;
  final String titleText;
  final String subtitleText;
  const SideActionButton({
    Key? key,
    required this.isLeftCircularBorder,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.titleText,
    required this.subtitleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: Add gesture detector here
    return Container(
      padding: kQuatHalfPad,
      decoration: BoxDecoration(
        gradient: kPrimaryDarkGradientColor,
        borderRadius: isLeftCircularBorder
            ? kHalfCurveHorizontalLeft
            : kHalfCurveHorizontalRight,
      ),
      child: FittedBox(
        child: Row(
          children: [
            leadingIcon,
            SizedBox(width: getDeviceWidth(20)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleText,
                  style: secondaryListTitleText,
                ),
                SizedBox(height: getDeviceHeight(3)),
                Text(
                  subtitleText,
                  style: secondaryListSubtitleText,
                ),
              ],
            ),
            SizedBox(width: getDeviceWidth(25)),
            trailingIcon,
          ],
        ),
      ),
    );
  }
}
