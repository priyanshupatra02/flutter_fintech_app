import 'package:flutter_fintech_app/utilities/import.dart';

class CashbackPage extends StatefulWidget {
  const CashbackPage({Key? key}) : super(key: key);

  @override
  State<CashbackPage> createState() => _CashbackPageState();
}

class _CashbackPageState extends State<CashbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "cashback.",
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
              titleText: "Amazon",
              subtitleText: "February 1, 2022",
              isReceivedMoney: true,
              deductedMoney: "+₹120",
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
