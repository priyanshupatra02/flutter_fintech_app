import 'package:flutter_fintech_app/utilities/import.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(140);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kAppBarColor,
      toolbarHeight: getDeviceHeight(130),
      title: SizedBox(
        height: getDeviceHeight(140),
        width: getDeviceWidth(340),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset("assets/icons/back.svg"),
            Text(
              title,
              style: kAppbarTitleText,
            ),
          ],
        ),
      ),
    );
  }
}
