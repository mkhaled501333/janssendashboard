import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:janssendashboard/CRM/crmProvider.dart';
import 'package:provider/provider.dart';

class CallsReasons extends StatelessWidget {
  const CallsReasons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CrmProvider>(
      builder: (context, myType, child) {
        final callsReasons = (myType.cusomercalls + myType.ticketcalls)
            .map((e) => e.callReason)
            .toList();
        callsReasons
            .sortBy<num>((e) => callsReasons.where((test) => test == e).length);
        return Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(9)),
          height: MediaQuery.of(context).size.height * .19,
          width: MediaQuery.of(context).size.width * .25,
          child: Column(
            children: [
              SizedBox(
                height: 20,
                child: Text(
                    "calls reasons(${callsReasons.toSet().length})              total:${callsReasons.length}",
                    style: const TextStyle(color: Color.fromARGB(95, 0, 0, 0))),
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height * .19) - 20,
                child: SingleChildScrollView(
                  child: Column(
                    children: callsReasons.reversed
                        .toSet()
                        .map((e) => item(context, e, callsReasons.length,
                            callsReasons.where((test) => test == e).length))
                        .toList(),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Row item(BuildContext context, String tittle, int total, int count) {
    double percent = (count / total);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: (MediaQuery.of(context).size.width * .23) * .3,
          child: Tooltip(
            message: tittle,
            child: Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              tittle,
              style: TextStyle(
                  color: const Color.fromARGB(255, 158, 158, 185),
                  fontSize: (MediaQuery.of(context).size.width * .23) * .03),
            ),
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
                child: Text("${(percent * 100).toStringAsFixed(1)}%",
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
