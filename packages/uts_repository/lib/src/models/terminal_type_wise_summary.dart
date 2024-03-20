import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'terminal_type_wise_summary.g.dart';


@JsonSerializable()
class TerminalTypeWiseSummary extends Equatable {

 const TerminalTypeWiseSummary({this.terminalType, this.psgnBooked, this.psgnCancelled, this.bookedTxn, this.cancelledTxn, this.creditAmt, this.debitAmt, this.netTktAmt, this.smcRchgAmt});
   //"TERMINAL_TYPE": "TVMKIOSKS",
  @JsonKey(name: 'TERMINAL_TYPE')
  final String? terminalType;

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
  factory TerminalTypeWiseSummary.fromJson(Map<String, dynamic> json) =>
      _$TerminalTypeWiseSummaryFromJson(json);

 Map<String, dynamic> toJson() => _$TerminalTypeWiseSummaryToJson(this);

  @override
  List<Object?> get props => [terminalType, psgnBooked, psgnCancelled, bookedTxn,
    cancelledTxn, creditAmt, debitAmt, netTktAmt, smcRchgAmt];
}