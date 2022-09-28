import 'package:abanoub_flutter_task/app/app.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app/bloc_observer.dart';
import 'app/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
