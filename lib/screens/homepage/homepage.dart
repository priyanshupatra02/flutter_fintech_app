import 'package:flutter_fintech_app/utilities/import.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String walletBalance = "20,445";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
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
                  style: kAppbarTitleText,
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: kSinglePad,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //wallet balance column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/icons/wallet.svg",
                    height: getDeviceHeight(55),
                    width: getDeviceWidth(55),
                  ),
                  SizedBox(height: getDeviceHeight(5)),
                  Text(
                    "Wallet Balance.",
                    style: categoryHeadingStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        rupee,
                        style: GoogleFonts.poppins(
                          fontSize: getDeviceWidth(15),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: getDeviceWidth(5)),
                      Text(
                        walletBalance,
                        style: GoogleFonts.poppins(
                          fontSize: getDeviceWidth(25),
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: getDeviceHeight(45)),
              _buildFavoriteMenu(),
              SizedBox(height: getDeviceHeight(45)),
              // send/receive money columns
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildPayCards(
                    "send\nmoney",
                    SvgPicture.asset("assets/icons/send-money.svg"),
                  ),
                  _buildPayCards(
                    "receive\nmoney",
                    SvgPicture.asset("assets/icons/receive-money.svg"),
                  ),
                  _buildPayCards(
                    "add\nmoney",
                    SvgPicture.asset("assets/icons/add-money-to-wallet.svg"),
                  ),
                ],
              ),
              SizedBox(height: getDeviceHeight(45)),

              // recent transaction starts here ->
              //TODO: Make it dynamic
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Transactions",
                        style: categoryHeadingStyle,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "see all",
                          style: GoogleFonts.poppins(
                            color: kSecondaryLightTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getDeviceHeight(15)),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return CustomListTile(
                        icon: SvgPicture.asset("assets/social/figma-logo.svg"),
                        titleText: "Figma",
                        subtitleText: "February 1, 2022",
                        deductedMoney: "-₹330",
                        category: "subscription",
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getDeviceHeight(25),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// // favorite column
Widget _buildFavoriteMenu() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Favourites.",
        style: categoryHeadingStyle,
      ),
      SizedBox(height: getDeviceHeight(20)),
      SizedBox(
        height: getDeviceHeight(80),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            //TODO: add a column for username
            return Column(
              children: [
                CircleAvatar(
                  radius: getDeviceWidth(25),
                  backgroundImage: NetworkImage(
                    "https://picsum.photos/200/300?random=$index",
                  ),
                ),
                SizedBox(height: getDeviceHeight(10)),
                // TODO: Add usernames to the avatars
                Text(
                  "Names",
                  style: kFavouriteNames,
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: (getDeviceWidth(15)));
          },
        ),
      ),
    ],
  );
}

// send/receive money cards
Widget _buildPayCards(String text, Widget icon) {
  return Container(
    padding: kQuatHalfPad,
    width: getDeviceWidth(100),
    height: getDeviceHeight(110),
    decoration: BoxDecoration(
      color: kPrimaryBgColor,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(
          color: kShadowPrimaryDeep,
          blurRadius: 10,
          offset: Offset(1, 3),
          inset: true,
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        icon,
        const SizedBox(height: 10),
        Text(text),
      ],
    ),
  );
}
