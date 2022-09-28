import 'dart:async';

import 'package:abanoub_flutter_task/presentation/resources/assets_manger.dart';
import 'package:abanoub_flutter_task/presentation/resources/constants_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/colors_manger.dart';
import '../../resources/routes_manger.dart';
import '../../resources/values_manger.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstant.splashDelay), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.notesRoute);
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManger.primary,
        elevation: AppSize.s0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorsManger.primary,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      backgroundColor: ColorsManger.primary,
      body: Padding(
        padding: const EdgeInsets.all(AppSize.s100),
        child: Center(
          child: SvgPicture.asset(ImageAssets.splashLogo),
        ),
      ),
    );
  }
}
