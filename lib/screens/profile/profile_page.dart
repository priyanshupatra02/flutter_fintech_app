import 'package:flutter_fintech_app/utilities/import.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double appBarHeight = getDeviceHeight(150);
  final double profilePictureHeight = getDeviceHeight(50);
  // final topHeight = appBarHeight - profilePictureHeight;
  @override
  Widget build(BuildContext context) {
    const String username = "Jean Olsen";
    const String phoneNumber = "+91 6370237272";
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.zero,
        children: [
          Column(
            children: [
              _buildTop(),
              Text(
                username,
                style: GoogleFonts.poppins(
                  fontSize: getDeviceWidth(30),
                  letterSpacing: getDeviceWidth(0.5),
                  fontWeight: FontWeight.w600, // light
                ),
              ),
              Text(
                phoneNumber,
                style: GoogleFonts.poppins(
                  fontSize: getDeviceWidth(15),
                  letterSpacing: getDeviceWidth(0.75),
                  fontWeight: FontWeight.w300, // light
                ),
              ),
              SizedBox(height: getDeviceHeight(50)),
              Align(
                alignment: Alignment.centerRight,
                child: SideActionButton(
                  isLeftCircularBorder: true,
                  leadingIcon:
                      SvgPicture.asset("assets/icons/refer-and-earn.svg"),
                  trailingIcon: SvgPicture.asset("assets/icons/go-to-icon.svg"),
                  titleText: "refer & earn",
                  subtitleText:
                      "assured cash back for bringing\nfriends to CRED.",
                  onTap: () {},
                ),
              ),
              SizedBox(height: getDeviceHeight(20)),
              Align(
                alignment: Alignment.centerRight,
                child: SideActionButton(
                  isLeftCircularBorder: true,
                  leadingIcon:
                      SvgPicture.asset("assets/icons/own-qr-codes.svg"),
                  trailingIcon: SvgPicture.asset("assets/icons/go-to-icon.svg"),
                  titleText: "my QR codes",
                  subtitleText: "view your QR code",
                  onTap: () {},
                ),
              ),
              SizedBox(height: getDeviceHeight(30)),
              Padding(
                padding: kSinglePad,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Settings & Preferences",
                        style: categoryHeadingStyle,
                      ),
                    ),

                    // code for settings & preferences starts here ->
                    _buildGradientCards(
                      height: getDeviceHeight(180),
                      width: getDeviceWidth(400),
                      padding: kSinglePad,
                      margin: kHalfMiddleVertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "bank account",
                                style: kHeadingText,
                              ),
                              const Spacer(),
                              Text(
                                "+2 more",
                                style: secondaryListSubtitleText,
                              ),
                            ],
                          ),

                          // innner bank card
                          SizedBox(
                            height: getDeviceHeight(100),
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return const BuildDebitCard(
                                  isPrimary: false,
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(width: getDeviceWidth(10));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    _buildGradientCards(
                      width: getDeviceWidth(400),
                      padding: kSinglePad,
                      margin: kHalfMiddleVertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/credit-score.svg"),
                          SizedBox(width: getDeviceWidth(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "credit score - 738",
                                style: secondaryListTitleText,
                              ),
                              Text(
                                "refresh your credit report to get\ninsights and track your\ncredit standing.",
                                style: secondaryListSubtitleText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    _buildGradientCards(
                      width: getDeviceWidth(400),
                      padding: kSinglePad,
                      margin: kHalfMiddleVertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/language.svg"),
                          SizedBox(width: getDeviceWidth(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "languages",
                                style: secondaryListTitleText,
                              ),
                              Text(
                                "chosen language - english\nyou can change it later.",
                                style: secondaryListSubtitleText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    _buildGradientCards(
                      width: getDeviceWidth(400),
                      padding: kSinglePad,
                      margin: kHalfMiddleVertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/address.svg"),
                          SizedBox(width: getDeviceWidth(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "manage address",
                                style: secondaryListTitleText,
                              ),
                              Text(
                                "At/po-Bhimpura, Balasore.\nOdisha\npin-756003",
                                style: secondaryListSubtitleText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    _buildGradientCards(
                      width: getDeviceWidth(400),
                      padding: kSinglePad,
                      margin: kHalfMiddleVertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/change-pin.svg"),
                          SizedBox(width: getDeviceWidth(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "change pin",
                                style: secondaryListTitleText,
                              ),
                              Text(
                                "secure your account with a\nstrong password.",
                                style: secondaryListSubtitleText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    _buildGradientCards(
                      width: getDeviceWidth(400),
                      padding: kSinglePad,
                      margin: kHalfMiddleVertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/screen-lock.svg"),
                          SizedBox(width: getDeviceWidth(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "screen lock",
                                style: secondaryListTitleText,
                              ),
                              Text(
                                "biometric & screen lock\ndouble the security.\n",
                                style: secondaryListSubtitleText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    _buildGradientCards(
                      width: getDeviceWidth(400),
                      padding: kSinglePad,
                      margin: kHalfMiddleVertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/blocked-contacts.svg"),
                          SizedBox(width: getDeviceWidth(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "blocked contacts",
                                style: secondaryListTitleText,
                              ),
                              Text(
                                "now can choose whom to\nsend & receive money.",
                                style: secondaryListSubtitleText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    _buildGradientCards(
                      width: getDeviceWidth(400),
                      padding: kSinglePad,
                      margin: kHalfMiddleVertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/help-and-support.svg"),
                          SizedBox(width: getDeviceWidth(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "help & support",
                                style: secondaryListTitleText,
                              ),
                              Text(
                                "we are there for you 24x7.\ncontact us for all transaction\nrelated issues.",
                                style: secondaryListSubtitleText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    _buildGradientCards(
                      width: getDeviceWidth(400),
                      padding: kSinglePad,
                      margin: kHalfMiddleVertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/about.svg"),
                          SizedBox(width: getDeviceWidth(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "about fintech",
                                style: secondaryListTitleText,
                              ),
                              Text(
                                "read about terms & conditions.\nconcerned about your privacy.\ndon't worry we will keep you covered.",
                                style: secondaryListSubtitleText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    _buildGradientCards(
                      width: getDeviceWidth(400),
                      padding: kSinglePad,
                      margin: kHalfMiddleVertical,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              "assets/icons/deactive-account-button.svg"),
                          SizedBox(width: getDeviceWidth(20)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "deactivate account",
                                style: secondaryListTitleText,
                              ),
                              Text(
                                "Let's us know why you want to\ndeactivate your account.",
                                style: secondaryListSubtitleText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getDeviceHeight(40)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGradientCards({
    final double? height,
    final double? width,
    final AlignmentGeometry? alignment,
    final EdgeInsetsGeometry? padding,
    final EdgeInsetsGeometry? margin,
    final Widget? child,
  }) =>
      Container(
        alignment: alignment,
        padding: padding,
        margin: margin,
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: kPrimaryDarkGradientColor,
          borderRadius: kQuatCurve,
        ),
        child: child,
      );

  Widget _buildAppBar() => Container(
        color: kTileColor,
        height: appBarHeight,
        child: SafeArea(
          child: Padding(
            padding: kHalfPad,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/back.svg"),
                Text("profile", style: kAppbarTitleText),
                SvgPicture.asset("assets/icons/menu.svg"),
              ],
            ),
          ),
        ),
      );

  Widget _buildProfile() => Positioned(
        top: appBarHeight - profilePictureHeight,
        child: CircleAvatar(
          radius: profilePictureHeight + 3,
          backgroundColor: kSecondaryColor,
          child: CircleAvatar(
            radius: profilePictureHeight,
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1623039497550-c4f2ccc7b875?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
            ),
          ),
        ),
      );
  Widget _buildTop() => Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: getDeviceHeight(80)),
            child: _buildAppBar(),
          ),
          _buildProfile(),
        ],
      );
}
