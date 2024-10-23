// ignore_for_file: camel_case_types

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:janssendashboard/foam/models/moderls.dart';
import 'package:janssendashboard/foam/utiles/enums.dart';
import 'package:janssendashboard/foam/utiles/extentions.dart';

class Customer_controller extends ChangeNotifier {
  Map<String, CustomerModel> customers = {};
  Map<String, CustomerModel> initalData = {};

  getData() {
    customers_From_firebase();
  }

  customers_From_firebase() {
    DatabaseReference ref =
        FirebaseDatabase.instanceFor(app: Firebase.app('2')).ref("customers");
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
        print("get custoers data");
        Refrsh_ui();
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

  String? initialForRaido;
  // String? initialForcustomer;
  Refrsh_ui() {
    notifyListeners();
  }
}
