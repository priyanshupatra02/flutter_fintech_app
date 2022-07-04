import 'package:flutter_fintech_app/utilities/import.dart';

class BottomSheetCard extends StatefulWidget {
  final Widget? child;
  final double height;
  final EdgeInsetsGeometry? padding;
  const BottomSheetCard({
    Key? key,
    this.child,
    required this.height,
    required this.padding,
  }) : super(key: key);

  @override
  State<BottomSheetCard> createState() => _BottomSheetCardState();
}

class _BottomSheetCardState extends State<BottomSheetCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Divider(
          color: kSecondaryLightColor,
          height: getDeviceHeight(20),
          thickness: 3,
          indent: getDeviceWidth(150),
          endIndent: getDeviceWidth(150),
        ),
        Container(
          padding: widget.padding,
          height: widget.height,
          alignment: Alignment.center,
          width: double.infinity,
          color: kTileColor,
          child: widget.child,
        ),
      ],
    );
  }
}
