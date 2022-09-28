import 'package:abanoub_flutter_task/presentation/bloc/notes_bloc/notes_cubit.dart';
import 'package:abanoub_flutter_task/presentation/resources/routes_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation/resources/them_manger.dart';

class MyApp extends StatefulWidget {
  //MyApp({Key? key}) : super(key: key);
  const MyApp._internal();

  static const MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NotesCubit()..getAllNotes(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splashRoute,
        theme: getThemData(),
      ),
    );
  }
}
