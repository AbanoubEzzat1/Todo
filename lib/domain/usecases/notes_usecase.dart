import 'package:abanoub_flutter_task/data/network/failure.dart';
import 'package:abanoub_flutter_task/data/repository/repository_impl.dart';
import 'package:abanoub_flutter_task/domain/models.dart';
import 'package:abanoub_flutter_task/domain/usecases/base_usecase.dart';
import 'package:dartz/dartz.dart';

class NotesUseCase extends BaseUseCase<void, NoteModel> {
  final RepositoryImpl _repositoryImpl;
  NotesUseCase(this._repositoryImpl);

  @override
  Future<Either<Failure, NoteModel>> execute(void input) async {
    return await _repositoryImpl.getAllNotes();
  }
}
