import 'package:dartz/dartz.dart';

import '../data/network/failure.dart';
import 'models.dart';

abstract class Repository {
  Future<Either<Failure, NoteModel>> getAllNotes();
  Future<Either<Failure, UserModel>> getAllUsers();
  Future<Either<Failure, InterstesModels>> getAllInterstes();
}
