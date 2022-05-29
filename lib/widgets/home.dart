import 'package:flutter_fintech_app/utilities/import.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomePage(),
          PayPage(),
          InvestmentPage(),
          CardsPage(),
          MonitoringPage(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: kSingleMiddleVertical,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: getDeviceWidth(320),
              height: getDeviceHeight(60),
              decoration: BoxDecoration(
                color: bottomNavBarColor,
                borderRadius: kHalfCurve,
              ),
              child: Row(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
