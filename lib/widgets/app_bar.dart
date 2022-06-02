import 'package:flutter_fintech_app/utilities/import.dart';

AppBar _buildAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: kAppBarColor,
    toolbarHeight: getDeviceHeight(130),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // For border around profile pic
        CircleAvatar(
          radius: getDeviceWidth(27),
          backgroundColor: kSecondaryColor,
          child: CircleAvatar(
            radius: getDeviceWidth(25),
            backgroundImage: const NetworkImage(
              "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
            ),
          ),
        ),
        SizedBox(
          width: getDeviceWidth(25),
        ),
        // username & upi id of the user
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "jean",
              style: GoogleFonts.poppins(
                fontSize: getDeviceWidth(25),
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/logos/axis-bank-logo.svg",
                  height: getDeviceHeight(10),
                  width: getDeviceWidth(10),
                ),
                SizedBox(width: getDeviceWidth(5)),
                Text(
                  "jeanpaul@okaxis",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
        // qr scanner & notification icon
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/qr-code-scan.svg",
            height: getDeviceHeight(20),
            width: getDeviceWidth(20),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/notification.svg",
            height: getDeviceHeight(25),
            width: getDeviceWidth(25),
          ),
        ),
      ],
    ),
  );
}