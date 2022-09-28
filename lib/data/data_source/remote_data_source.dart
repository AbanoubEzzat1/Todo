import '../network/app_api.dart';
import '../network/responsemodel.dart';
import '../responses/responses.dart';

abstract class ReomteDataSource {
  Future<NoteResponse> getAllNotes();
}

class ReomteDataSourceImpl implements ReomteDataSource {
  final AppServiceClient _appServiceClient;
  ReomteDataSourceImpl(this._appServiceClient);

  @override
  Future<NoteResponse> getAllNotes() async {
    return await _appServiceClient.getAllNotes();
  }
}
