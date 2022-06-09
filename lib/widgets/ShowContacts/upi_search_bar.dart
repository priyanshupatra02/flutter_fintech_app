import 'package:flutter_fintech_app/utilities/import.dart';

class UpiSearchBar extends StatelessWidget {
  const UpiSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kQuatPad,
      alignment: Alignment.center,
      height: getDeviceHeight(65),
      decoration: BoxDecoration(
        borderRadius: kQuatCurve,
        color: kTileColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: getDeviceWidth(15.0)),
        child: TextField(
          cursorColor: kSecondaryColor.withOpacity(0.5),
          decoration: InputDecoration(
            hintText: "Enter upi id",
            hintStyle: hintTextStyle,
            suffixIcon: Container(
              padding: kQuatHalfPad,
              decoration: BoxDecoration(
                borderRadius: kQuatCurve,
                color: kIconBgColor,
              ),
              child: GestureDetector(
                //TODO: Declare ontap
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/icons/search.svg",
                  color: kSecondaryColor.withOpacity(0.5),
                ),
              ),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
