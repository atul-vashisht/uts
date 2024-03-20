import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'operator_wise_summary.dart';
import 'payment_mode_wise_summary.dart';
import 'terminal_type_wise_summary.dart';
import 'total.dart';
part 'summary.g.dart';

@JsonSerializable()
class Summary extends Equatable{
  const Summary({this.operatorWiseSummary, this.paymentModeWiseSummary, this.terminalTypeWiseSummary, this.total});
  @JsonKey(name: 'operator_wise_summary')
  final List<OperatorWiseSummary>? operatorWiseSummary;
  @JsonKey(name: 'payment_mode_wise_summary')
final List<PaymentModeWiseSummary>? paymentModeWiseSummary;
  @JsonKey(name: 'terminal_type_wise_summary')
final List<TerminalTypeWiseSummary>? terminalTypeWiseSummary;
  @JsonKey(name: 'total')
final List<Total>? total;
  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);

  Map<String, dynamic> toJson() => _$SummaryToJson(this);

  @override
  List<Object?> get props => [operatorWiseSummary, paymentModeWiseSummary, terminalTypeWiseSummary];
}