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
      appBar: const CustomAppBar(title: "payment\nhistory."),
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
