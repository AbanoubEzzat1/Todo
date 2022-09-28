import 'dart:ffi';

import 'package:abanoub_flutter_task/app/injection_container.dart';
import 'package:abanoub_flutter_task/domain/usecases/notes_usecase.dart';
import 'package:abanoub_flutter_task/domain/usecases/users_usecase.dart';
import 'package:abanoub_flutter_task/presentation/bloc/notes_bloc/notes_States.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/network/failure.dart';
import '../../../domain/models.dart';
import '../../../domain/usecases/interstes_usecase.dart';
import '../../resources/routes_manger.dart';
import '../../resources/shared_widgets_manager.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitialState());
  static NotesCubit get(context) => BlocProvider.of(context);
  final NotesUseCase _notesUseCase = instance<NotesUseCase>();
  final UsersUseCase _usersUseCase = instance<UsersUseCase>();
  final InterstsUseCase _interstsUseCase = instance<InterstsUseCase>();
  bool showSearchFormFiled = false;
  List<Widget> noteAppBarActions(context) {
    return [
      IconButton(
        onPressed: () {
          navigateTo(context, Routes.addUserRoute);
        },
        icon: const Icon(Icons.person_add),
      ),
      IconButton(
        onPressed: () {
          navigateTo(context, Routes.optionsRoute);
        },
        icon: const Icon(Icons.settings),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.clear_all),
      ),
    ];
  }

  void showSearchFiled() {
    showSearchFormFiled = !showSearchFormFiled;
    emit(ShowSearchFiledState());
  }

  List<NoteDataModel> allNotes = [];
  List<NoteDataModel> textNotes = [];
  NoteModel? _noteModel;
  Future getAllNotes() async {
    emit(GetAllNotesLoadingState());
    Either<Failure, NoteModel> response = await _notesUseCase.execute(Void);
    emit(
      response.fold((failure) {
        if (kDebugMode) {
          print(failure.code);
          print(failure.message);
        }
        return GetAllNotesErrorState(failure.message);
      }, (data) {
        //allNotes = data.usersResponseData;
        return GetAllNotesSuccessState(data);
      }),
    );
  }

  Future getAllUsers() async {
    emit(GetAllUsersLoadingState());
    Either<Failure, UserModel> response = await _usersUseCase.execute(Void);
    emit(
      response.fold((failure) {
        if (kDebugMode) {
          print(failure.code);
          print(failure.message);
        }
        return GetAllUsersErrorState(failure.message);
      }, (data) {
        //allNotes = data.usersResponseData;
        return GetAllUsersSuccessState(data);
      }),
    );
  }

  Future getAllIntersts() async {
    emit(GetInterstsLoadingState());
    Either<Failure, InterstesModels> response =
        await _interstsUseCase.execute(Void);
    emit(
      response.fold((failure) {
        if (kDebugMode) {
          print(failure.code);
          print(failure.message);
        }
        return GetInterstsErrorState(failure.message);
      }, (data) {
        //allNotes = data.usersResponseData;
        return GetInterstsSuccessState(data);
      }),
    );
  }
}
