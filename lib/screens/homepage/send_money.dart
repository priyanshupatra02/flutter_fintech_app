import 'package:flutter_fintech_app/utilities/import.dart';

class SendMoneyPage extends StatefulWidget {
  const SendMoneyPage({Key? key}) : super(key: key);

  @override
  State<SendMoneyPage> createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage> {
  int? selectedValue = 0;
  String sendMoney = "2,099";
  final dropDownItems = [
    "Axis .****8354",
    "State Bank .****3827",
    "UCO .****8764",
    "ICICI .****1093",
  ];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const ShowContacts(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: kSinglePad,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SvgPicture.asset("assets/icons/back.svg"),
                    ),
                  ),
                ),
                Text(
                  "send money to Elina.",
                  style: bodyText,
                ),
                SizedBox(
                  height: getDeviceHeight(40),
                ),

                // profile icon
                DashedCircle(
                  dashes: getDeviceWidth(15),
                  color: kAvatarBorderColor,
                  gapSize: getDeviceWidth(5),
                  strokeWidth: getDeviceWidth(1.0),
                  child: CircleAvatar(
                    backgroundColor: kAvatarBorderColor,
                    radius: getDeviceWidth(53),
                    child: CircleAvatar(
                      radius: getDeviceWidth(50),
                      backgroundImage: const NetworkImage(
                        "https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getDeviceHeight(50),
                ),
                Text(
                  "enter amount",
                  style: bodyText,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      rupee,
                      style: GoogleFonts.poppins(
                        fontSize: getDeviceWidth(15),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: getDeviceWidth(5)),
                    //TODO: ADd text form field below
                    Text(
                      sendMoney,
                      style: kMoneytext,
                    ),
                  ],
                ),

                // "what's this for" icon
                //TODO: add text field below
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getDeviceHeight(20),
                      vertical: getDeviceWidth(15)),
                  decoration: BoxDecoration(
                    borderRadius: kHalfCurve,
                    color: kSecondaryLightColor.withOpacity(0.5),
                  ),
                  child: FittedBox(
                    child: Text(
                      "what's this for?",
                      style: GoogleFonts.poppins(
                        fontSize: getDeviceWidth(15),
                        letterSpacing: getDeviceWidth(0.5),
                        fontWeight: FontWeight.w500, //medium text
                        color: kSecondaryColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: BottomSheetCard(
        height: getDeviceHeight(270),
        padding: kSinglePad,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "pay using",
              style: kHeadingText,
            ),
            SizedBox(height: getDeviceHeight(10)),
            RadioListTile<int>(
              value: 1,
              groupValue: selectedValue,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "bank account",
                    style: contactNameTextStyle,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/logos/axis-bank-logo-2.svg"),
                      SizedBox(width: getDeviceWidth(10)),
                      SizedBox(
                        width: getDeviceWidth(110),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            dropdownColor: kIconBgColor,
                            hint: Text(
                              "Select bank account",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                fontSize: getDeviceWidth(12),
                                fontWeight: FontWeight.w400,
                                color: kDropDownItemColor.withOpacity(0.5),
                              ),
                            ),
                            isExpanded: true,
                            value: value,
                            style: GoogleFonts.poppins(
                              fontSize: getDeviceWidth(12),
                              fontWeight: FontWeight.w500,
                              color: kDropDownItemColor,
                            ),
                            items: dropDownItems
                                .map(buildDropDownMenuItem)
                                .toList(),
                            onChanged: (value) {
                              setState(
                                () {
                                  this.value = value;
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: getDeviceWidth(10)),
                      TextButton(
                        //TODO: remove splash effect
                        onPressed: () {},
                        child: const Text(
                          "check balance",
                          style: TextStyle(color: kSecondaryLightTextColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              onChanged: (value) => setState(() => selectedValue = value),
            ),
            RadioListTile<int>(
              value: 2,
              groupValue: selectedValue,
              title: Text(
                "wallet",
                style: contactNameTextStyle,
              ),
              subtitle: Text(
                "${rupee} 2,777",
                style: GoogleFonts.poppins(
                  fontSize: getDeviceWidth(12),
                  fontWeight: FontWeight.w500,
                  color: kDropDownItemColor,
                ),
              ),
              onChanged: (value) => setState(() => selectedValue = value),
            ),
            Align(
              alignment: Alignment.center,
              child: ActionButton(
                isBorder: false,
                labelText: "send money.",
                enableShadow: false,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildDropDownMenuItem(String item) =>
      DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );
}
