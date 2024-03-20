import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'operator_wise_summary.g.dart';


@JsonSerializable()
class OperatorWiseSummary extends Equatable {

    const OperatorWiseSummary({this.operatorCode, this.ticketType, this.psgnBooked, this.psgnCancelled, this.bookedTxn, this.cancelledTxn, this.creditAmt, this.debitAmt, this.netTktAmt, this.smcRchgAmt});

    //"OPERATORCODE": "ARA03K",
    @JsonKey(name: 'OPERATORCODE')
    final String? operatorCode;
    //"TICKET_TYPE": "P",
    @JsonKey(name: 'TICKET_TYPE')
    final String? ticketType;
    //"PSGN_BOOKED": 103,
    @JsonKey(name: 'PSGN_BOOKED')
    final int? psgnBooked;
    //"PSGN_CANCELLED": 0,
    @JsonKey(name: 'PSGN_CANCELLED')
    final int? psgnCancelled;
    //"BOOKED_TXN": 89,
    @JsonKey(name: 'BOOKED_TXN')
    final int? bookedTxn;
    //"CANCELLED_TXN": 0,
    @JsonKey(name: 'CANCELLED_TXN')
    final int? cancelledTxn;
    //"CREDITAMT": "0.00",
    @JsonKey(name: 'CREDITAMT')
    final String? creditAmt;
    //"DEBITAMT": "4735.00",
    @JsonKey(name: 'DEBITAMT')
    final String? debitAmt;
    //"NET_TKT_AMT": "4735.00",
    @JsonKey(name: 'NET_TKT_AMT')
    final String? netTktAmt;
    //"SMCRCHGAMT": "0.00"
    @JsonKey(name: 'SMCRCHGAMT')
    final String? smcRchgAmt;



    factory OperatorWiseSummary.fromJson(Map<String, dynamic> json) =>
        _$OperatorWiseSummaryFromJson(json);



    Map<String, dynamic> toJson() => _$OperatorWiseSummaryToJson(this);

  @override
  List<Object?> get props => [operatorCode,ticketType, psgnBooked, psgnCancelled, bookedTxn,
      cancelledTxn, creditAmt, debitAmt, netTktAmt, smcRchgAmt];
}