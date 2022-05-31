import 'package:flutter_fintech_app/utilities/import.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
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
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Colors.transparent,
        ),
        child: NavigationBar(
          height: getDeviceHeight(75),
          backgroundColor: bottomNavBarColor,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: index,
          onDestinationSelected: (index) {
            setState(() {
              this.index = index;
            });
            pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOutQuad,
            );
          },
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset(
                "assets/icons/unselected/home-unselected.svg",
              ),
              selectedIcon: SvgPicture.asset(
                "assets/icons/selected/home-selected.svg",
              ),
              label: "Home",
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                "assets/icons/unselected/pay-unselected.svg",
              ),
              selectedIcon: SvgPicture.asset(
                "assets/icons/selected/pay-selected.svg",
              ),
              label: "Pay",
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                "assets/icons/unselected/investment-unselected.svg",
              ),
              selectedIcon: SvgPicture.asset(
                "assets/icons/selected/investment-selected.svg",
              ),
              label: "Investment",
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                "assets/icons/unselected/cards-unselected.svg",
              ),
              selectedIcon: SvgPicture.asset(
                "assets/icons/selected/cards-selected.svg",
              ),
              label: "Cards",
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                "assets/icons/unselected/monitoring-unselected.svg",
              ),
              selectedIcon: SvgPicture.asset(
                "assets/icons/selected/monitoring-selected.svg",
              ),
              label: "Monitor",
            ),
          ],
        ),
      ),
    );
  }
}
