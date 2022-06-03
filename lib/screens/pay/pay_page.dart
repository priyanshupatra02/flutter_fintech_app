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
      appBar: const CustomAppBar(
        title: "pay all your bills\nat one place.",
      ),
      body: SingleChildScrollView(
        child: Container(
          // it is the bg container
          //TODO: remove this container later
          padding: kHalfMiddleVertical,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: SideActionButton(
                  height: getDeviceHeight(65),
                  width: getDeviceWidth(180),
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
              SizedBox(height: getDeviceHeight(20)),

              //your bills code starts here ->
              Container(
                padding: kSinglePad,
                height: getDeviceHeight(350),
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
              Container(
                padding: kSinglePad,
                height: getDeviceHeight(220),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: kPrimaryDarkGradientColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "rent & education.",
                      style: kHeadingText,
                    ),
                    SizedBox(height: getDeviceHeight(20)),

                    //List of icons
                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                height: getDeviceHeight(90),
                                width: getDeviceWidth(90),
                                decoration: BoxDecoration(
                                  border: whiteBorder,
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/maintenence.svg",
                                  height: getDeviceHeight(70),
                                  width: getDeviceWidth(80),
                                ),
                              ),
                              SizedBox(
                                height: getDeviceHeight(5),
                              ),
                              Text(
                                "maintanence",
                                style: iconLabelText,
                              ),
                            ],
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
            ],
          ),
        ),
      ),
    );
  }
}
