import 'package:flutter/material.dart';

import 'package:janssendashboard/foam/widgits/blocks/blocks.dart';
import 'package:janssendashboard/foam/widgits/cars/cars.dart';
import 'package:janssendashboard/foam/widgits/industerialsecurity/industerialSecurity.dart';
import 'package:janssendashboard/foam/widgits/industerialsecurity/tanklevel.dart';
import 'package:janssendashboard/foam/widgits/orders/cuttingOrders.dart';
import 'package:janssendashboard/foam/widgits/roundedSissor.dart';

class FoamDashboard extends StatelessWidget {
  FoamDashboard({super.key});
  final ScrollController? controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: controller,
        interactive: true,
        thumbVisibility: true,
        trackVisibility: true,
        child: SingleChildScrollView(
          controller: controller,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StatisticsCuttingOrders(),
                  const CartsStatistics(),
                ],
              ),
              Row(
                children: [
                  const BlocksStaticks(),
                  const RoundedSessorStatistics(),
                ],
              ),
              const Row(
                children: [
                  industerialSecurityreportwidgetStatistics(),
                  TankLevel(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
