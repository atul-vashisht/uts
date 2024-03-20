


import 'package:uts_api/uts_api.dart';

import 'models/summary.dart';

class UtsRepository {
  Future<Summary> getUTSSummary() async{
    final summary= await UtsApiClient().getUTSSummary();
    return Summary.fromJson(summary);
  }


}
