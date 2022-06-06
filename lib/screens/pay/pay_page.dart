import 'package:flutter_fintech_app/utilities/import.dart';

class PayPage extends StatefulWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "pay all your bills\nat one place.",
        showBackButton: false,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const ProfilePage(),
            ),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: kHalfMiddleVertical,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: SideActionButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const CashbackPage(),
                      ),
                    );
                  },
                  isLeftCircularBorder: true,
                  leadingIcon: SvgPicture.asset(
                    "assets/icons/cashback.svg",
                    height: getDeviceHeight(12),
                    width: getDeviceWidth(12),
                  ),
                  trailingIcon: SvgPicture.asset(
                    "assets/icons/go-to-icon.svg",
                    height: getDeviceHeight(10),
                    width: getDeviceWidth(10),
                  ),
                  titleText: "cashback",
                  subtitleText: "${rupee}30",
                ),
              ),
              SizedBox(height: getDeviceHeight(25)),

              //your bills code starts here ->
              Container(
                padding: kSinglePad,
                height: getDeviceHeight(380),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: kPrimaryDarkGradientColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "your bills.",
                      style: kHeadingText,
                    ),
                    SizedBox(height: getDeviceHeight(20)),
                    SizedBox(
                      height: getDeviceHeight(260),
                      child: ListView.separated(
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return YourBillsStatus(
                            icon:
                                SvgPicture.asset("assets/social/jio-icon.svg"),
                            status: 'pending',
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(width: getDeviceWidth(25));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getDeviceHeight(25)),

              // code for rent & education starts here ->
              PayHistoryCategory(
                categoryName: "rent & education.",
                icon: SvgPicture.asset(
                  "assets/icons/maintenence.svg",
                  height: getDeviceHeight(45),
                  width: getDeviceWidth(60),
                ),
                iconLabel: "maintanence",
              ),
              SizedBox(height: getDeviceHeight(25)),

              // code for rent & education starts here ->
              PayHistoryCategory(
                categoryName: "telecom & recharges.",
                icon: SvgPicture.asset(
                  "assets/icons/mobile-recharge.svg",
                  height: getDeviceHeight(45),
                  width: getDeviceWidth(60),
                ),
                iconLabel: "mobiles recharge",
              ),
              SizedBox(height: getDeviceHeight(25)),
              // code for rent & education starts here ->
              PayHistoryCategory(
                categoryName: "household & more.",
                icon: SvgPicture.asset(
                  "assets/icons/electricity.svg",
                  height: getDeviceHeight(45),
                  width: getDeviceWidth(60),
                ),
                iconLabel: "electricity",
              ),
              SizedBox(height: getDeviceHeight(25)),

              // code for bottom side action buttons starts here ->
              Align(
                alignment: Alignment.centerRight,
                child: SideActionButton(
                  onTap: () {},
                  isLeftCircularBorder: true,
                  leadingIcon: SvgPicture.asset(
                    "assets/icons/autopay.svg",
                    height: getDeviceHeight(15),
                    width: getDeviceWidth(15),
                  ),
                  trailingIcon: SvgPicture.asset(
                    "assets/icons/go-to-icon.svg",
                    height: getDeviceHeight(10),
                    width: getDeviceWidth(10),
                  ),
                  titleText: "autopay settings.",
                  subtitleText: "always pay your bills on time",
                ),
              ),
              SizedBox(height: getDeviceHeight(25)),
              Align(
                alignment: Alignment.centerRight,
                child: SideActionButton(
                  onTap: () {},
                  isLeftCircularBorder: true,
                  leadingIcon: SvgPicture.asset(
                    "assets/icons/support.svg",
                    height: getDeviceHeight(15),
                    width: getDeviceWidth(15),
                  ),
                  trailingIcon: SvgPicture.asset(
                    "assets/icons/go-to-icon.svg",
                    height: getDeviceHeight(10),
                    width: getDeviceWidth(10),
                  ),
                  titleText: "support.",
                  subtitleText: "resolve all your concerns",
                ),
              ),
              SizedBox(height: getDeviceHeight(25)),
              Align(
                alignment: Alignment.centerRight,
                child: SideActionButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const PaymentHistory(),
                      ),
                    );
                  },
                  isLeftCircularBorder: true,
                  leadingIcon: SvgPicture.asset(
                    "assets/icons/payment-history.svg",
                    height: getDeviceHeight(15),
                    width: getDeviceWidth(15),
                  ),
                  trailingIcon: SvgPicture.asset(
                    "assets/icons/go-to-icon.svg",
                    height: getDeviceHeight(10),
                    width: getDeviceWidth(10),
                  ),
                  titleText: "payment history.",
                  subtitleText: "track all your payments",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
