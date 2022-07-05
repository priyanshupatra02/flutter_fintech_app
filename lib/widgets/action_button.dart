import 'package:flutter_fintech_app/utilities/import.dart';

// A custom gradient action button
class ActionButton extends StatelessWidget {
  final bool enableShadow;
  final BorderRadiusGeometry? borderRadius;
  final String labelText;
  final VoidCallback onPressed;
  final bool isBorder;
  const ActionButton({
    Key? key,
    this.enableShadow = true,
    required this.labelText,
    required this.onPressed,
    this.borderRadius,
    required this.isBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? kQuatCurve;
    return isBorder
        ? DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: kIconColor,
              ),
              borderRadius: borderRadius,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: kHalfCurve,
                ),
              ),
              onPressed: onPressed,
              child: FittedBox(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getDeviceWidth(15),
                    vertical: getDeviceHeight(15),
                  ),
                  child: Text(
                    labelText,
                    style: buttonText,
                  ),
                ),
              ),
            ),
          )
        : DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color:
                      enableShadow ? kShadowPrimaryLight : Colors.transparent,
                  blurRadius: 35,
                  offset: const Offset(0, 7), // changes position of shadow
                ),
              ],
              gradient: kSecondaryGradientColor,
              borderRadius: borderRadius,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: kHalfCurve,
                ),
              ),
              onPressed: onPressed,
              child: FittedBox(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getDeviceWidth(15),
                    vertical: getDeviceHeight(15),
                  ),
                  child: Text(
                    labelText,
                    style: buttonText,
                  ),
                ),
              ),
            ),
          );
  }
}
