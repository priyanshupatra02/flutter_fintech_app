import 'package:flutter_fintech_app/utilities/import.dart';

// A custom gradient action button
class ActionButton extends StatelessWidget {
  final bool enableShadow;
  final BorderRadiusGeometry? borderRadius;
  final String labelText;
  final double minWidth, minHeight;
  final VoidCallback onPressed;

  const ActionButton({
    Key? key,
    this.enableShadow = true,
    required this.labelText,
    required this.onPressed,
    this.borderRadius,
    this.minWidth = 220,
    this.minHeight = 45.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? kQuatCurve;
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: enableShadow ? kShadowPrimaryLight : Colors.transparent,
            blurRadius: 35,
            offset: const Offset(0, 7), // changes position of shadow
          ),
        ],
        gradient: kSecondaryGradientColor,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize:
              Size(getDeviceWidth(minWidth), getDeviceHeight(minHeight)),
          alignment: Alignment.center,
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: kHalfCurve,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          labelText,
          style: buttonText,
        ),
      ),
    );
  }
}
