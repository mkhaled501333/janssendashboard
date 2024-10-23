import 'package:flutter/material.dart';
import 'package:janssendashboard/CRM/widgets.dart/allTickets.dart';
import 'package:janssendashboard/CRM/widgets.dart/callsCart.dart';
import 'package:janssendashboard/CRM/widgets.dart/cards.dart';

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
                  Cards(),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .38,
                      height: MediaQuery.of(context).size.height * .4,
                      child: LineChartSample2()),
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
              ComplainReasons(),
              ComplainReasons(),
              ComplainReasons(),
              ComplainReasons(),
            ],
          )
        ],
      ),
    );
  }
}

class ComplainReasons extends StatelessWidget {
  const ComplainReasons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(9)),
      height: MediaQuery.of(context).size.height * .19,
      width: MediaQuery.of(context).size.width * .25,
      child: Column(
        children: [
          const Text("complain reasons(100)",
              style: TextStyle(color: Color.fromARGB(95, 0, 0, 0))),
          item(context, "مشكله السوست", 100, 10),
          item(context, "هبوط ب المبرتبه", 100, 20),
          item(context, "مشكله ب السوست", 100, 30),
          item(context, "مشكله ب السوست", 100, 70),
          item(context, "المرتبه مش يانسن مش يانس", 100, 40),
        ],
      ),
    );
  }

  Row item(BuildContext context, String tittle, int total, int count) {
    double percent = (count / total);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: (MediaQuery.of(context).size.width * .23) * .3,
          child: Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            tittle,
            style: TextStyle(
                color: const Color.fromARGB(255, 158, 158, 185),
                fontSize: (MediaQuery.of(context).size.width * .23) * .03),
          ),
        ),
        Stack(
          children: [
            SizedBox(
              width: (MediaQuery.of(context).size.width * .23) * .6,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .025,
              width: ((MediaQuery.of(context).size.width * .23) * .6) * percent,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 82, 204),
              ),
              child: Center(
                child: Text("${percent * 100}%",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .015,
                        color: const Color.fromARGB(255, 255, 255, 255))),
              ),
            ),
          ],
        ),
        SizedBox(
          width: (MediaQuery.of(context).size.width * .23) * .1,
          child: Text(
            "($count)",
            style: TextStyle(
                color: const Color.fromARGB(255, 156, 156, 183),
                fontSize: MediaQuery.of(context).size.width * .01),
          ),
        ),
      ],
    );
  }
}
