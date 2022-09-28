import 'package:abanoub_flutter_task/presentation/resources/colors_manger.dart';
import 'package:abanoub_flutter_task/presentation/resources/strings_manger.dart';
import 'package:abanoub_flutter_task/presentation/resources/values_manger.dart';
import 'package:flutter/material.dart';

class OptionsView extends StatelessWidget {
  OptionsView({Key? key}) : super(key: key);
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: AppSize.s0,
          title: const Text(AppStrings.optionsTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppSize.s15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.useLocalDataBase,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: AppSize.s290,
                    child: Text(
                      AppStrings.switchDescription,
                      maxLines: AppSize.s5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  Switch(
                    value: isSwitched,
                    activeColor: ColorsManger.primary,
                    onChanged: (value) {
                      isSwitched = value;
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
