import 'package:abanoub_flutter_task/presentation/pages/add_user/add_user_view.dart';
import 'package:abanoub_flutter_task/presentation/pages/edit_note/edit_note_view.dart';
import 'package:abanoub_flutter_task/presentation/pages/notes/notes_view.dart';
import 'package:abanoub_flutter_task/presentation/pages/options/options_view.dart';
import 'package:abanoub_flutter_task/presentation/pages/splash/splash_view.dart';
import 'package:abanoub_flutter_task/presentation/resources/strings_manger.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String notesRoute = "notesRoute";
  static const String editNoteRoute = "editNoteRoute";
  static const String optionsRoute = "optionsRoute";
  static const String addUserRoute = "addUserRoute";
}

class RouteGenerator {
  static Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.notesRoute:
        return MaterialPageRoute(builder: (_) => NotesView());
      case Routes.editNoteRoute:
        return MaterialPageRoute(builder: (_) => EditNoteView());
      case Routes.optionsRoute:
        return MaterialPageRoute(builder: (_) => OptionsView());
      case Routes.addUserRoute:
        return MaterialPageRoute(builder: (_) => AddUserView());
      default:
        return unDefainedRote();
    }
  }

  static Route<dynamic> unDefainedRote() {
    return MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRoureFound),
        ),
        body: Center(
          child: Text(
            AppStrings.noRoureFound,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      );
    });
  }
}
