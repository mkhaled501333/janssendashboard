// ignore_for_file: non_constant_identifier_names

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:janssendashboard/CRM/models.dart';

class CrmProvider extends ChangeNotifier {
  // Map<String, CustomerModel> customers = {
  //   "1": CustomerModel(
  //       customer_ID: 6,
  //       cusotmerName: "cusotmerName",
  //       mobilenum: [
  //         "eeeeerrrrrrr",
  //         "343434",
  //         "44434",
  //         "34434"
  //             "eeeeerrrrrrr",
  //         "343434",
  //         "44434",
  //         "34434"
  //             "eeeeerrrrrrr",
  //         "343434",
  //         "44434",
  //         "34434"
  //             "eeeeerrrrrrr",
  //         "343434",
  //         "44434",
  //         "34434"
  //       ],
  //       covernorate: "covernorate",
  //       area: "area",
  //       adress: "adress",
  //       clientStatus: "clientStatus",
  //       tickets: [],
  //       calls: [],
  //       lastUpdated: 677),
  //   "wer": CustomerModel(
  //       customer_ID: 6,
  //       cusotmerName: "cusotmerName",
  //       mobilenum: [],
  //       covernorate: "covernorate",
  //       area: "area",
  //       adress: "adress",
  //       clientStatus: "clientStatus",
  //       tickets: [],
  //       calls: [],
  //       lastUpdated: 677),
  //   "rer": CustomerModel(
  //       customer_ID: 6,
  //       cusotmerName: "cusotmerName",
  //       mobilenum: [],
  //       covernorate: "covernorate",
  //       area: "area",
  //       adress: "adress",
  //       clientStatus: "clientStatus",
  //       tickets: [],
  //       calls: [],
  //       lastUpdated: 677),
  //   "err": CustomerModel(
  //       customer_ID: 6,
  //       cusotmerName: "cusotmerName",
  //       mobilenum: [],
  //       covernorate: "covernorate",
  //       area: "area",
  //       adress: "adress",
  //       clientStatus: "clientStatus",
  //       tickets: [],
  //       calls: [],
  //       lastUpdated: 677),
  //   "errer": CustomerModel(
  //       customer_ID: 6,
  //       cusotmerName: "cusotmerName",
  //       mobilenum: [],
  //       covernorate: "covernorate",
  //       area: "area",
  //       adress: "adress",
  //       clientStatus: "clientStatus",
  //       tickets: [],
  //       calls: [],
  //       lastUpdated: 677),
  //   "errerrr": CustomerModel(
  //       customer_ID: 6,
  //       cusotmerName: "cusotmerName",
  //       mobilenum: [],
  //       covernorate: "covernorate",
  //       area: "area",
  //       adress: "adress",
  //       clientStatus: "clientStatus",
  //       tickets: [],
  //       calls: [],
  //       lastUpdated: 677),
  //   "errv": CustomerModel(
  //       customer_ID: 6,
  //       cusotmerName: "cusotmerName",
  //       mobilenum: [],
  //       covernorate: "covernorate",
  //       area: "area",
  //       adress: "adress",
  //       clientStatus: "clientStatus",
  //       tickets: [],
  //       calls: [],
  //       lastUpdated: 677),
  //   "vc": CustomerModel(
  //       customer_ID: 6,
  //       cusotmerName: "cusotmerName",
  //       mobilenum: [],
  //       covernorate: "covernorate",
  //       area: "area",
  //       adress: "adress",
  //       clientStatus: "clientStatus",
  //       tickets: [],
  //       calls: [],
  //       lastUpdated: 677),
  //   "eex": CustomerModel(
  //       customer_ID: 6,
  //       cusotmerName: "cusotmerName",
  //       mobilenum: [],
  //       covernorate: "covernorate",
  //       area: "area",
  //       adress: "adress",
  //       clientStatus: "clientStatus",
  //       tickets: [],
  //       calls: [],
  //       lastUpdated: 677),
  //   "x3": CustomerModel(
  //       customer_ID: 6,
  //       cusotmerName: "cusotmerName",
  //       mobilenum: [],
  //       covernorate: "covernorate",
  //       area: "area",
  //       adress: "adress",
  //       clientStatus: "clientStatus",
  //       tickets: [],
  //       calls: [],
  //       lastUpdated: 677),
  //   "tj": CustomerModel(
  //       customer_ID: 6,
  //       cusotmerName: "cusotmerName",
  //       mobilenum: [],
  //       covernorate: "covernorate",
  //       area: "area",
  //       adress: "adress",
  //       clientStatus: "clientStatus",
  //       tickets: [],
  //       calls: [],
  //       lastUpdated: 677),
  // };

  getData() {
    customers_From_firebase();
  }

  customers_From_firebase() {
    DatabaseReference ref = FirebaseDatabase.instance.ref("customers");
    ref.get().then((onValue) {
      if (onValue.value != null) {
        for (var e in onValue.children) {
          final record = CustomerModel.fromJson(e.value.toString());
          if (record.actions
                  .if_action_exist(customerAction.archive_customer.getTitle) ==
              false) {
            customers.addAll({record.customer_id.toString(): record});
          } else {
            customers.addAll({record.customer_id.toString(): record});
          }
        }
        print("get records data");
        notifyListeners();
      }
    });
    ref.onChildChanged.listen((onData) {
      if (onData.snapshot.value != null) {
        for (var e in onData.snapshot.children) {
          final record = CustomerModel.fromJson(e.value.toString());
          if (record.actions
                  .if_action_exist(customerAction.archive_customer.getTitle) ==
              false) {
            customers.addAll({record.customer_id.toString(): record});
          } else {}
        }
        print("get blocks data");
        Refrsh_ui();
      }
    });
  }

  Map<String, CustomerModel> customers = {};
  List<String> get phones =>
      customers.values.expand((e) => e.mobilenum).toList();
  List<TicketModel> get tickets =>
      customers.values.expand((e) => e.tickets).toList();
  List<CallInfo> get ticketcalls =>
      customers.values.expand((e) => e.calls).toList();
  get cusomercalls =>
      customers.values.expand((e) => e.tickets).expand((x) => x.calls).toList();
}
