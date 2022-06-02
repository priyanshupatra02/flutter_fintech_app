import 'package:flutter_fintech_app/utilities/import.dart';

class SideActionButton extends StatelessWidget {
  final bool isLeftCircularBorder;
  final double height;
  final double width;
  final Widget leadingIcon;
  final Widget trailingIcon;
  final String titleText;
  final String subtitleText;
  const SideActionButton({
    Key? key,
    required this.isLeftCircularBorder,
    required this.height,
    required this.width,
    required this.leadingIcon,
    required this.trailingIcon, required this.titleText, required this.subtitleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kQuatHalfPad,
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: kPrimaryDarkGradientColor,
        borderRadius: isLeftCircularBorder
            ? BorderRadius.horizontal(left: Radius.circular(getDeviceWidth(10)))
            : BorderRadius.horizontal(right: Radius.circular(getDeviceHeight(10))),
      ),
      child: Row(
        children: [
          leadingIcon,
          SizedBox(
            width: getDeviceWidth(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Text(titleText, style: secondaryListTitleText),
              ),
              SizedBox(
                child: Text(subtitleText, style: secondaryListSubtitleText),
              ),
            ],
          ),
          const Spacer(),
          trailingIcon,
        ],
      ),
    );
  }
}
