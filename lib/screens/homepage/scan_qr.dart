import 'package:flutter_fintech_app/utilities/import.dart';

class ScanQrPage extends StatefulWidget {
  const ScanQrPage({Key? key}) : super(key: key);

  @override
  State<ScanQrPage> createState() => _ScanQrPageState();
}

class _ScanQrPageState extends State<ScanQrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'scan QR.',
        showBackButton: true,
        onTap: () {
          Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const HomePage(),
            ),
          );
        },
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: getDeviceHeight(100)),
            Text(
              "Scan any QR code to get 70%  discount.",
              style: GoogleFonts.poppins(
                fontSize: getDeviceWidth(15),
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500, //semi-bold
              ),
            ),
            SizedBox(height: getDeviceHeight(60)),
            GestureDetector(
              // TODO: on tap function
              onTap: () {},
              child: SvgPicture.asset(
                "assets/images/qr-code.svg",
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: kSingleMiddlePad,
        color: kTileColor,
        height: getDeviceHeight(100),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              // TODO: on tap function
              onTap: () {},
              child: Container(
                alignment: Alignment.topCenter,
                height: getDeviceHeight(40),
                width: getDeviceWidth(60),
                decoration: BoxDecoration(
                  border: whiteBorder,
                ),
                child: SvgPicture.asset(
                  "assets/icons/gallery.svg",
                  height: getDeviceHeight(35),
                  width: getDeviceWidth(50),
                ),
              ),
            ),
            GestureDetector(
              // TODO: on tap function
              onTap: () {},
              child: Container(
                alignment: Alignment.topCenter,
                height: getDeviceHeight(40),
                width: getDeviceWidth(60),
                decoration: BoxDecoration(
                  border: whiteBorder,
                ),
                child: SvgPicture.asset(
                  "assets/icons/flashlight.svg",
                  height: getDeviceHeight(35),
                  width: getDeviceWidth(50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
