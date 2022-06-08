import 'package:flutter_fintech_app/utilities/import.dart';

// TODO: add fucntions like if no profile phot, and on clicking it sould take the same name & dp
class ShowContacts extends StatefulWidget {
  const ShowContacts({Key? key}) : super(key: key);

  @override
  State<ShowContacts> createState() => ShowContactsState();
}

class ShowContactsState extends State<ShowContacts> {
  List<Contact>? contacts;

  @override
  void initState() {
    super.initState();
    getPhoneData();
  }

  void getPhoneData() async {
    if (await FlutterContacts.requestPermission()) {
      contacts = await FlutterContacts.getContacts(
        withProperties: true,
        withPhoto: true,
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "contacts",
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
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const UpiSearchBar(),
            ContactsCard(contacts: contacts),
          ],
        ),
      ),
    );
  }
}

// Contacts Cards
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
          height: 20,
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
                  SizedBox(
                    width: getDeviceWidth(20),
                  ),
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

/*
 * Container(
              height: 20,
              width: getDeviceWidth(140),
              color: Colors.blue,
            );
          },
          
 */

// UpiSearchBar
class UpiSearchBar extends StatelessWidget {
  const UpiSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      //TODO: use filter in while searching.
      //TODO: remove this padidng later
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        alignment: Alignment.center,
        height: getDeviceHeight(65),
        decoration: BoxDecoration(
          borderRadius: kQuatCurve,
          color: kTileColor,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: getDeviceWidth(15.0)),
          child: TextField(
            cursorColor: kSecondaryColor.withOpacity(0.5),
            decoration: InputDecoration(
              hintText: "Enter upi id",
              hintStyle: hintTextStyle,
              suffixIcon: Container(
                padding: kQuatHalfPad,
                decoration: BoxDecoration(
                  borderRadius: kQuatCurve,
                  color: kIconBgColor,
                ),
                child: GestureDetector(
                  //TODO: Declare ontap
                  onTap: () {},
                  child: SvgPicture.asset(
                    "assets/icons/search.svg",
                    color: kSecondaryColor.withOpacity(0.5),
                  ),
                ),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
