import 'package:flutter/material.dart';
import 'package:janssendashboard/CRM/models.dart';

class CrmProvider extends ChangeNotifier {
  Map<String, CustomerModel> customers = {
    "1": CustomerModel(
        customer_ID: 6,
        cusotmerName: "cusotmerName",
        mobilenum: [
          "eeeeerrrrrrr",
          "343434",
          "44434",
          "34434"
              "eeeeerrrrrrr",
          "343434",
          "44434",
          "34434"
              "eeeeerrrrrrr",
          "343434",
          "44434",
          "34434"
              "eeeeerrrrrrr",
          "343434",
          "44434",
          "34434"
        ],
        covernorate: "covernorate",
        area: "area",
        adress: "adress",
        clientStatus: "clientStatus",
        tickets: [],
        calls: [],
        lastUpdated: 677),
    "wer": CustomerModel(
        customer_ID: 6,
        cusotmerName: "cusotmerName",
        mobilenum: [],
        covernorate: "covernorate",
        area: "area",
        adress: "adress",
        clientStatus: "clientStatus",
        tickets: [],
        calls: [],
        lastUpdated: 677),
    "rer": CustomerModel(
        customer_ID: 6,
        cusotmerName: "cusotmerName",
        mobilenum: [],
        covernorate: "covernorate",
        area: "area",
        adress: "adress",
        clientStatus: "clientStatus",
        tickets: [],
        calls: [],
        lastUpdated: 677),
    "err": CustomerModel(
        customer_ID: 6,
        cusotmerName: "cusotmerName",
        mobilenum: [],
        covernorate: "covernorate",
        area: "area",
        adress: "adress",
        clientStatus: "clientStatus",
        tickets: [],
        calls: [],
        lastUpdated: 677),
    "errer": CustomerModel(
        customer_ID: 6,
        cusotmerName: "cusotmerName",
        mobilenum: [],
        covernorate: "covernorate",
        area: "area",
        adress: "adress",
        clientStatus: "clientStatus",
        tickets: [],
        calls: [],
        lastUpdated: 677),
    "errerrr": CustomerModel(
        customer_ID: 6,
        cusotmerName: "cusotmerName",
        mobilenum: [],
        covernorate: "covernorate",
        area: "area",
        adress: "adress",
        clientStatus: "clientStatus",
        tickets: [],
        calls: [],
        lastUpdated: 677),
    "errv": CustomerModel(
        customer_ID: 6,
        cusotmerName: "cusotmerName",
        mobilenum: [],
        covernorate: "covernorate",
        area: "area",
        adress: "adress",
        clientStatus: "clientStatus",
        tickets: [],
        calls: [],
        lastUpdated: 677),
    "vc": CustomerModel(
        customer_ID: 6,
        cusotmerName: "cusotmerName",
        mobilenum: [],
        covernorate: "covernorate",
        area: "area",
        adress: "adress",
        clientStatus: "clientStatus",
        tickets: [],
        calls: [],
        lastUpdated: 677),
    "eex": CustomerModel(
        customer_ID: 6,
        cusotmerName: "cusotmerName",
        mobilenum: [],
        covernorate: "covernorate",
        area: "area",
        adress: "adress",
        clientStatus: "clientStatus",
        tickets: [],
        calls: [],
        lastUpdated: 677),
    "x3": CustomerModel(
        customer_ID: 6,
        cusotmerName: "cusotmerName",
        mobilenum: [],
        covernorate: "covernorate",
        area: "area",
        adress: "adress",
        clientStatus: "clientStatus",
        tickets: [],
        calls: [],
        lastUpdated: 677),
    "tj": CustomerModel(
        customer_ID: 6,
        cusotmerName: "cusotmerName",
        mobilenum: [],
        covernorate: "covernorate",
        area: "area",
        adress: "adress",
        clientStatus: "clientStatus",
        tickets: [],
        calls: [],
        lastUpdated: 677),
  };
  List<String> get phones =>
      customers.values.expand((e) => e.mobilenum).toList();
  List<TicketModel> get tickets =>
      customers.values.expand((e) => e.tickets).toList();
  List<CallInfo> get ticketcalls =>
      customers.values.expand((e) => e.calls).toList();
  get cusomercalls =>
      customers.values.expand((e) => e.tickets).expand((x) => x.calls).toList();
}
