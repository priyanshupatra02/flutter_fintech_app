import 'package:flutter_fintech_app/utilities/import.dart';

class PayPage extends StatefulWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child:  Text("pay"),
      ),
    );
  }
}
