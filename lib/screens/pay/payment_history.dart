import 'package:flutter_fintech_app/utilities/import.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({Key? key}) : super(key: key);
  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "payment\nhistory.",
        showBackButton: true,
        onTap: () {
          Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const PayPage(),
            ),
          );
        },
      ),
      body: Padding(
        padding: kSinglePad,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return CustomListTile(
              height: getDeviceHeight(80),
              width: double.infinity,
              icon: SvgPicture.asset("assets/icons/transaction.svg"),
              titleText: "Amit",
              subtitleText: "February 1, 2022",
              isReceivedMoney: false,
              deductedMoney: "-₹330",
              category: "upi",
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: getDeviceHeight(25),
            );
          },
        ),
      ),
    );
  }
}
