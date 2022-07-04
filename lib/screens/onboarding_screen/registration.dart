import 'package:flutter_fintech_app/utilities/import.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  //TextFormField state
  final _formKey = GlobalKey<FormState>();

  // text controller
  final _mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // for checkbox
    bool isChecked = false;
    //for using it in multiple registration screens
    Widget? scaffoldBgImage = Image.asset(
      "assets/images/hello-image.png",
      scale: getDeviceWidth(1.6),
    );
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: scaffoldBgImage,
        ),
      ),
      bottomSheet: BottomSheetCard(
        height: getDeviceHeight(550),
        padding: kSinglePad,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                "assets/icons/back.svg",
                fit: BoxFit.scaleDown,
              ),
              SizedBox(height: getDeviceHeight(20)),
              Text(
                "give us your\nmobile number.",
                style: kBottomSheetHeading,
              ),
              SizedBox(height: getDeviceHeight(2)),
              Text(
                "to apply, we need your mobile number linked to your credit card.",
                style: kPrimarySubtitleText,
              ),
              SizedBox(height: getDeviceHeight(20)),
              Form(
                key: _formKey,
                child: TextFormField(
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      return null;
                    } else {
                      return "Please enter mobile number.";
                    }
                  },
                  enableSuggestions: true,
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  controller: _mobileNumberController,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: "enter mobile number",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: getDeviceWidth(18),
                      letterSpacing: getDeviceWidth(0.5),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryTextColor.withOpacity(0.2),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        width: 1.5,
                        color: kSecondaryLightColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        width: 1.5,
                        color: kSecondaryLightColor.withOpacity(0.5),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(
                        width: 1.5,
                        color: kSecondaryLightColor,
                      ),
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Text(
                        "+91",
                        style: GoogleFonts.poppins(
                          color: kPrimaryTextColor,
                          fontSize: getDeviceWidth(15),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "please, make sure this SIM is present in your device.",
                style: kSecondarySubtitleText,
              ),
              SizedBox(height: getDeviceHeight(20)),
              Checkbox(
                checkColor: kSecondaryColor,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              // below is the code for terms & conditions
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          "you agree to allow us to check your credit information with ",
                      style: kPrimarySubtitleText,
                    ),
                    TextSpan(
                      // recognizer: TapGestureRecognizer(),
                      text: "RBI approved credit bureaus.",
                      style: GoogleFonts.poppins(
                        fontSize: getDeviceWidth(10),
                        letterSpacing: getDeviceWidth(0.5),
                        fontWeight: FontWeight.w600,
                        color: kSecondaryLightTextColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getDeviceHeight(20)),
              Text(
                "we need to check if you are a credit card holder and are\nabove our accepted credit score threshold. It won't impact\nyour credit score.",
                style: kPrimarySubtitleText,
              ),
              SizedBox(height: getDeviceHeight(30)),
              Align(
                alignment: Alignment.center,
                child: isChecked
                    ? ActionButton(
                        minWidth: getDeviceWidth(250),
                        minHeight: getDeviceHeight(50),
                        labelText: "Agree & Continue",
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }
                          //TODO: Add a navigator below ->
                          print("success");
                        },
                      )
                    : Opacity(
                        opacity: 0.5,
                        child: ActionButton(
                          minWidth: getDeviceWidth(250),
                          minHeight: getDeviceHeight(50),
                          labelText: "Agree & Continue",
                          onPressed: () {
                            setState(() {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/snackbar-info-icon.svg",
                                      ),
                                      SizedBox(width: getDeviceWidth(10)),
                                      Text(
                                        "Please agree to the terms & conditions.",
                                        style: kSnackBarMessage,
                                      ),
                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentSnackBar();
                                          });
                                        },
                                        child: SvgPicture.asset(
                                          "assets/icons/close-snackbar.svg",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                          },
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
