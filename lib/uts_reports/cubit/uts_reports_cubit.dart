import 'package:bloc/bloc.dart';
import 'package:uts_repository/uts_repository.dart';

import '../models/uts_reports_state.dart';



class UtsReportsCubit extends Cubit<UtsReportsState> {

  UtsReportsCubit({ required this.utsRepository}):super(const UtsReportsState());
  final UtsRepository utsRepository;

  Future<void> fetchUTSReportSummary() async{
    emit(
      state.copyWith(
          isLoading:true
      ),
    );
    final summary=await UtsRepository().getUTSSummary();
    emit(
      state.copyWith(
          summary:summary,
          isLoading:false
      ),
    );

  }


}
