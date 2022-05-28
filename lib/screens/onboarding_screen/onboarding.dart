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
      bottomSheet: SizedBox(
        height: getDeviceHeight(80),
        child: Center(
          child: SmoothPageIndicator(
            controller: pageController,
            count: 4,
            effect: SwapEffect(
              type: SwapType.yRotation,
              // jumpScale: 5,
              activeDotColor: kSecondaryColor,
              dotColor: kPageIndicator,
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
          fit: BoxFit.contain,
        ),
        //TODO: "fintech." text
        SafeArea(
          child: Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                "fintech.",
                style: GoogleFonts.poppins(
                  fontSize: getDeviceWidth(150),
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
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Column(
            children: [
              Lottie.asset("assets/lottie/97205-trident-payment-card.json"),
              RichText(
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
              Lottie.asset("assets/lottie/lf20_0jspf3y6.json"),
              SizedBox(height: getDeviceHeight(30)),
              RichText(
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
              )
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
          child: Column(
            children: [
              Lottie.asset(
                  "assets/lottie/94518-ep-expenses-and-movements.json"),
              SizedBox(height: getDeviceHeight(30)),
              // RichText(
              //   text: TextSpan(
              //     style: GoogleFonts.poppins(
              //
              //       fontWeight: FontWeight.bold,
              //     ),
              //     children: <TextSpan>[
              //       TextSpan(
              //         text: "don't worry\n",
              //         style: TextStyle(
              //             color: const Color(0xFF006CFF),
              //             fontSize: getDeviceWidth(50),
              //             height: 0.5),
              //       ),
              //       const TextSpan(
              //         text: "we got you.",
              //         style: TextStyle(
              //fontSize: getDeviceWidth(25),
              //           height: 1.3,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              // RichText(
              //   text: TextSpan(
              //     style: GoogleFonts.poppins(
              //
              //       fontWeight: FontWeight.bold,
              //     ),
              //     children: <TextSpan>[
              //       TextSpan(
              //         text: "time\n",
              //         style: TextStyle(
              //           color: const Color(0xFF006CFF),
              //           fontSize: getDeviceWidth(50),
              //           height: 0.5,
              //         ),
              //       ),
              //       const TextSpan(
              //         text: "to organise your\nstuffs.",
              //         style: TextStyle(
              // fontSize: getDeviceWidth(30),
              //           height: 1.3,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              // RichText(
              //   text: TextSpan(
              //     style: GoogleFonts.poppins(
              //       fontWeight: FontWeight.bold,
              //     ),
              //     children: <TextSpan>[
              //       TextSpan(
              //         text: "start tracking\nyour expenses\n",
              //         style: TextStyle(
              //           fontSize: getDeviceWidth(25),
              //           height: 1.3,
              //         ),
              //       ),
              //       TextSpan(
              //         text: "right now.",
              //         style: TextStyle(
              //           color: const Color(0xFF006CFF),
              //           fontSize: getDeviceWidth(60),
              //           height: 1.3,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
