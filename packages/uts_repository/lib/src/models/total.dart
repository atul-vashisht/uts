import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'total.g.dart';


@JsonSerializable()
class Total extends Equatable  {
 const Total({this.grandTotal, this.psgnBooked, this.psgnCancelled, this.bookedTxn, this.cancelledTxn, this.creditAmt, this.debitAmt, this.netTktAmt, this.smcRchgAmt});
  // "GRAND_TOTAL": "GRANDTOTAL",
  @JsonKey(name: 'GRAND_TOTAL')
  final String? grandTotal;

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

  factory Total.fromJson(Map<String, dynamic> json) =>
      _$TotalFromJson(json);
 Map<String, dynamic> toJson() => _$TotalToJson(this);

  @override
  List<Object?> get props => [grandTotal, psgnBooked, psgnCancelled, bookedTxn,
    cancelledTxn, creditAmt, debitAmt, netTktAmt, smcRchgAmt];
}