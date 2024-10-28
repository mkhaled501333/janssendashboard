import 'package:flutter/material.dart';
import 'package:janssendashboard/CRM/widgets.dart/actions.dart';
import 'package:janssendashboard/CRM/widgets.dart/allTickets.dart';
import 'package:janssendashboard/CRM/widgets.dart/callreciepeint.dart';
import 'package:janssendashboard/CRM/widgets.dart/callsCart.dart';
import 'package:janssendashboard/CRM/widgets.dart/callsreasons.dart';
import 'package:janssendashboard/CRM/widgets.dart/cards.dart';
import 'package:janssendashboard/CRM/widgets.dart/complainReasons.dart';
import 'package:janssendashboard/CRM/widgets.dart/prodcuts.dart';

class CrmView extends StatelessWidget {
  const CrmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 237, 247),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Cards(),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .38,
                      height: MediaQuery.of(context).size.height * .4,
                      child: const LineChartSample2()),
                ],
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * .57,
                  width: MediaQuery.of(context).size.width * .7,
                  child: const DataGridForOrder()),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ComplainReasons(),
              Prodcuts(),
              CallsReasons(),
              CallRecepient(),
              Actionstaken(),
            ],
          )
        ],
      ),
    );
  }
}
