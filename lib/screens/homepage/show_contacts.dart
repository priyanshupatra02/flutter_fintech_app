import 'package:flutter_fintech_app/utilities/import.dart';
import 'package:flutter_fintech_app/widgets/ShowContacts/contacts_cards.dart';
import 'package:flutter_fintech_app/widgets/ShowContacts/upi_search_bar.dart';

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
              builder: (BuildContext context) => const Home(),
            ),
          );
        },
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: kSinglePad,
              child: UpiSearchBar(),
            ),
            ContactsCard(contacts: contacts),
          ],
        ),
      ),
    );
  }
}

// Contacts Cards


/*
 * Container(
              height: 20,
              width: getDeviceWidth(140),
              color: Colors.blue,
            );
          },
          
 */

// UpiSearchBar
