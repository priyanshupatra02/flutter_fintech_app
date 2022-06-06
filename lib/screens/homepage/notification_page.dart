import 'package:flutter_fintech_app/utilities/import.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "notifications.",
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/no-notification.svg",
            ),
            SizedBox(height: getDeviceHeight(40)),
            Text(
              "No notifications yet.",
              style: bodyText,
            ),
          ],
        ),
      ),
    );
  }
}
