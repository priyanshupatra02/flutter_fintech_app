import 'package:flutter_fintech_app/utilities/import.dart';

class LineChartWidget extends StatefulWidget {
  const LineChartWidget({Key? key}) : super(key: key);

  @override
  LineChartWidgetState createState() => LineChartWidgetState();
}

class LineChartWidgetState extends State<LineChartWidget> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        SizedBox(
          height: getDeviceHeight(450),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: kHalfCurve,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getDeviceWidth(30),
                vertical: getDeviceHeight(25),
              ),
              child: LineChart(
                mainData(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    TextStyle? style = GoogleFonts.poppins(
      color: kPrimaryTextColor,
      fontWeight: FontWeight.w500,
      letterSpacing: getDeviceWidth(1.2),
      fontSize: getDeviceWidth(10),
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text('Week 1', style: style);
        break;
      case 2:
        text = Text('Week 2', style: style);
        break;
      case 3:
        text = Text('Week 3', style: style);
        break;
      case 4:
        text = Text('Week 4', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8.0,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    TextStyle style = TextStyle(
      color: kPrimaryTextColor,
      fontWeight: FontWeight.w600,
      fontSize: getDeviceWidth(10),
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '₹0';
        break;
      case 1:
        text = '₹200';
        break;
      case 2:
        text = '₹400';
        break;
      case 3:
        text = '₹600';
        break;
      case 4:
        text = '₹800';
        break;
      case 5:
        text = '₹1000';
        break;
      case 6:
        text = '₹1200';
        break;
      case 7:
        text = '₹1400';
        break;
      case 8:
        text = '₹1600';
        break;
      case 9:
        text = '₹1800';
        break;
      case 10:
        text = '₹2000';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: getDeviceHeight(30),
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: getDeviceWidth(40),
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 4,
      minY: 0,
      maxY: 10,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 6),
            FlSpot(1, 5.5),
            FlSpot(1.5, 7),
            FlSpot(2, 4),
            FlSpot(2.2, 3.7),
            FlSpot(2.3, 3),
            FlSpot(3, 2.5),
            FlSpot(3.4, 6.8),
            FlSpot(4, 5),
          ],
          isCurved: true,
          color: kGraphColor,
          barWidth: getDeviceWidth(8),
          shadow: Shadow(
            color: kGraphShadowColor,
            offset: const Offset(0, 6),
            blurRadius: getDeviceWidth(10),
          ),
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: false,
          ),
        ),
      ],
    );
  }
}
