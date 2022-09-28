import 'package:abanoub_flutter_task/presentation/resources/colors_manger.dart';
import 'package:abanoub_flutter_task/presentation/resources/values_manger.dart';
import 'package:flutter/material.dart';

void navigateTo(context, String routeName) {
  Navigator.pushNamed(context, routeName);
}

Widget deffaultFormField({
  required context,
  required TextEditingController controller,
  TextInputType? type,
  bool isPassword = false,
  VoidCallback? onTap,
  VoidCallback? suffixPressed,
  final FormFieldValidator<String>? validator,
  String? labelText,
  IconData? prefixIcon,
  IconData? suffixIcon,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onTap: onTap,
      validator: validator,
      minLines: AppSize.s1,
      maxLines: AppSize.s6,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(vertical: AppSize.s10),
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.titleMedium,
        prefixIcon: Icon(prefixIcon),
        suffixIcon:
            IconButton(onPressed: suffixPressed, icon: Icon(suffixIcon)),
      ),
    );

Widget deffaultButton({
  double width = double.infinity,
  Color background = ColorsManger.primary,
  double height = AppSize.s40,
  required VoidCallback? function,
  required String? text,
  bool isUpperCase = true,
  Color textColor = ColorsManger.white,
  double fontSize = AppSize.s20,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
          color: background,
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s5_0))),
      child: MaterialButton(
        height: height,
        onPressed: function,
        child: Text(
          isUpperCase ? text!.toUpperCase() : text!,
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: fontSize),
        ),
      ),
    );
