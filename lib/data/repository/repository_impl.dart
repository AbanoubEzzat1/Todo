import 'package:abanoub_flutter_task/data/mapper/mapper.dart';
import 'package:abanoub_flutter_task/data/network/error_handeler.dart';
import 'package:abanoub_flutter_task/data/network/failure.dart';
import 'package:abanoub_flutter_task/data/network/network_info.dart';
import 'package:dartz/dartz.dart';
import 'package:abanoub_flutter_task/domain/models.dart';

import '../../domain/repository.dart';
import '../data_source/remote_data_source.dart';

class RepositoryImpl extends Repository {
  final ReomteDataSource _reomteDataSource;
  final NetworkInfo _networkInfo;

  RepositoryImpl(this._reomteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, NoteModel>> getAllNotes() async {
    final response = await _reomteDataSource.getAllNotes();
    response.toDomain();
    if (await _networkInfo.isConnected) {
      try {
        final response = await _reomteDataSource.getAllNotes();

        if (response.status == ApiInternalStatus.TrueSuccess) {
          return Right(response.toDomain());
        } else {
          return Left(
            Failure(
              ApiInternalStatus.FAILURE,
              response.message ?? ResponseMessage.DEFFAULT,
            ),
          );
        }
      } catch (error) {
        return Left(ErrorHandeler.handel(error).failure);
        //sure error from internet (API)
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, UserModel>> getAllUsers() async {
    final response = await _reomteDataSource.getAllUsers();
    response.toDomain();
    if (await _networkInfo.isConnected) {
      try {
        final response = await _reomteDataSource.getAllUsers();

        if (response.status == ApiInternalStatus.TrueSuccess) {
          return Right(response.toDomain());
        } else {
          return Left(
            Failure(
              ApiInternalStatus.FAILURE,
              response.message ?? ResponseMessage.DEFFAULT,
            ),
          );
        }
      } catch (error) {
        return Left(ErrorHandeler.handel(error).failure);
        //sure error from internet (API)
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, InterstesModels>> getAllInterstes() async {
    final response = await _reomteDataSource.getAllInterstes();
    response.toDomain();
    if (await _networkInfo.isConnected) {
      try {
        final response = await _reomteDataSource.getAllInterstes();

        if (response.status == ApiInternalStatus.TrueSuccess) {
          return Right(response.toDomain());
        } else {
          return Left(
            Failure(
              ApiInternalStatus.FAILURE,
              response.message ?? ResponseMessage.DEFFAULT,
            ),
          );
        }
      } catch (error) {
        return Left(ErrorHandeler.handel(error).failure);
        //sure error from internet (API)
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }
}
