import 'package:flutter_fintech_app/utilities/import.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: getDeviceHeight(70),
          width: getDeviceWidth(54),
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context)
                    .focusInDirection(TraversalDirection.right);
              }
            },
            onSaved: (pin1) {},
            decoration: InputDecoration(
              filled: true,
              fillColor: kIconBgColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: kSecondaryColor,
                ),
              ),
              hintText: "0",
              hintStyle: TextStyle(
                color: kPrimaryTextColor.withOpacity(0.3),
              ),
            ),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: getDeviceHeight(70),
          width: getDeviceWidth(54),
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context)
                    .focusInDirection(TraversalDirection.right);
              }
            },
            onSaved: (pin2) {},
            decoration: InputDecoration(
              filled: true,
              fillColor: kIconBgColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: kSecondaryColor,
                ),
              ),
              hintText: "0",
              hintStyle: TextStyle(
                color: kPrimaryTextColor.withOpacity(0.3),
              ),
            ),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: getDeviceHeight(70),
          width: getDeviceWidth(54),
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context)
                    .focusInDirection(TraversalDirection.right);
              }
            },
            onSaved: (pin3) {},
            decoration: InputDecoration(
              filled: true,
              fillColor: kIconBgColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: kSecondaryColor,
                ),
              ),
              hintText: "0",
              hintStyle: TextStyle(
                color: kPrimaryTextColor.withOpacity(0.3),
              ),
            ),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: getDeviceHeight(70),
          width: getDeviceWidth(54),
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context)
                    .focusInDirection(TraversalDirection.right);
              }
            },
            onSaved: (pin4) {},
            decoration: InputDecoration(
              filled: true,
              fillColor: kIconBgColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: kSecondaryColor,
                ),
              ),
              hintText: "0",
              hintStyle: TextStyle(
                color: kPrimaryTextColor.withOpacity(0.3),
              ),
            ),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
      ],
    );
  }
}
