// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, constant_identifier_names
import 'dart:convert';

import 'package:flutter/foundation.dart';

class TicketModel {
  int ticket_ID;
  int ticket_Num;
  bool Ticketresolved;
  String TicketType;
  List<RequstesMolel> requests;
  List<CallInfo> calls;
  DateTime datecreated;
  String colseReason;
  String notes;
  String others;
  List<ActionModel> actions;
  TicketModel({
    required this.ticket_ID,
    required this.ticket_Num,
    required this.Ticketresolved,
    required this.TicketType,
    required this.requests,
    required this.calls,
    required this.datecreated,
    required this.colseReason,
    required this.notes,
    required this.others,
    required this.actions,
  });

  TicketModel copyWith({
    int? ticket_ID,
    int? ticket_Num,
    bool? Ticketresolved,
    String? TicketType,
    List<RequstesMolel>? requests,
    List<CallInfo>? calls,
    DateTime? datecreated,
    String? colseReason,
    String? notes,
    String? others,
    List<ActionModel>? actions,
  }) {
    return TicketModel(
      ticket_ID: ticket_ID ?? this.ticket_ID,
      ticket_Num: ticket_Num ?? this.ticket_Num,
      Ticketresolved: Ticketresolved ?? this.Ticketresolved,
      TicketType: TicketType ?? this.TicketType,
      requests: requests ?? this.requests,
      calls: calls ?? this.calls,
      datecreated: datecreated ?? this.datecreated,
      colseReason: colseReason ?? this.colseReason,
      notes: notes ?? this.notes,
      others: others ?? this.others,
      actions: actions ?? this.actions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ticket_ID': ticket_ID,
      'ticket_Num': ticket_Num,
      'Ticketresolved': Ticketresolved,
      'TicketType': TicketType,
      'requests': requests.map((x) => x.toMap()).toList(),
      'calls': calls.map((x) => x.toMap()).toList(),
      'datecreated': datecreated.millisecondsSinceEpoch,
      'colseReason': colseReason,
      'notes': notes,
      'others': others,
      'actions': actions.map((x) => x.toMap()).toList(),
    };
  }

