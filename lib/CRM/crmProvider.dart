// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:janssendashboard/CRM/models/callinfo.dart';
import 'package:janssendashboard/CRM/models/customer.dart';
import 'package:janssendashboard/CRM/models/request.dart';
import 'package:janssendashboard/CRM/models/ticket.dart';

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
        print("get customer data");
      }
    });
    ref.onChildChanged.listen((onData) {
      if (onData.snapshot.value != null) {
        for (var element in onData.snapshot.children) {
          final r =
              CustomerModel.fromMap(jsonDecode(jsonEncode(element.value)));
          customers.addAll({r.customer_ID.toString(): r});
        }
        print("onChildChanged customer data");
        notifyListeners();
      }
    });
  }

  Refresh_UI() {
    notifyListeners();
  }

  Map<String, CustomerModel> customers = {};
  List<String> get phones =>
      customers.values.expand((e) => e.mobilenum).toList();
  List<RequstesMolel> get requests => customers.values
      .expand((e) => e.tickets.expand((r) => r.requests))
      .toList();
  List<TicketModel> get tickets =>
      customers.values.expand((e) => e.tickets).toList();
  List<CallInfo> get ticketcalls =>
      customers.values.expand((e) => e.calls).toList();
  List<CallInfo> get cusomercalls =>
      customers.values.expand((e) => e.tickets).expand((x) => x.calls).toList();

  DateTime? pickedDateFrom;
  DateTime? pickedDateTO;
  List<DateTime> AllDatesOfOfData() {
    return tickets.expand((e) => e.actions).map((d) => d.when).toList();
  }
}
