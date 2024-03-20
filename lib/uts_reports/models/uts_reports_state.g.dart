// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'uts_reports_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtsReportsState _$UtsReportsStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UtsReportsState',
      json,
      ($checkedConvert) {
        final val = UtsReportsState(
          summary: $checkedConvert(
              'summary',
              (v) => v == null
                  ? null
                  : Summary.fromJson(v as Map<String, dynamic>)),
          isLoading: $checkedConvert('is_loading', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {'isLoading': 'is_loading'},
    );
