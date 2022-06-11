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
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.zero,
        children: [
          _buildTop(),
          Column(
            children: [
              Text(
                "Jean Olsen",
                style: GoogleFonts.poppins(
                  fontSize: getDeviceWidth(30),
                  letterSpacing: getDeviceWidth(0.5),
                  fontWeight: FontWeight.w600, // light
                ),
              ),
              Text(
                "+91 6370237272",
                style: GoogleFonts.poppins(
                  fontSize: getDeviceWidth(15),
                  letterSpacing: getDeviceWidth(0.75),
                  fontWeight: FontWeight.w300, // light
                ),
              ),
            ],
          ),
          SizedBox(height: getDeviceHeight(50)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SideActionButton(
                isLeftCircularBorder: true,
                leadingIcon:
                    SvgPicture.asset("assets/icons/refer-and-earn.svg"),
                trailingIcon: SvgPicture.asset("assets/icons/go-to-icon.svg"),
                titleText: "refer & earn",
                subtitleText:
                    "assured cash back for bringing\nfriends to CRED.",
                onTap: () {},
              ),
              SizedBox(height: getDeviceHeight(20)),
              SideActionButton(
                isLeftCircularBorder: true,
                leadingIcon: SvgPicture.asset("assets/icons/own-qr-codes.svg"),
                trailingIcon: SvgPicture.asset("assets/icons/go-to-icon.svg"),
                titleText: "my QR codes",
                subtitleText: "view your QR code",
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: getDeviceHeight(40)),
        ],
      ),
    );
  }

  Widget _buildAppBar() => Container(
        color: kTileColor,
        height: appBarHeight,
        child: SafeArea(
          child: Padding(
            padding: kHalfHorizontal,
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
