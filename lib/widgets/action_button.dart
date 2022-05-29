import 'package:flutter_fintech_app/utilities/import.dart';

// A custom gradient action button
class ActionButton extends StatelessWidget {
  final bool? enableShadow;
  final String labelText;
  final double minWidth, minHeight;
  const ActionButton({
    Key? key,
    this.enableShadow = true,
    required this.minWidth,
    required this.minHeight,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: kShadowPrimaryLight,
            blurRadius: 35,
            offset: Offset(0, 7), // changes position of shadow
          ),
        ],
        gradient: kSecondaryGradientColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(getDeviceWidth(minWidth), getDeviceHeight(minHeight)),
          alignment: Alignment.center,
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          labelText,
          style: buttonText,
        ),
      ),
    );
  }
}
