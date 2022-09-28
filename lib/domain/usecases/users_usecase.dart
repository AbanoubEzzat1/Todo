import 'package:abanoub_flutter_task/data/network/failure.dart';
import 'package:abanoub_flutter_task/data/repository/repository_impl.dart';
import 'package:abanoub_flutter_task/domain/models.dart';
import 'package:abanoub_flutter_task/domain/usecases/base_usecase.dart';
import 'package:dartz/dartz.dart';

class UsersUseCase extends BaseUseCase<void, UserModel> {
  final RepositoryImpl _repositoryImpl;
  UsersUseCase(this._repositoryImpl);

  @override
  Future<Either<Failure, UserModel>> execute(void input) async {
    return await _repositoryImpl.getAllUsers();
  }
}
