import 'package:flutter_fintech_app/utilities/import.dart';





class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController();

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
        controller: pageController,
        children: [
          onboardingPage1(),
          onboardingPage2(),
          onboardingPage3(),
          onboardingPage4(),
        ],
      ),
      bottomSheet: Padding(
        padding: kQuatPad / 2,
        child: SizedBox(
          height: getDeviceHeight(60),
          child: Center(
            child: SmoothPageIndicator(
              onDotClicked: (index) => pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.decelerate,
              ),
              controller: pageController,
              count: 4,
              effect: SwapEffect(
                type: SwapType.yRotation,
                activeDotColor: kSecondaryColor,
                dotColor: kPageIndicator,
              ),
            ),
          ),
        ),
      ),
    );
  }


}
