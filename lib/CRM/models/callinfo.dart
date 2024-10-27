// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class CallInfo {
  int callSerial;

  int CallInfo_ID;

  int customer_ID;

  int Ticket_ID;

  String callRecipient;

  DateTime callDate;

  String calltype;
  String callReason;
  String callReasonINdetails;
  String callresult;
  CallInfo({
    required this.callSerial,
    required this.CallInfo_ID,
    required this.customer_ID,
    required this.Ticket_ID,
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
    int? customer_ID,
    int? Ticket_ID,
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
      customer_ID: customer_ID ?? this.customer_ID,
      Ticket_ID: Ticket_ID ?? this.Ticket_ID,
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
      'customer_ID': customer_ID,
      'Ticket_ID': Ticket_ID,
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
      customer_ID: map['customer_ID'] as int,
      Ticket_ID: map['Ticket_ID'] as int,
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
    return 'CallInfo(callSerial: $callSerial, CallInfo_ID: $CallInfo_ID, customer_ID: $customer_ID, Ticket_ID: $Ticket_ID, callRecipient: $callRecipient, callDate: $callDate, calltype: $calltype, callReason: $callReason, callReasonINdetails: $callReasonINdetails, callresult: $callresult)';
  }

  @override
  bool operator ==(covariant CallInfo other) {
    if (identical(this, other)) return true;

    return other.callSerial == callSerial &&
        other.CallInfo_ID == CallInfo_ID &&
        other.customer_ID == customer_ID &&
        other.Ticket_ID == Ticket_ID &&
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
        customer_ID.hashCode ^
        Ticket_ID.hashCode ^
        callRecipient.hashCode ^
        callDate.hashCode ^
        calltype.hashCode ^
        callReason.hashCode ^
        callReasonINdetails.hashCode ^
        callresult.hashCode;
  }
}
