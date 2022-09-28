import 'package:abanoub_flutter_task/data/network/failure.dart';
import 'package:abanoub_flutter_task/data/repository/repository_impl.dart';
import 'package:abanoub_flutter_task/domain/models.dart';
import 'package:abanoub_flutter_task/domain/usecases/base_usecase.dart';
import 'package:dartz/dartz.dart';

class InterstsUseCase extends BaseUseCase<void, InterstesModels> {
  final RepositoryImpl _repositoryImpl;
  InterstsUseCase(this._repositoryImpl);

  @override
  Future<Either<Failure, InterstesModels>> execute(void input) async {
    return await _repositoryImpl.getAllInterstes();
  }
}
