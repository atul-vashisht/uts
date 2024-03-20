// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Summary _$SummaryFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Summary',
      json,
      ($checkedConvert) {
        final val = Summary(
          operatorWiseSummary: $checkedConvert(
              'operator_wise_summary',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      OperatorWiseSummary.fromJson(e as Map<String, dynamic>))
                  .toList()),
          paymentModeWiseSummary: $checkedConvert(
              'payment_mode_wise_summary',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => PaymentModeWiseSummary.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          terminalTypeWiseSummary: $checkedConvert(
              'terminal_type_wise_summary',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => TerminalTypeWiseSummary.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          total: $checkedConvert(
              'total',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Total.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'operatorWiseSummary': 'operator_wise_summary',
        'paymentModeWiseSummary': 'payment_mode_wise_summary',
        'terminalTypeWiseSummary': 'terminal_type_wise_summary'
      },
    );

Map<String, dynamic> _$SummaryToJson(Summary instance) => <String, dynamic>{
      'operator_wise_summary': instance.operatorWiseSummary,
      'payment_mode_wise_summary': instance.paymentModeWiseSummary,
      'terminal_type_wise_summary': instance.terminalTypeWiseSummary,
      'total': instance.total,
    };
