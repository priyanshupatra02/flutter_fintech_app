import 'package:flutter_fintech_app/utilities/import.dart';

class MonitoringPage extends StatefulWidget {
  const MonitoringPage({Key? key}) : super(key: key);

  @override
  State<MonitoringPage> createState() => _MonitoringPageState();
}

class _MonitoringPageState extends State<MonitoringPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: "expense\ntracker.",
        onTap: () {
          Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const Home(),
            ),
          );
        },
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LineChartSample2(),
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.grey,
                height: 30,
                width: getDeviceWidth(300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
