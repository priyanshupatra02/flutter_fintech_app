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
            const LineChartWidget(),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: kQuatPad,
                margin: kSinglePad,
                decoration: BoxDecoration(
                  color: kTileColor,
                  borderRadius: kQuatCurve,
                ),
                // width: getDeviceWidth(320),
                // height: getDeviceWidth(30),

                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        enableFeedback: true,
                        labelStyle: GoogleFonts.poppins(
                          fontSize: getDeviceWidth(12),
                          fontWeight: FontWeight.w500,
                          letterSpacing: getDeviceWidth(0.5),
                        ),
                        indicator: BoxDecoration(
                          color: kIconBgColor,
                          borderRadius: kQuatCurve,
                        ),
                        tabs: [
                          Tab(
                            height: getDeviceHeight(25),
                            text: "weekly",
                          ),
                          Tab(
                            height: getDeviceHeight(25),
                            text: "monthly",
                          ),
                          Tab(
                            height: getDeviceHeight(25),
                            text: "yearly",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
