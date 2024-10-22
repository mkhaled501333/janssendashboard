import 'package:flutter/material.dart';
import 'package:janssendashboard/foam/widgits/densityCharts.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class Brands extends StatelessWidget {
  const Brands({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      child: SizedBox(
          width: 150,
          height: 100,
          child: SfCircularChart(
              backgroundColor: const Color.fromARGB(255, 164, 241, 175),
              title: ChartTitle(text: 'brands'),
              legend: const Legend(isVisible: true),
              series: <CircularSeries>[
                PieSeries<ChartData, String>(
                    dataSource: [
                      ChartData("الدائرى الاول", 20.0),
                      ChartData("الدائرى الثانى", 30),
                      ChartData("الدائرى الثالث", 50),
                    ],
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    dataLabelSettings: const DataLabelSettings(isVisible: true),
                    name: 'Data')
              ])),
    );
  }
}
