// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:janssendashboard/CRM/models.dart';

class CrmProvider extends ChangeNotifier {
  getData() {
    customers_From_firebase();
  }

  customers_From_firebase() {
    DatabaseReference ref =
        FirebaseDatabase.instanceFor(app: Firebase.app('2')).ref("records");
    ref.get().then((onValue) {
      for (var element in onValue.children) {
        final r = CustomerModel.fromMap(jsonDecode(jsonEncode(element.value)));
        customers.addAll({r.customer_ID.toString(): r});
      }

      // customers.addAll({
      //   CustomerModel.fromMap(
      //               jsonDecode(jsonEncode(onValue.children.first.value)))
      //           .customer_ID
      //           .toString():
      //       CustomerModel.fromMap(
      //           jsonDecode(jsonEncode(onValue.children.first.value)))
      // });

      // if (onValue.value != null) {
      //   for (var e in onValue.children) {
      //     final record = CustomerModel.fromJson(e.value.toString());
      //     if (record.actions
      //             .if_action_exist(customerAction.archive_customer.getTitle) ==
      //         false) {
      //       customers.addAll({record.customer_id.toString(): record});
      //     } else {
      //       customers.addAll({record.customer_id.toString(): record});
      //     }
      //   }
      //   print("get records data");
      //   notifyListeners();
      // }
    });
    // ref.onChildChanged.listen((onData) {
    //   if (onData.snapshot.value != null) {
    //     for (var e in onData.snapshot.children) {
    //       final record = CustomerModel.fromJson(e.value.toString());
    //       if (record.actions
    //               .if_action_exist(customerAction.archive_customer.getTitle) ==
    //           false) {
    //         customers.addAll({record.customer_id.toString(): record});
    //       } else {}
    //     }
    //     print("get blocks data");
    //     Refrsh_ui();
    //   }
    // });
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
