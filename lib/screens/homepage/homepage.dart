import 'package:flutter_fintech_app/utilities/import.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}


/**
 *   // List<Widget> screens = [
  //   HomePage(),
  //   PayPage(),
  //   InvestmentPage(),
  //   CardsPage(),
  //   MonitoringPage(),
  // ];
 */