  factory TicketModel.fromMap(Map<String, dynamic> map) {
    return TicketModel(
      ticket_ID: map['ticket_ID'] as int,
      ticket_Num: map['ticket_Num'] as int,
      Ticketresolved: map['Ticketresolved'] as bool,
      TicketType: map['TicketType'] as String,
      requests: List<RequstesMolel>.from(
        (map['requests'] == null ? [] : map['requests'] as List<dynamic>)
            .map<RequstesMolel>(
          (x) => RequstesMolel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      calls: List<CallInfo>.from(
        (map['calls'] == null ? [] : map['calls'] as List<dynamic>)
            .map<CallInfo>(
          (x) => CallInfo.fromMap(x as Map<String, dynamic>),
        ),
      ),
      datecreated:
          DateTime.fromMillisecondsSinceEpoch(map['datecreated'] as int),
      colseReason: map['colseReason'] as String,
      notes: map['notes'] as String,
      others: map['others'] as String,
      actions: List<ActionModel>.from(
        (map['actions'] == null ? [] : map['actions'] as List<dynamic>)
            .map<ActionModel>(
          (x) => ActionModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory TicketModel.fromJson(String source) =>
      TicketModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TicketModel(ticket_ID: $ticket_ID, ticket_Num: $ticket_Num, Ticketresolved: $Ticketresolved, TicketType: $TicketType, requests: $requests, calls: $calls, datecreated: $datecreated, colseReason: $colseReason, notes: $notes, others: $others, actions: $actions)';
  }

  @override
  bool operator ==(covariant TicketModel other) {
    if (identical(this, other)) return true;

    return other.ticket_ID == ticket_ID &&
        other.ticket_Num == ticket_Num &&
        other.Ticketresolved == Ticketresolved &&
        other.TicketType == TicketType &&
        listEquals(other.requests, requests) &&
        listEquals(other.calls, calls) &&
        other.datecreated == datecreated &&
        other.colseReason == colseReason &&
        other.notes == notes &&
        other.others == others &&
        listEquals(other.actions, actions);
  }

  @override
  int get hashCode {
    return ticket_ID.hashCode ^
        ticket_Num.hashCode ^
        Ticketresolved.hashCode ^
        TicketType.hashCode ^
        requests.hashCode ^
        calls.hashCode ^
        datecreated.hashCode ^
        colseReason.hashCode ^
        notes.hashCode ^
        others.hashCode ^
        actions.hashCode;
  }
}

class CustomerModel {
  int customer_ID;

  String cusotmerName;

  List<String> mobilenum;

  String covernorate;

  String area;

  String adress;

  String clientStatus;

  List<TicketModel> tickets;

  List<CallInfo> calls;

  int lastUpdated;
  CustomerModel({
    required this.customer_ID,
    required this.cusotmerName,
    required this.mobilenum,
    required this.covernorate,
    required this.area,
    required this.adress,
    required this.clientStatus,
    required this.tickets,
    required this.calls,
    required this.lastUpdated,
  });

  CustomerModel copyWith({
    int? customer_ID,
    String? cusotmerName,
    List<String>? mobilenum,
    String? covernorate,
    String? area,
    String? adress,
    String? clientStatus,
    List<TicketModel>? tickets,
    List<CallInfo>? calls,
    int? lastUpdated,
  }) {
    return CustomerModel(
      customer_ID: customer_ID ?? this.customer_ID,
      cusotmerName: cusotmerName ?? this.cusotmerName,
      mobilenum: mobilenum ?? this.mobilenum,
      covernorate: covernorate ?? this.covernorate,
      area: area ?? this.area,
      adress: adress ?? this.adress,
      clientStatus: clientStatus ?? this.clientStatus,
      tickets: tickets ?? this.tickets,
      calls: calls ?? this.calls,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customer_ID': customer_ID,
      'cusotmerName': cusotmerName,
      'mobilenum': mobilenum,
      'covernorate': covernorate,
      'area': area,
      'adress': adress,
      'clientStatus': clientStatus,
      'tickets': tickets.map((x) => x.toMap()).toList(),
      'calls': calls.map((x) => x.toMap()).toList(),
      'lastUpdated': lastUpdated,
    };
  }

  factory CustomerModel.fromMap(Map<String, dynamic> map) {
    return CustomerModel(
      customer_ID: map['customer_ID'] as int,
      cusotmerName: map['cusotmerName'] as String,
      mobilenum: List<String>.from(
          (map['mobilenum'] == null ? [] : map['mobilenum'] as List<dynamic>)),
      covernorate: map['covernorate'] as String,
      area: map['area'] as String,
      adress: map['adress'] as String,
      clientStatus: map['clientStatus'] as String,
      tickets: List<TicketModel>.from(
        (map['tickets'] == null ? [] : map['tickets'] as List<dynamic>)
            .map<TicketModel>(
          (x) => TicketModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      calls: List<CallInfo>.from(
        (map['calls'] == null ? [] : map['calls'] as List<dynamic>)
            .map<CallInfo>(
          (x) => CallInfo.fromMap(x as Map<String, dynamic>),
        ),
      ),
      lastUpdated: map['lastUpdated'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerModel.fromJson(String source) =>
      CustomerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CustomerModel(customer_ID: $customer_ID, cusotmerName: $cusotmerName, mobilenum: $mobilenum, covernorate: $covernorate, area: $area, adress: $adress, clientStatus: $clientStatus, tickets: $tickets, calls: $calls, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(covariant CustomerModel other) {
    if (identical(this, other)) return true;

    return other.customer_ID == customer_ID &&
        other.cusotmerName == cusotmerName &&
        listEquals(other.mobilenum, mobilenum) &&
        other.covernorate == covernorate &&
        other.area == area &&
        other.adress == adress &&
        other.clientStatus == clientStatus &&
        listEquals(other.tickets, tickets) &&
        listEquals(other.calls, calls) &&
        other.lastUpdated == lastUpdated;
  }

  @override
  int get hashCode {
    return customer_ID.hashCode ^
        cusotmerName.hashCode ^
        mobilenum.hashCode ^
        covernorate.hashCode ^
        area.hashCode ^
        adress.hashCode ^
        clientStatus.hashCode ^
        tickets.hashCode ^
        calls.hashCode ^
        lastUpdated.hashCode;
  }
}

class ProductInfo {
  int ID;

  String ProdcutType;

  String ProductName;

  int L;

  int W;

  int H;

  int Quantity;

  String PurcheLocation;

  DateTime PurcheDate;
  ProductInfo({
    required this.ID,
    required this.ProdcutType,
    required this.ProductName,
    required this.L,
    required this.W,
    required this.H,
    required this.Quantity,
    required this.PurcheLocation,
    required this.PurcheDate,
  });

  ProductInfo copyWith({
    int? ID,
    String? ProdcutType,
    String? ProductName,
    int? L,
    int? W,
    int? H,
    int? Quantity,
    String? PurcheLocation,
    DateTime? PurcheDate,
  }) {
    return ProductInfo(
      ID: ID ?? this.ID,
      ProdcutType: ProdcutType ?? this.ProdcutType,
      ProductName: ProductName ?? this.ProductName,
      L: L ?? this.L,
      W: W ?? this.W,
      H: H ?? this.H,
      Quantity: Quantity ?? this.Quantity,
      PurcheLocation: PurcheLocation ?? this.PurcheLocation,
      PurcheDate: PurcheDate ?? this.PurcheDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ID': ID,
      'ProdcutType': ProdcutType,
      'ProductName': ProductName,
      'L': L,
      'W': W,
      'H': H,
      'Quantity': Quantity,
      'PurcheLocation': PurcheLocation,
      'PurcheDate': PurcheDate.millisecondsSinceEpoch,
    };
  }

  factory ProductInfo.fromMap(Map<String, dynamic> map) {
    return ProductInfo(
      ID: map['ID'] as int,
      ProdcutType: map['ProdcutType'] as String,
      ProductName: map['ProductName'] as String,
      L: map['L'] as int,
      W: map['W'] as int,
      H: map['H'] as int,
      Quantity: map['Quantity'] as int,
      PurcheLocation: map['PurcheLocation'] as String,
      PurcheDate: DateTime.fromMillisecondsSinceEpoch(map['PurcheDate'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductInfo.fromJson(String source) =>
      ProductInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductInfo(ID: $ID, ProdcutType: $ProdcutType, ProductName: $ProductName, L: $L, W: $W, H: $H, Quantity: $Quantity, PurcheLocation: $PurcheLocation, PurcheDate: $PurcheDate)';
  }

  @override
  bool operator ==(covariant ProductInfo other) {
    if (identical(this, other)) return true;

    return other.ID == ID &&
        other.ProdcutType == ProdcutType &&
        other.ProductName == ProductName &&
        other.L == L &&
        other.W == W &&
        other.H == H &&
        other.Quantity == Quantity &&
        other.PurcheLocation == PurcheLocation &&
        other.PurcheDate == PurcheDate;
  }

  @override
  int get hashCode {
    return ID.hashCode ^
        ProdcutType.hashCode ^
        ProductName.hashCode ^
        L.hashCode ^
        W.hashCode ^
        H.hashCode ^
        Quantity.hashCode ^
        PurcheLocation.hashCode ^
        PurcheDate.hashCode;
  }
}

class CallInfo {
  int callSerial;

  int CallInfo_ID;

  String callRecipient;

  DateTime callDate;

  String calltype;

  String callReason;

  String callReasonINdetails;

  String callresult;
  CallInfo({
    required this.callSerial,
    required this.CallInfo_ID,
    required this.callRecipient,
    required this.callDate,
    required this.calltype,
    required this.callReason,
    required this.callReasonINdetails,
    required this.callresult,
  });

  CallInfo copyWith({
    int? callSerial,
    int? CallInfo_ID,
    String? callRecipient,
    DateTime? callDate,
    String? calltype,
    String? callReason,
    String? callReasonINdetails,
    String? callresult,
  }) {
    return CallInfo(
      callSerial: callSerial ?? this.callSerial,
      CallInfo_ID: CallInfo_ID ?? this.CallInfo_ID,
      callRecipient: callRecipient ?? this.callRecipient,
      callDate: callDate ?? this.callDate,
      calltype: calltype ?? this.calltype,
      callReason: callReason ?? this.callReason,
      callReasonINdetails: callReasonINdetails ?? this.callReasonINdetails,
      callresult: callresult ?? this.callresult,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callSerial': callSerial,
      'CallInfo_ID': CallInfo_ID,
      'callRecipient': callRecipient,
      'callDate': callDate.millisecondsSinceEpoch,
      'calltype': calltype,
      'callReason': callReason,
      'callReasonINdetails': callReasonINdetails,
      'callresult': callresult,
    };
  }

  factory CallInfo.fromMap(Map<String, dynamic> map) {
    return CallInfo(
      callSerial: map['callSerial'] as int,
      CallInfo_ID: map['CallInfo_ID'] as int,
      callRecipient: map['callRecipient'] as String,
      callDate: DateTime.fromMillisecondsSinceEpoch(map['callDate'] as int),
      calltype: map['calltype'] as String,
      callReason: map['callReason'] as String,
      callReasonINdetails: map['callReasonINdetails'] as String,
      callresult: map['callresult'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CallInfo.fromJson(String source) =>
      CallInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CallInfo(callSerial: $callSerial, CallInfo_ID: $CallInfo_ID, callRecipient: $callRecipient, callDate: $callDate, calltype: $calltype, callReason: $callReason, callReasonINdetails: $callReasonINdetails, callresult: $callresult)';
  }

  @override
  bool operator ==(covariant CallInfo other) {
    if (identical(this, other)) return true;

    return other.callSerial == callSerial &&
        other.CallInfo_ID == CallInfo_ID &&
        other.callRecipient == callRecipient &&
        other.callDate == callDate &&
        other.calltype == calltype &&
        other.callReason == callReason &&
        other.callReasonINdetails == callReasonINdetails &&
        other.callresult == callresult;
  }

  @override
  int get hashCode {
    return callSerial.hashCode ^
        CallInfo_ID.hashCode ^
        callRecipient.hashCode ^
        callDate.hashCode ^
        calltype.hashCode ^
        callReason.hashCode ^
        callReasonINdetails.hashCode ^
        callresult.hashCode;
  }
}

class RequstesMolel {
  int Request_ID;
  int Request_serial;
  String reqreqson;
  String reqreasonInDetails;
  ProductInfo pfodcut;
  // المعاينه
  bool visited;
  DateTime visitingdate;
  String visitResult;
  String prductuionManagerdecision;
  bool choice1Accetp;
  bool choice1refuse;
  String choice1refusereason;
//استبدال لنفس النوع
  bool replaceToSameModel;
  String L2;
  String W2;
  String H2;
  double cost1;
  bool choice2Accetp;
  bool choice2refuse;
  String choice2refusereason;
  bool pulled1;
  DateTime pulledDate1;
  bool deleverd1;
  DateTime deleverdDate1;
//استبدال لنوع اخر
  bool replaceTosnotherModel;
  String replaceToBrandName;
  String replaceToProdcutName;
  String L3;
  String W3;
  String H3;
  double cost2;
  bool choice3Accetp;
  bool choice3refuse;
  String choice3refusereason;
  bool pulled2;
  DateTime pulledDate2;
  bool deleverd2;
  DateTime deleverdDate2;
//صيانه
  bool maintainace;
  String maintanancedescription;
  double cost3;
  bool choice4Accetp;
  bool choice4refuse;
  String choice4refusereason;
  bool pulled3;
  DateTime pulledDate3;
  bool deleverd3;
  DateTime deleverdDate3;
  String finalDicition;
  bool colsedMantananceReq;
  String colsedMantananceReqreason;
  //--------------------
  List<ActionModel> actions;
  RequstesMolel({
    required this.Request_ID,
    required this.Request_serial,
    required this.reqreqson,
    required this.reqreasonInDetails,
    required this.pfodcut,
    required this.visited,
    required this.visitingdate,
    required this.visitResult,
    required this.prductuionManagerdecision,
    required this.choice1Accetp,
    required this.choice1refuse,
    required this.choice1refusereason,
    required this.replaceToSameModel,
    required this.L2,
    required this.W2,
    required this.H2,
    required this.cost1,
    required this.choice2Accetp,
    required this.choice2refuse,
    required this.choice2refusereason,
    required this.pulled1,
    required this.pulledDate1,
    required this.deleverd1,
    required this.deleverdDate1,
    required this.replaceTosnotherModel,
    required this.replaceToBrandName,
    required this.replaceToProdcutName,
    required this.L3,
    required this.W3,
    required this.H3,
    required this.cost2,
    required this.choice3Accetp,
    required this.choice3refuse,
    required this.choice3refusereason,
    required this.pulled2,
    required this.pulledDate2,
    required this.deleverd2,
    required this.deleverdDate2,
    required this.maintainace,
    required this.maintanancedescription,
    required this.cost3,
    required this.choice4Accetp,
    required this.choice4refuse,
    required this.choice4refusereason,
    required this.pulled3,
    required this.pulledDate3,
    required this.deleverd3,
    required this.deleverdDate3,
    required this.finalDicition,
    required this.colsedMantananceReq,
    required this.colsedMantananceReqreason,
    required this.actions,
  });

  RequstesMolel copyWith({
    int? Request_ID,
    int? Request_serial,
    String? reqreqson,
    String? reqreasonInDetails,
    ProductInfo? pfodcut,
    bool? visited,
    DateTime? visitingdate,
    String? visitResult,
    String? prductuionManagerdecision,
    bool? choice1Accetp,
    bool? choice1refuse,
    String? choice1refusereason,
    bool? replaceToSameModel,
    String? L2,
    String? W2,
    String? H2,
    double? cost1,
    bool? choice2Accetp,
    bool? choice2refuse,
    String? choice2refusereason,
    bool? pulled1,
    DateTime? pulledDate1,
    bool? deleverd1,
    DateTime? deleverdDate1,
    bool? replaceTosnotherModel,
    String? replaceToBrandName,
    String? replaceToProdcutName,
    String? L3,
    String? W3,
    String? H3,
    double? cost2,
    bool? choice3Accetp,
    bool? choice3refuse,
    String? choice3refusereason,
    bool? pulled2,
    DateTime? pulledDate2,
    bool? deleverd2,
    DateTime? deleverdDate2,
    bool? maintainace,
    String? maintanancedescription,
    double? cost3,
    bool? choice4Accetp,
    bool? choice4refuse,
    String? choice4refusereason,
    bool? pulled3,
    DateTime? pulledDate3,
    bool? deleverd3,
    DateTime? deleverdDate3,
    String? finalDicition,
    bool? colsedMantananceReq,
    String? colsedMantananceReqreason,
    List<ActionModel>? actions,
  }) {
    return RequstesMolel(
      Request_ID: Request_ID ?? this.Request_ID,
      Request_serial: Request_serial ?? this.Request_serial,
      reqreqson: reqreqson ?? this.reqreqson,
      reqreasonInDetails: reqreasonInDetails ?? this.reqreasonInDetails,
      pfodcut: pfodcut ?? this.pfodcut,
      visited: visited ?? this.visited,
      visitingdate: visitingdate ?? this.visitingdate,
      visitResult: visitResult ?? this.visitResult,
      prductuionManagerdecision:
          prductuionManagerdecision ?? this.prductuionManagerdecision,
      choice1Accetp: choice1Accetp ?? this.choice1Accetp,
      choice1refuse: choice1refuse ?? this.choice1refuse,
      choice1refusereason: choice1refusereason ?? this.choice1refusereason,
      replaceToSameModel: replaceToSameModel ?? this.replaceToSameModel,
      L2: L2 ?? this.L2,
      W2: W2 ?? this.W2,
      H2: H2 ?? this.H2,
      cost1: cost1 ?? this.cost1,
      choice2Accetp: choice2Accetp ?? this.choice2Accetp,
      choice2refuse: choice2refuse ?? this.choice2refuse,
      choice2refusereason: choice2refusereason ?? this.choice2refusereason,
      pulled1: pulled1 ?? this.pulled1,
      pulledDate1: pulledDate1 ?? this.pulledDate1,
      deleverd1: deleverd1 ?? this.deleverd1,
      deleverdDate1: deleverdDate1 ?? this.deleverdDate1,
      replaceTosnotherModel:
          replaceTosnotherModel ?? this.replaceTosnotherModel,
      replaceToBrandName: replaceToBrandName ?? this.replaceToBrandName,
      replaceToProdcutName: replaceToProdcutName ?? this.replaceToProdcutName,
      L3: L3 ?? this.L3,
      W3: W3 ?? this.W3,
      H3: H3 ?? this.H3,
      cost2: cost2 ?? this.cost2,
      choice3Accetp: choice3Accetp ?? this.choice3Accetp,
      choice3refuse: choice3refuse ?? this.choice3refuse,
      choice3refusereason: choice3refusereason ?? this.choice3refusereason,
      pulled2: pulled2 ?? this.pulled2,
      pulledDate2: pulledDate2 ?? this.pulledDate2,
      deleverd2: deleverd2 ?? this.deleverd2,
      deleverdDate2: deleverdDate2 ?? this.deleverdDate2,
      maintainace: maintainace ?? this.maintainace,
      maintanancedescription:
          maintanancedescription ?? this.maintanancedescription,
      cost3: cost3 ?? this.cost3,
      choice4Accetp: choice4Accetp ?? this.choice4Accetp,
      choice4refuse: choice4refuse ?? this.choice4refuse,
      choice4refusereason: choice4refusereason ?? this.choice4refusereason,
      pulled3: pulled3 ?? this.pulled3,
      pulledDate3: pulledDate3 ?? this.pulledDate3,
      deleverd3: deleverd3 ?? this.deleverd3,
      deleverdDate3: deleverdDate3 ?? this.deleverdDate3,
      finalDicition: finalDicition ?? this.finalDicition,
      colsedMantananceReq: colsedMantananceReq ?? this.colsedMantananceReq,
      colsedMantananceReqreason:
          colsedMantananceReqreason ?? this.colsedMantananceReqreason,
      actions: actions ?? this.actions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Request_ID': Request_ID,
      'Request_serial': Request_serial,
      'reqreqson': reqreqson,
      'reqreasonInDetails': reqreasonInDetails,
      'pfodcut': pfodcut.toMap(),
      'visited': visited,
      'visitingdate': visitingdate.millisecondsSinceEpoch,
      'visitResult': visitResult,
      'prductuionManagerdecision': prductuionManagerdecision,
      'choice1Accetp': choice1Accetp,
      'choice1refuse': choice1refuse,
      'choice1refusereason': choice1refusereason,
      'replaceToSameModel': replaceToSameModel,
      'L2': L2,
      'W2': W2,
      'H2': H2,
      'cost1': cost1,
      'choice2Accetp': choice2Accetp,
      'choice2refuse': choice2refuse,
      'choice2refusereason': choice2refusereason,
      'pulled1': pulled1,
      'pulledDate1': pulledDate1.millisecondsSinceEpoch,
      'deleverd1': deleverd1,
      'deleverdDate1': deleverdDate1.millisecondsSinceEpoch,
      'replaceTosnotherModel': replaceTosnotherModel,
      'replaceToBrandName': replaceToBrandName,
      'replaceToProdcutName': replaceToProdcutName,
      'L3': L3,
      'W3': W3,
      'H3': H3,
      'cost2': cost2,
      'choice3Accetp': choice3Accetp,
      'choice3refuse': choice3refuse,
      'choice3refusereason': choice3refusereason,
      'pulled2': pulled2,
      'pulledDate2': pulledDate2.millisecondsSinceEpoch,
      'deleverd2': deleverd2,
      'deleverdDate2': deleverdDate2.millisecondsSinceEpoch,
      'maintainace': maintainace,
      'maintanancedescription': maintanancedescription,
      'cost3': cost3,
      'choice4Accetp': choice4Accetp,
      'choice4refuse': choice4refuse,
      'choice4refusereason': choice4refusereason,
      'pulled3': pulled3,
      'pulledDate3': pulledDate3.millisecondsSinceEpoch,
      'deleverd3': deleverd3,
      'deleverdDate3': deleverdDate3.millisecondsSinceEpoch,
      'finalDicition': finalDicition,
      'colsedMantananceReq': colsedMantananceReq,
      'colsedMantananceReqreason': colsedMantananceReqreason,
      'actions': actions.map((x) => x.toMap()).toList(),
    };
  }

  factory RequstesMolel.fromMap(Map<String, dynamic> map) {
    return RequstesMolel(
      Request_ID: map['Request_ID'] as int,
      Request_serial: map['Request_serial'] as int,
      reqreqson: map['reqreqson'] as String,
      reqreasonInDetails: map['reqreasonInDetails'] as String,
      pfodcut: ProductInfo.fromMap(map['pfodcut'] as Map<String, dynamic>),
      visited: map['visited'] as bool,
      visitingdate:
          DateTime.fromMillisecondsSinceEpoch(map['visitingdate'] as int),
      visitResult: map['visitResult'] as String,
      prductuionManagerdecision: map['prductuionManagerdecision'] as String,
      choice1Accetp: map['choice1Accetp'] as bool,
      choice1refuse: map['choice1refuse'] as bool,
      choice1refusereason: map['choice1refusereason'] as String,
      replaceToSameModel: map['replaceToSameModel'] as bool,
      L2: map['L2'] as String,
      W2: map['W2'] as String,
      H2: map['H2'] as String,
      cost1: map['cost1'] as double,
      choice2Accetp: map['choice2Accetp'] as bool,
      choice2refuse: map['choice2refuse'] as bool,
      choice2refusereason: map['choice2refusereason'] as String,
      pulled1: map['pulled1'] as bool,
      pulledDate1:
          DateTime.fromMillisecondsSinceEpoch(map['pulledDate1'] as int),
      deleverd1: map['deleverd1'] as bool,
      deleverdDate1:
          DateTime.fromMillisecondsSinceEpoch(map['deleverdDate1'] as int),
      replaceTosnotherModel: map['replaceTosnotherModel'] as bool,
      replaceToBrandName: map['replaceToBrandName'] as String,
      replaceToProdcutName: map['replaceToProdcutName'] as String,
      L3: map['L3'] as String,
      W3: map['W3'] as String,
      H3: map['H3'] as String,
      cost2: map['cost2'] as double,
      choice3Accetp: map['choice3Accetp'] as bool,
      choice3refuse: map['choice3refuse'] as bool,
      choice3refusereason: map['choice3refusereason'] as String,
      pulled2: map['pulled2'] as bool,
      pulledDate2:
          DateTime.fromMillisecondsSinceEpoch(map['pulledDate2'] as int),
      deleverd2: map['deleverd2'] as bool,
      deleverdDate2:
          DateTime.fromMillisecondsSinceEpoch(map['deleverdDate2'] as int),
      maintainace: map['maintainace'] as bool,
      maintanancedescription: map['maintanancedescription'] as String,
      cost3: map['cost3'] as double,
      choice4Accetp: map['choice4Accetp'] as bool,
      choice4refuse: map['choice4refuse'] as bool,
      choice4refusereason: map['choice4refusereason'] as String,
      pulled3: map['pulled3'] as bool,
      pulledDate3:
          DateTime.fromMillisecondsSinceEpoch(map['pulledDate3'] as int),
      deleverd3: map['deleverd3'] as bool,
      deleverdDate3:
          DateTime.fromMillisecondsSinceEpoch(map['deleverdDate3'] as int),
      finalDicition: map['finalDicition'] as String,
      colsedMantananceReq: map['colsedMantananceReq'] as bool,
      colsedMantananceReqreason: map['colsedMantananceReqreason'] as String,
      actions: List<ActionModel>.from(
        (map['actions'] as List<dynamic>).map<ActionModel>(
          (x) => ActionModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory RequstesMolel.fromJson(String source) =>
      RequstesMolel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RequstesMolel(Request_ID: $Request_ID, Request_serial: $Request_serial, reqreqson: $reqreqson, reqreasonInDetails: $reqreasonInDetails, pfodcut: $pfodcut, visited: $visited, visitingdate: $visitingdate, visitResult: $visitResult, prductuionManagerdecision: $prductuionManagerdecision, choice1Accetp: $choice1Accetp, choice1refuse: $choice1refuse, choice1refusereason: $choice1refusereason, replaceToSameModel: $replaceToSameModel, L2: $L2, W2: $W2, H2: $H2, cost1: $cost1, choice2Accetp: $choice2Accetp, choice2refuse: $choice2refuse, choice2refusereason: $choice2refusereason, pulled1: $pulled1, pulledDate1: $pulledDate1, deleverd1: $deleverd1, deleverdDate1: $deleverdDate1, replaceTosnotherModel: $replaceTosnotherModel, replaceToBrandName: $replaceToBrandName, replaceToProdcutName: $replaceToProdcutName, L3: $L3, W3: $W3, H3: $H3, cost2: $cost2, choice3Accetp: $choice3Accetp, choice3refuse: $choice3refuse, choice3refusereason: $choice3refusereason, pulled2: $pulled2, pulledDate2: $pulledDate2, deleverd2: $deleverd2, deleverdDate2: $deleverdDate2, maintainace: $maintainace, maintanancedescription: $maintanancedescription, cost3: $cost3, choice4Accetp: $choice4Accetp, choice4refuse: $choice4refuse, choice4refusereason: $choice4refusereason, pulled3: $pulled3, pulledDate3: $pulledDate3, deleverd3: $deleverd3, deleverdDate3: $deleverdDate3, finalDicition: $finalDicition, colsedMantananceReq: $colsedMantananceReq, colsedMantananceReqreason: $colsedMantananceReqreason, actions: $actions)';
  }

  @override
  bool operator ==(covariant RequstesMolel other) {
    if (identical(this, other)) return true;

    return other.Request_ID == Request_ID &&
        other.Request_serial == Request_serial &&
        other.reqreqson == reqreqson &&
        other.reqreasonInDetails == reqreasonInDetails &&
        other.pfodcut == pfodcut &&
        other.visited == visited &&
        other.visitingdate == visitingdate &&
        other.visitResult == visitResult &&
        other.prductuionManagerdecision == prductuionManagerdecision &&
        other.choice1Accetp == choice1Accetp &&
        other.choice1refuse == choice1refuse &&
        other.choice1refusereason == choice1refusereason &&
        other.replaceToSameModel == replaceToSameModel &&
        other.L2 == L2 &&
        other.W2 == W2 &&
        other.H2 == H2 &&
        other.cost1 == cost1 &&
        other.choice2Accetp == choice2Accetp &&
        other.choice2refuse == choice2refuse &&
        other.choice2refusereason == choice2refusereason &&
        other.pulled1 == pulled1 &&
        other.pulledDate1 == pulledDate1 &&
        other.deleverd1 == deleverd1 &&
        other.deleverdDate1 == deleverdDate1 &&
        other.replaceTosnotherModel == replaceTosnotherModel &&
        other.replaceToBrandName == replaceToBrandName &&
        other.replaceToProdcutName == replaceToProdcutName &&
        other.L3 == L3 &&
        other.W3 == W3 &&
        other.H3 == H3 &&
        other.cost2 == cost2 &&
        other.choice3Accetp == choice3Accetp &&
        other.choice3refuse == choice3refuse &&
        other.choice3refusereason == choice3refusereason &&
        other.pulled2 == pulled2 &&
        other.pulledDate2 == pulledDate2 &&
        other.deleverd2 == deleverd2 &&
        other.deleverdDate2 == deleverdDate2 &&
        other.maintainace == maintainace &&
        other.maintanancedescription == maintanancedescription &&
        other.cost3 == cost3 &&
        other.choice4Accetp == choice4Accetp &&
        other.choice4refuse == choice4refuse &&
        other.choice4refusereason == choice4refusereason &&
        other.pulled3 == pulled3 &&
        other.pulledDate3 == pulledDate3 &&
        other.deleverd3 == deleverd3 &&
        other.deleverdDate3 == deleverdDate3 &&
        other.finalDicition == finalDicition &&
        other.colsedMantananceReq == colsedMantananceReq &&
        other.colsedMantananceReqreason == colsedMantananceReqreason &&
        listEquals(other.actions, actions);
  }

  @override
  int get hashCode {
    return Request_ID.hashCode ^
        Request_serial.hashCode ^
        reqreqson.hashCode ^
        reqreasonInDetails.hashCode ^
        pfodcut.hashCode ^
        visited.hashCode ^
        visitingdate.hashCode ^
        visitResult.hashCode ^
        prductuionManagerdecision.hashCode ^
        choice1Accetp.hashCode ^
        choice1refuse.hashCode ^
        choice1refusereason.hashCode ^
        replaceToSameModel.hashCode ^
        L2.hashCode ^
        W2.hashCode ^
        H2.hashCode ^
        cost1.hashCode ^
        choice2Accetp.hashCode ^
        choice2refuse.hashCode ^
        choice2refusereason.hashCode ^
        pulled1.hashCode ^
        pulledDate1.hashCode ^
        deleverd1.hashCode ^
        deleverdDate1.hashCode ^
        replaceTosnotherModel.hashCode ^
        replaceToBrandName.hashCode ^
        replaceToProdcutName.hashCode ^
        L3.hashCode ^
        W3.hashCode ^
        H3.hashCode ^
        cost2.hashCode ^
        choice3Accetp.hashCode ^
        choice3refuse.hashCode ^
        choice3refusereason.hashCode ^
        pulled2.hashCode ^
        pulledDate2.hashCode ^
        deleverd2.hashCode ^
        deleverdDate2.hashCode ^
        maintainace.hashCode ^
        maintanancedescription.hashCode ^
        cost3.hashCode ^
        choice4Accetp.hashCode ^
        choice4refuse.hashCode ^
        choice4refusereason.hashCode ^
        pulled3.hashCode ^
        pulledDate3.hashCode ^
        deleverd3.hashCode ^
        deleverdDate3.hashCode ^
        finalDicition.hashCode ^
        colsedMantananceReq.hashCode ^
        colsedMantananceReqreason.hashCode ^
        actions.hashCode;
  }
}

class ActionModel {
  String action;
  String who;
  DateTime when;
  ActionModel({
    required this.action,
    required this.who,
    required this.when,
  });

  ActionModel copyWith({
    String? action,
    String? who,
    DateTime? when,
  }) {
    return ActionModel(
      action: action ?? this.action,
      who: who ?? this.who,
      when: when ?? this.when,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'who': who,
      'when': when.millisecondsSinceEpoch,
    };
  }

  factory ActionModel.fromMap(Map<String, dynamic> map) {
    return ActionModel(
      action: map['action'] as String,
      who: map['who'] as String,
      when: DateTime.fromMillisecondsSinceEpoch(map['when'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory ActionModel.fromJson(String source) =>
      ActionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ActionModel(action: $action, who: $who, when: $when)';

  @override
  bool operator ==(covariant ActionModel other) {
    if (identical(this, other)) return true;

    return other.action == action && other.who == who && other.when == when;
  }

  @override
  int get hashCode => action.hashCode ^ who.hashCode ^ when.hashCode;
}

class ProdcutsModel {
  int id;
  String companyName;
  List<String> prodcuts;
  List<ActionModel> actions;
  ProdcutsModel({
    required this.id,
    required this.companyName,
    required this.prodcuts,
    required this.actions,
  });

  ProdcutsModel copyWith({
    int? id,
    String? companyName,
    List<String>? prodcuts,
    List<ActionModel>? actions,
  }) {
    return ProdcutsModel(
      id: id ?? this.id,
      companyName: companyName ?? this.companyName,
      prodcuts: prodcuts ?? this.prodcuts,
      actions: actions ?? this.actions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'companyName': companyName,
      'prodcuts': prodcuts,
      'actions': actions.map((x) => x.toMap()).toList(),
    };
  }

  factory ProdcutsModel.fromMap(Map<String, dynamic> map) {
    return ProdcutsModel(
      id: map['id'] as int,
      companyName: map['companyName'] as String,
      prodcuts: List<String>.from((map['prodcuts'] as List<dynamic>)),
      actions: List<ActionModel>.from(
        (map['actions'] as List<dynamic>).map<ActionModel>(
          (x) => ActionModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdcutsModel.fromJson(String source) =>
      ProdcutsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProdcutsModel(id: $id, companyName: $companyName, prodcuts: $prodcuts, actions: $actions)';
  }

  @override
  int get hashCode {
    return id.hashCode ^
        companyName.hashCode ^
        prodcuts.hashCode ^
        actions.hashCode;
  }
}

class CallTypeModel {
  int id;
  String callType;
  List<ActionModel> actions;
  CallTypeModel({
    required this.id,
    required this.callType,
    required this.actions,
  });

  CallTypeModel copyWith({
    int? id,
    String? callType,
    List<ActionModel>? actions,
  }) {
    return CallTypeModel(
      id: id ?? this.id,
      callType: callType ?? this.callType,
      actions: actions ?? this.actions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'callType': callType,
      'actions': actions.map((x) => x.toMap()).toList(),
    };
  }

  factory CallTypeModel.fromMap(Map<String, dynamic> map) {
    return CallTypeModel(
      id: map['id'] as int,
      callType: map['callType'] as String,
      actions: List<ActionModel>.from(
        (map['actions'] as List<dynamic>).map<ActionModel>(
          (x) => ActionModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CallTypeModel.fromJson(String source) =>
      CallTypeModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CallTypeModel(id: $id, callType: $callType, actions: $actions)';

  @override
  int get hashCode => id.hashCode ^ callType.hashCode ^ actions.hashCode;
}

class ReqReasons {
  int id;
  String Reqreason;
  List<ActionModel> actions;
  ReqReasons({
    required this.id,
    required this.Reqreason,
    required this.actions,
  });

  ReqReasons copyWith({
    int? id,
    String? Reqreason,
    List<ActionModel>? actions,
  }) {
    return ReqReasons(
      id: id ?? this.id,
      Reqreason: Reqreason ?? this.Reqreason,
      actions: actions ?? this.actions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'Reqreason': Reqreason,
      'actions': actions.map((x) => x.toMap()).toList(),
    };
  }

  factory ReqReasons.fromMap(Map<String, dynamic> map) {
    return ReqReasons(
      id: map['id'] as int,
      Reqreason: map['Reqreason'] as String,
      actions: List<ActionModel>.from(
        (map['actions'] as List<dynamic>).map<ActionModel>(
          (x) => ActionModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ReqReasons.fromJson(String source) =>
      ReqReasons.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ReqReasons(id: $id, Reqreason: $Reqreason, actions: $actions)';

  @override
  bool operator ==(covariant ReqReasons other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.Reqreason == Reqreason &&
        listEquals(other.actions, actions);
  }

  @override
  int get hashCode => id.hashCode ^ Reqreason.hashCode ^ actions.hashCode;
}

extension C3 on List<ActionModel> {
  String get_Who_Of(String action) {
    return firstWhere(
      (element) => element.action == action,
      orElse: () => ActionModel(action: '', who: '', when: DateTime(0)),
    ).who;
  }

  //get fraction date for this action
  DateTime get_Date_of_action(String action) {
    return where((element) => element.action == action).isEmpty
        ? DateTime.utc(0)
        : where((element) => element.action == action).first.when;
  }

  // return true if action exist
  bool if_action_exist(String actiontitle) {
    return where((element) => element.action == actiontitle).isNotEmpty;
  }
}

class UserModel {
  int user_Id;
  String name;

  String email;
  String password;

  String uid;
  List<String> permitions;
  int updatedat;
  List<ActionModel> actions;
  UserModel({
    required this.user_Id,
    required this.name,
    required this.email,
    required this.password,
    required this.uid,
    required this.permitions,
    required this.updatedat,
    required this.actions,
  });

  UserModel copyWith({
    int? user_Id,
    String? name,
    String? email,
    String? password,
    String? uid,
    List<String>? permitions,
    int? updatedat,
    List<ActionModel>? actions,
  }) {
    return UserModel(
      user_Id: user_Id ?? this.user_Id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      uid: uid ?? this.uid,
      permitions: permitions ?? this.permitions,
      updatedat: updatedat ?? this.updatedat,
      actions: actions ?? this.actions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_Id': user_Id,
      'name': name,
      'email': email,
      'password': password,
      'uid': uid,
      'permitions': permitions,
      'updatedat': updatedat,
      'actions': actions.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      user_Id: map['user_Id'] as int,
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      uid: map['uid'] as String,
      permitions: List<String>.from((map['permitions'] as List<dynamic>)),
      updatedat: map['updatedat'] as int,
      actions: List<ActionModel>.from(
        (map['actions'] as List<dynamic>).map<ActionModel>(
          (x) => ActionModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(user_Id: $user_Id, name: $name, email: $email, password: $password, uid: $uid, permitions: $permitions, updatedat: $updatedat, actions: $actions)';
  }

  @override
  int get hashCode {
    return user_Id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        password.hashCode ^
        uid.hashCode ^
        permitions.hashCode ^
        updatedat.hashCode ^
        actions.hashCode;
  }
}

enum UserAction {
  creat_user,
}

extension Q12 on UserAction {
  ActionModel get add {
    switch (this) {
      case UserAction.creat_user:
        return ActionModel(action: "creat_user", who: "", when: DateTime.now());
    }
  }

  String get getTitle {
    switch (this) {
      case UserAction.creat_user:
        return "creat_user";
    }
  }
}

enum TicketAction {
  creat_NewTicket,
  Ticket_Resolved,
  archive_Ticket,
}

extension Asd on TicketAction {
  ActionModel get add {
    switch (this) {
      case TicketAction.creat_NewTicket:
        return ActionModel(
            action: "creat_NewTicket", who: "", when: DateTime.now());
      case TicketAction.Ticket_Resolved:
        return ActionModel(
            action: "Ticket_Resolved", who: "", when: DateTime.now());
      case TicketAction.archive_Ticket:
        return ActionModel(
            action: "archive_Ticket", who: "", when: DateTime.now());
    }
  }

  String get getTitle {
    switch (this) {
      case TicketAction.creat_NewTicket:
        return "creat_NewTicket";
      case TicketAction.Ticket_Resolved:
        return "Ticket_Resolved";
      case TicketAction.archive_Ticket:
        return "archive_Ticket";
    }
  }
}

enum MaintainanceRequestAction {
  creat_NewRequest,
  visited,
  replaceToSameProdcut,
  replaceToAnotherProdcut,
  maintanance,
  ch1Agree,
  ch1disdisAgree,
  ch2Agree,
  ch2disdisAgree,
  ch3Agree,
  ch3disdisAgree,
  ch4Agree,
  ch4disdisAgree,
  pulled1,
  deleverd1,
  pulled2,
  deleverd2,
  pulled3,
  deleverd3,
}

extension Q13 on MaintainanceRequestAction {
  ActionModel get add {
    switch (this) {
      case MaintainanceRequestAction.creat_NewRequest:
        return ActionModel(
            action: "creat_NewRequest", who: "", when: DateTime.now());
      case MaintainanceRequestAction.visited:
        return ActionModel(action: "visited", who: "", when: DateTime.now());
      case MaintainanceRequestAction.replaceToSameProdcut:
        return ActionModel(
            action: "replaceToSameProdcut", who: "", when: DateTime.now());
      case MaintainanceRequestAction.replaceToAnotherProdcut:
        return ActionModel(
            action: "replaceToAnotherProdcut", who: "", when: DateTime.now());
      case MaintainanceRequestAction.maintanance:
        return ActionModel(
            action: "maintanance", who: "", when: DateTime.now());
      case MaintainanceRequestAction.ch1Agree:
        return ActionModel(action: "ch1Agree", who: "", when: DateTime.now());
      case MaintainanceRequestAction.ch1disdisAgree:
        return ActionModel(
            action: "ch1disdisAgree", who: "", when: DateTime.now());
      case MaintainanceRequestAction.ch2disdisAgree:
        return ActionModel(
            action: "ch2disdisAgree", who: "", when: DateTime.now());
      case MaintainanceRequestAction.ch3Agree:
        return ActionModel(action: "ch3Agree", who: "", when: DateTime.now());
      case MaintainanceRequestAction.ch3disdisAgree:
        return ActionModel(
            action: "ch3disdisAgree", who: "", when: DateTime.now());
      case MaintainanceRequestAction.ch4Agree:
        return ActionModel(action: "ch4Agree", who: "", when: DateTime.now());
      case MaintainanceRequestAction.ch4disdisAgree:
        return ActionModel(
            action: "ch4disdisAgree", who: "", when: DateTime.now());

      case MaintainanceRequestAction.ch2Agree:
        return ActionModel(action: "ch2Agree", who: "", when: DateTime.now());
      case MaintainanceRequestAction.pulled1:
        return ActionModel(action: "pulled1", who: "", when: DateTime.now());
      case MaintainanceRequestAction.deleverd1:
        return ActionModel(action: "deleverd1", who: "", when: DateTime.now());
      case MaintainanceRequestAction.pulled2:
        return ActionModel(action: "pulled2", who: "", when: DateTime.now());
      case MaintainanceRequestAction.deleverd2:
        return ActionModel(action: "deleverd2", who: "", when: DateTime.now());
      case MaintainanceRequestAction.pulled3:
        return ActionModel(action: "pulled3", who: "", when: DateTime.now());
      case MaintainanceRequestAction.deleverd3:
        return ActionModel(action: "deleverd3", who: "", when: DateTime.now());
    }
  }

  String get getTitle {
    switch (this) {
      case MaintainanceRequestAction.creat_NewRequest:
        return "creat_NewRequest";
      case MaintainanceRequestAction.visited:
        return "visited";
      case MaintainanceRequestAction.replaceToSameProdcut:
        return "replaceToSameProdcut";
      case MaintainanceRequestAction.replaceToAnotherProdcut:
        return "replaceToAnotherProdcut";
      case MaintainanceRequestAction.ch1Agree:
        return "ch1Agree";

      case MaintainanceRequestAction.ch1disdisAgree:
        return "ch1disdisAgree";

      case MaintainanceRequestAction.ch2Agree:
        return "ch2Agree";

      case MaintainanceRequestAction.ch2disdisAgree:
        return "ch2disdisAgree";

      case MaintainanceRequestAction.ch3Agree:
        return "ch3Agree";
      case MaintainanceRequestAction.ch3disdisAgree:
        return "ch3disdisAgree";
      case MaintainanceRequestAction.ch4Agree:
        return "ch4Agree";
      case MaintainanceRequestAction.ch4disdisAgree:
        return "ch4disdisAgree";

      case MaintainanceRequestAction.maintanance:
        return "maintanance";
      case MaintainanceRequestAction.pulled1:
        return "pulled1";
      case MaintainanceRequestAction.deleverd1:
        return "deleverd1";
      case MaintainanceRequestAction.pulled2:
        return "pulled2";
      case MaintainanceRequestAction.deleverd2:
        return "deleverd2";
      case MaintainanceRequestAction.pulled3:
        return "pulled3";
      case MaintainanceRequestAction.deleverd3:
        return "deleverd3";
    }
  }
}

enum ProdcutsAction {
  archive,
}

extension Q1222 on ProdcutsAction {
  ActionModel get add {
    switch (this) {
      case ProdcutsAction.archive:
        return ActionModel(action: "archive", who: "", when: DateTime.now());
    }
  }

  String get getTitle {
    switch (this) {
      case ProdcutsAction.archive:
        return "archive";
    }
  }
}

enum CallTypeAction {
  archive,
}

extension Dertyj on CallTypeAction {
  ActionModel get add {
    switch (this) {
      case CallTypeAction.archive:
        return ActionModel(action: "archive", who: "", when: DateTime.now());
    }
  }

  String get getTitle {
    switch (this) {
      case CallTypeAction.archive:
        return "archive";
    }
  }
}

enum ReaReasonAction {
  archive,
}

extension Dertyjdd on ReaReasonAction {
  ActionModel get add {
    switch (this) {
      case ReaReasonAction.archive:
        return ActionModel(action: "archive", who: "", when: DateTime.now());
    }
  }

  String get getTitle {
    switch (this) {
      case ReaReasonAction.archive:
        return "archive";
    }
  }
}
