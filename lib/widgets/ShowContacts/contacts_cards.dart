import 'package:flutter_fintech_app/utilities/import.dart';

class ContactsCard extends StatelessWidget {
  const ContactsCard({
    Key? key,
    required this.contacts,
  }) : super(key: key);

  final List<Contact>? contacts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: kSecondaryLightColor,
          height: getDeviceHeight(20),
          thickness: 3,
          indent: getDeviceWidth(150),
          endIndent: getDeviceWidth(150),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: getDeviceWidth(15),
            vertical: getDeviceHeight(20),
          ),
          height: getDeviceHeight(550),
          decoration: BoxDecoration(
            color: kTileColor,
            borderRadius: kHalfCurve,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    "Choose contacts",
                    style: bodyText,
                  ),
                  SizedBox(width: getDeviceWidth(20)),
                  SvgPicture.asset("assets/icons/go-to-icon.svg"),
                ],
              ),
              (contacts == null)
                  ? Center(
                      child: Lottie.network(
                        "https://assets4.lottiefiles.com/packages/lf20_jd0ht8am.json",
                      ),
                    )
                  : Expanded(
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemCount: contacts!.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          Uint8List? image =
                              contacts![index].photo; //fetch contact photo
                          String num = (contacts![index].phones.isNotEmpty)
                              ? (contacts![index].phones.first.number)
                              : "--"; // fetch phone number
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const RequestMoneyPage(),
                                ),
                              );
                            },
                            child: ListTile(
                              leading: (image == null)
                                  ? CircleAvatar(
                                      backgroundColor: kPrimaryTextColor,
                                      radius: getDeviceWidth(25),
                                      child: const Icon(Icons.person),
                                    )
                                  : CircleAvatar(
                                      radius: getDeviceWidth(25),
                                      backgroundImage: MemoryImage(image)),
                              title: Text(
                                contacts![index]
                                    .displayName, // to display full name of the contact
                                overflow: TextOverflow.ellipsis,
                                style: contactNameTextStyle,
                              ),
                              subtitle:
                                  Text(num, style: contactNumberTextStyle),
                              trailing: SvgPicture.asset(
                                  "assets/icons/go-to-icon.svg"),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: getDeviceHeight(10));
                        },
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
