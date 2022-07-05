import 'package:flutter_fintech_app/utilities/import.dart';

class AddMoneyToWallet extends StatefulWidget {
  const AddMoneyToWallet({Key? key}) : super(key: key);

  @override
  State<AddMoneyToWallet> createState() => _AddMoneyToWalletState();
}

class _AddMoneyToWalletState extends State<AddMoneyToWallet> {
  int? selectedValue = 0;
  String sendMoney = "1,400";
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
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Home(),
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
                "adding money to wallet.",
                style: bodyText,
              ),
              SizedBox(
                height: getDeviceHeight(40),
              ),

              // profile icon
              SvgPicture.asset(
                "assets/icons/wallet.svg",
                height: getDeviceHeight(80),
                width: getDeviceWidth(80),
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
                  //TODO: Add text form field below
                  Text(
                    sendMoney,
                    style: kMoneytext,
                  ),
                ],
              ),

              // "what's this for" icon
              //TODO: add text field below
            ],
          ),
        ),
      ),
      bottomSheet: BottomSheetCard(
        height: getDeviceHeight(250),
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
                        child: Text(
                          "check balance",
                          style: GoogleFonts.poppins(
                            fontSize: getDeviceWidth(12),
                            fontWeight: FontWeight.w500,
                            color: kSecondaryLightTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              onChanged: (value) => setState(() => selectedValue = value),
            ),
            SizedBox(
              height: getDeviceHeight(20),
            ),
            Align(
              alignment: Alignment.center,
              child: ActionButton(
                isBorder: false,
                labelText: "add money.",
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
