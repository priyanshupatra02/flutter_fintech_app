import 'package:flutter_fintech_app/utilities/import.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
          _buildPage1(),
          _buildPage2(),
          _buildPage3(),
          _buildPage4(),
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

  //page - 1
  Widget _buildPage1() {
    return Stack(
      children: [
        Image.asset(
          "assets/images/onboarding-image-1.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                "fintech.",
                style: GoogleFonts.poppins(
                  fontSize:
                      getDeviceHeight(140), // because the text in vertical
                  fontWeight: FontWeight.bold,
                  color: kPrimaryTextColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  //page - 2
  Widget _buildPage2() {
    return Stack(
      children: [
        Image.asset(
          "assets/images/onboarding-image-2.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Lottie.asset(
                  "assets/lottie/97205-trident-payment-card.json",
                  alignment: Alignment.center,
                ),
              ),
              Expanded(
                flex: 1,
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontSize: getDeviceWidth(30),
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: "don't let your\n"),
                      TextSpan(
                        text: "credit card ",
                        style: TextStyle(
                          color: Color(0xFF006CFF),
                        ),
                      ),
                      TextSpan(text: "turn evil."),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //page - 3
  Widget _buildPage3() {
    return Stack(
      children: [
        Image.asset(
          "assets/images/onboarding-image-3.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Lottie.asset(
                  "assets/lottie/lf20_0jspf3y6.json",
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: getDeviceWidth(25),
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                          text: "do you keep forgetting\nabout paying\n",
                          style: TextStyle(
                            height: 1.5,
                          ),
                        ),
                        TextSpan(
                          text: "bills ?",
                          style: TextStyle(
                            color: const Color(0xFF006CFF),
                            fontSize: getDeviceWidth(60),
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //page - 4
  Widget _buildPage4() {
    return Stack(
      children: [
        Image.asset(
          "assets/images/onboarding-image-4.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Padding(
            padding: kSingleVertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Lottie.asset(
                    "assets/lottie/94518-ep-expenses-and-movements.json"),
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "don't worry\n",
                          style: TextStyle(
                            color: const Color(0xFF006CFF),
                            fontSize: getDeviceWidth(50),
                            height: 0.5,
                          ),
                        ),
                        TextSpan(
                          text: "we got you.",
                          style: TextStyle(
                            fontSize: getDeviceWidth(25),
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //TODO: Remove sized box & used alignment instead
                Container(
                  padding: kHalfMiddleHorizontal,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: kShadowPrimaryLight,
                        blurRadius: 35,
                        offset: Offset(0, 7), // changes position of shadow
                      ),
                    ],
                    gradient: kSecondaryGradientColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(getDeviceWidth(255), getDeviceHeight(60)),
                      alignment: Alignment.center,
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Get started.",
                      style: buttonText,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
