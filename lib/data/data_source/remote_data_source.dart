import '../network/app_api.dart';
import '../network/responsemodel.dart';
import '../responses/responses.dart';

abstract class ReomteDataSource {
  Future<NoteResponse> getAllNotes();
  Future<UserResponse> getAllUsers();
  Future<InterstesResponse> getAllInterstes();
}

class ReomteDataSourceImpl implements ReomteDataSource {
  final AppServiceClient _appServiceClient;
  ReomteDataSourceImpl(this._appServiceClient);

  @override
  Future<NoteResponse> getAllNotes() async {
    return await _appServiceClient.getAllNotes();
  }

  @override
  Future<UserResponse> getAllUsers() async {
    return await _appServiceClient.getAllUsers();
  }

  @override
  Future<InterstesResponse> getAllInterstes() async {
    return await _appServiceClient.getAllInterstes();
  }
}
