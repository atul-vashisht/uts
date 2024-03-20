import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uts_repository/uts_repository.dart';

part 'uts_reports_state.g.dart';


@JsonSerializable()
final class UtsReportsState extends Equatable {
 const UtsReportsState({ this.summary, this.isLoading=false});
 final Summary? summary;
 final bool? isLoading;


 factory UtsReportsState.fromJson(Map<String, dynamic> json) =>
     _$UtsReportsStateFromJson(json);

 UtsReportsState copyWith({
   Summary? summary,
   bool? isLoading
 }) {
   return UtsReportsState(
     summary: summary ?? this.summary,
     isLoading: isLoading ?? this.isLoading,

   );
 }


  @override
  List<Object?> get props => [summary];
}
