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
      body: Container(
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
              padding: EdgeInsets.only(left: 30, top: 30),
              height: getDeviceHeight(230),
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
                    height: getDeviceHeight(80),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        //TODO: add a column for username
                        return 
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: (getDeviceWidth(15)));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
