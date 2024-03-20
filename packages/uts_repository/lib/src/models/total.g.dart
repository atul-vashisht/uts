// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'total.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Total _$TotalFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Total',
      json,
      ($checkedConvert) {
        final val = Total(
          grandTotal: $checkedConvert('GRAND_TOTAL', (v) => v as String?),
          psgnBooked: $checkedConvert('PSGN_BOOKED', (v) => v as int?),
          psgnCancelled: $checkedConvert('PSGN_CANCELLED', (v) => v as int?),
          bookedTxn: $checkedConvert('BOOKED_TXN', (v) => v as int?),
          cancelledTxn: $checkedConvert('CANCELLED_TXN', (v) => v as int?),
          creditAmt: $checkedConvert('CREDITAMT', (v) => v as String?),
          debitAmt: $checkedConvert('DEBITAMT', (v) => v as String?),
          netTktAmt: $checkedConvert('NET_TKT_AMT', (v) => v as String?),
          smcRchgAmt: $checkedConvert('SMCRCHGAMT', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'grandTotal': 'GRAND_TOTAL',
        'psgnBooked': 'PSGN_BOOKED',
        'psgnCancelled': 'PSGN_CANCELLED',
        'bookedTxn': 'BOOKED_TXN',
        'cancelledTxn': 'CANCELLED_TXN',
        'creditAmt': 'CREDITAMT',
        'debitAmt': 'DEBITAMT',
        'netTktAmt': 'NET_TKT_AMT',
        'smcRchgAmt': 'SMCRCHGAMT'
      },
    );

Map<String, dynamic> _$TotalToJson(Total instance) => <String, dynamic>{
      'GRAND_TOTAL': instance.grandTotal,
      'PSGN_BOOKED': instance.psgnBooked,
      'PSGN_CANCELLED': instance.psgnCancelled,
      'BOOKED_TXN': instance.bookedTxn,
      'CANCELLED_TXN': instance.cancelledTxn,
      'CREDITAMT': instance.creditAmt,
      'DEBITAMT': instance.debitAmt,
      'NET_TKT_AMT': instance.netTktAmt,
      'SMCRCHGAMT': instance.smcRchgAmt,
    };
