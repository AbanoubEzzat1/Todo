import 'package:abanoub_flutter_task/presentation/resources/colors_manger.dart';
import 'package:abanoub_flutter_task/presentation/resources/shared_widgets_manager.dart';
import 'package:abanoub_flutter_task/presentation/resources/strings_manger.dart';
import 'package:abanoub_flutter_task/presentation/resources/values_manger.dart';
import 'package:flutter/material.dart';

class AddUserView extends StatelessWidget {
  AddUserView({Key? key}) : super(key: key);
  String dropdownvalue = 'Item 1';
  var items = [
    'Footboall',
    'Programing',
    'Coding',
  ];
  String myImage =
      "https://firebasestorage.googleapis.com/v0/b/medical-care-39536.appspot.com/o/Abanoub.jpg?alt=media&token=a80e1b3f-e7db-4afb-8fbf-bfa97aaa8236";
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dropdownController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: AppSize.s0,
        title: const Text(AppStrings.addUserTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.s20),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: ColorsManger.lightGrey,
                  backgroundImage: NetworkImage(myImage),
                  radius: AppSize.s60,
                ),
                const SizedBox(height: AppSize.s10),
                InkWell(
                  onTap: (() {}),
                  child: Text(
                    AppStrings.selectImage,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                const SizedBox(height: AppSize.s20),
                deffaultFormField(
                  context: context,
                  controller: _userNameController,
                  labelText: AppStrings.userName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.invalidUserName;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppSize.s20),
                deffaultFormField(
                  context: context,
                  controller: _passwordController,
                  labelText: AppStrings.password,
                  isPassword: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.passwordInvalid;
                    }
                    return null;
                  },
                  suffixIcon: Icons.remove_red_eye,
                  suffixPressed: () {},
                ),
                const SizedBox(height: AppSize.s20),
                deffaultFormField(
                  context: context,
                  controller: _emailController,
                  labelText: AppStrings.userName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppStrings.invalidEmail;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppSize.s20),
                dropdownTextFiledWidget(context),
                const SizedBox(height: AppSize.s20),
                deffaultButton(function: () {}, text: AppStrings.save)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dropdownTextFiledWidget(context) {
    return TextField(
      controller: _dropdownController,
      decoration: InputDecoration(
        labelText: AppStrings.assighnToUserLable,
        labelStyle: Theme.of(context).textTheme.titleMedium,
        suffixIcon: PopupMenuButton<String>(
          icon: const Icon(Icons.arrow_drop_down),
          onSelected: (String value) {
            _dropdownController.text = value;
          },
          itemBuilder: (BuildContext context) {
            return items.map<PopupMenuItem<String>>((String value) {
              return PopupMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList();
          },
        ),
      ),
    );
  }
}
