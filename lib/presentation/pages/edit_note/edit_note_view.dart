import 'package:abanoub_flutter_task/presentation/resources/shared_widgets_manager.dart';
import 'package:abanoub_flutter_task/presentation/resources/strings_manger.dart';
import 'package:abanoub_flutter_task/presentation/resources/values_manger.dart';
import 'package:flutter/material.dart';

class EditNoteView extends StatelessWidget {
  EditNoteView({Key? key}) : super(key: key);
  String note =
      "Do not forget to use ListView while making Flutte App because its let you to add linear items with infinite scrolling. this page should make a sperate http request to get the whole content.";
  final TextEditingController _noteEditingController = TextEditingController();
  final TextEditingController _dropdownController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String dropdownvalue = 'Item 1';
  var items = [
    'Abanoub',
    'Aba',
    'Bob',
  ];
  @override
  Widget build(BuildContext context) {
    _noteEditingController.text = note;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: AppSize.s0,
        title: const Text(AppStrings.editNotesTitle),
        actions: editNoteappBarActions,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              noteTextFormFiled(context),
              const SizedBox(height: AppSize.s20),
              dropdownTextFiledWidget(context),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> editNoteappBarActions = [
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.save_outlined),
    ),
  ];

  Widget noteTextFormFiled(context) {
    return deffaultFormField(
      context: context,
      controller: _noteEditingController,
      labelText: AppStrings.noteLable,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppStrings.invalidNote;
        }
        return null;
      },
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

  // Widget dropdownButtonWidget() {
  //   return DropdownButton(
  //     value: dropdownvalue,
  //     icon: const Icon(Icons.keyboard_arrow_down),
  //     items: items.map((String items) {
  //       return DropdownMenuItem(
  //         value: items,
  //         child: Text(items),
  //       );
  //     }).toList(),
  //     onChanged: (String? value) {
  //       dropdownvalue = value!;
  //     },
  //   );
  // }
}
