import 'package:flutter_fintech_app/utilities/import.dart';

//page - 1
Widget onboardingPage1() {
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
                fontSize: getDeviceHeight(140), // because the text in vertical
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
Widget onboardingPage2() {
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
Widget onboardingPage3() {
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
Widget onboardingPage4() {
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
              ActionButton(
                isBorder: false,
                labelText: "Get Started.",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
