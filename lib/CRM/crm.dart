import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:janssendashboard/CRM/allTickets.dart';
import 'package:janssendashboard/CRM/widgets.dart/brands.dart';

class CrmView extends StatelessWidget {
  const CrmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 237, 247),
      body: Row(
        children: [
          Column(
            children: [
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [Text("Analytics")],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 23, 43, 76),
                                  borderRadius: BorderRadius.circular(9)),
                              child: const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "incaming calls : 56",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "outgoing calls : 22",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 153, 32),
                                  borderRadius: BorderRadius.circular(9)),
                              child: const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "all Tickets  : 44",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "closed Tickets : 22",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "opend Tickets : 63",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 254, 86, 47),
                                  borderRadius: BorderRadius.circular(9)),
                              child: const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "pending visit     : 44",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "pending delivery  : 44",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 33, 197, 212),
                                  borderRadius: BorderRadius.circular(9)),
                              child: const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "تم المعاينه     : 44",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "تم التسليم  : 44",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "تم السحب  : 44",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Brands()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * .7,
                  width: MediaQuery.of(context).size.width * .7,
                  child: DataGridForOrder()),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 400, height: 210, child: LineChartSample2()),
              BlocksStaticks(),
              BlocksStaticks2(),
              BlocksStaticks2(),
            ],
          )
        ],
      ),
    );
  }
}

class BlocksStaticks extends StatelessWidget {
  const BlocksStaticks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(9)),
      width: 400,
      child: Column(
        children: [
          const Text("complain reasons",
              style: TextStyle(color: Color.fromARGB(95, 0, 0, 0))),
          Container(
            decoration: const BoxDecoration(),
            width: 390,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " هبوط ب المرتبه          ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 230,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("60%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " مشكله ب السوست    ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 140,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("15%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " مشكله ب القماش      ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("5%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " المرتبه مش يانسن     ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("3%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        " حشرة الفراش             ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 15,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("1%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BlocksStaticks2 extends StatelessWidget {
  const BlocksStaticks2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(9)),
      width: 400,
      child: Column(
        children: [
          const Text("products ",
              style: TextStyle(color: Color.fromARGB(95, 0, 0, 0))),
          Container(
            decoration: const BoxDecoration(),
            width: 390,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " كلاسيك      ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 230,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("60%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " المانى         ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 140,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("15%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " سيزونال     ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("5%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      const Text(
                        " بيلندا          ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("3%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        " بلوماس      ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 194)),
                      ),
                      Container(
                        height: 18,
                        width: 15,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 82, 204),
                        ),
                        child: const Center(
                          child: Text("1%",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class datamodel {
  double density;
  int count;
  double percetn;
  datamodel(this.count, this.density, this.percetn);
}

class AppColors {
  static const Color primary = contentColorCyan;
  static const Color menuBackground = Color(0xFF090912);
  static const Color itemsBackground = Color(0xFF1B2339);
  static const Color pageBackground = Color(0xFF282E45);
  static const Color mainTextColor1 = Colors.white;
  static const Color mainTextColor2 = Colors.white70;
  static const Color mainTextColor3 = Colors.white38;
  static const Color mainGridLineColor = Colors.white10;
  static const Color borderColor = Colors.white54;
  static const Color gridLinesColor = Color(0x11FFFFFF);

  static const Color contentColorBlack = Colors.black;
  static const Color contentColorWhite = Colors.white;
  static const Color contentColorBlue = Color(0xFF2196F3);
  static const Color contentColorYellow = Color(0xFFFFC300);
  static const Color contentColorOrange = Color(0xFFFF683B);
  static const Color contentColorGreen = Color(0xFF3BFF49);
  static const Color contentColorPurple = Color(0xFF6E1BFF);
  static const Color contentColorPink = Color(0xFFFF3AF2);
  static const Color contentColorRed = Color(0xFFE80054);
  static const Color contentColorCyan = Color(0xFF50E4FF);
}

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    AppColors.contentColorCyan,
    AppColors.contentColorBlue,
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(8)),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
              left: 7,
              top: 19,
              bottom: 0,
            ),
            child: LineChart(
              showAvg ? avgData() : mainData(),
            ),
          ),
          SizedBox(
            width: 60,
            height: 34,
            child: TextButton(
              onPressed: () {
                setState(() {
                  showAvg = !showAvg;
                });
              },
              child: Text(
                'avg',
                style: TextStyle(
                  fontSize: 12,
                  color: showAvg ? Colors.white.withOpacity(0.5) : Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('1', style: style);
        break;
      case 1:
        text = const Text('2', style: style);
        break;
      case 2:
        text = const Text('3', style: style);
      case 3:
        text = const Text('4', style: style);
      case 4:
        text = const Text('5', style: style);
      case 5:
        text = const Text('5', style: style);
      case 6:
        text = const Text('6', style: style);
      case 7:
        text = const Text('7', style: style);
      case 8:
        text = const Text('8', style: style);
      case 9:
        text = const Text('9', style: style);
      case 10:
        text = const Text('10', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 10,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
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
          return const FlLine(
            color: AppColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: AppColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color.fromARGB(255, 79, 91, 100)),
      ),
      minX: 0,
      maxX: 10,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 0),
            FlSpot(2, 1),
            FlSpot(4, 0),
            FlSpot(6, 3),
            FlSpot(8, 3),
            FlSpot(10, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 3,
          isStrokeCapRound: false,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 1,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
