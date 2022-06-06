import 'package:flutter_fintech_app/utilities/import.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  final String title;
  final Function()? onTap;
  final bool showBackButton;
  final Color? backgroundColor;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.onTap,
    required this.showBackButton,
    this.backgroundColor = kAppBarColor,
  }) : super(key: key);

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(140);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2,
        backgroundColor: backgroundColor,
        toolbarHeight: getDeviceHeight(130),
        title: SizedBox(
          height: getDeviceHeight(140),
          width: getDeviceWidth(340),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //TODO: add gesture detector to the icon below
              showBackButton
                  ? GestureDetector(
                      onTap: onTap,
                      child: SvgPicture.asset("assets/icons/back.svg"),
                    )
                  : CircleAvatar(
                      radius: getDeviceWidth(22),
                      backgroundColor: kSecondaryColor,
                      child: GestureDetector(
                        onTap: onTap,
                        child: CircleAvatar(
                          radius: getDeviceWidth(20),
                          backgroundImage: const NetworkImage(
                            "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
                          ),
                        ),
                      ),
                    ),
              Text(
                title,
                style: kAppbarTitleText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
