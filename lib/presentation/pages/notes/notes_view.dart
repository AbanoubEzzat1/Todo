import 'package:abanoub_flutter_task/presentation/bloc/notes_bloc/notes_States.dart';
import 'package:abanoub_flutter_task/presentation/bloc/notes_bloc/notes_cubit.dart';
import 'package:abanoub_flutter_task/presentation/resources/colors_manger.dart';
import 'package:abanoub_flutter_task/presentation/resources/routes_manger.dart';
import 'package:abanoub_flutter_task/presentation/resources/shared_widgets_manager.dart';
import 'package:abanoub_flutter_task/presentation/resources/strings_manger.dart';
import 'package:abanoub_flutter_task/presentation/resources/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesView extends StatelessWidget {
  NotesView({Key? key}) : super(key: key);
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotesCubit, NotesStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Text(AppStrings.notesTitle),
              actions: NotesCubit.get(context).noteAppBarActions(context),
            ),
            floatingActionButton: floatingActionButton(),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(AppSize.s8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: notesWidget(context),
                ),
              ),
            ));
      },
    );
  }

  // List<Widget> noteAppBarActions(context) {
  //   return [
  //     IconButton(
  //       onPressed: () {
  //         navigateTo(context, Routes.addUserRoute);
  //       },
  //       icon: const Icon(Icons.person_add),
  //     ),
  //     IconButton(
  //       onPressed: () {
  //         navigateTo(context, Routes.optionsRoute);
  //       },
  //       icon: const Icon(Icons.settings),
  //     ),
  //     IconButton(
  //       onPressed: () {},
  //       icon: const Icon(Icons.clear_all),
  //     ),
  //   ];
  // }

  Widget floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: ColorsManger.primary,
      child: const Icon(Icons.add),
    );
  }

  Widget filterAndSearchIconButton(context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.filter_list_outlined,
            color: ColorsManger.primary,
            size: AppSize.s25,
          ),
        ),
        IconButton(
          onPressed: () {
            NotesCubit.get(context).showSearchFiled();
          },
          icon: const Icon(
            Icons.search_outlined,
            color: ColorsManger.primary,
            size: AppSize.s25,
          ),
        ),
        if (NotesCubit.get(context).showSearchFormFiled == true)
          Expanded(
            flex: 1,
            child: SizedBox(
              height: AppSize.s40,
              child: deffaultFormField(
                  context: context,
                  controller: _searchController,
                  suffixIcon: Icons.close,
                  suffixPressed: () {
                    _searchController.clear();
                  }),
            ),
          ),
      ],
    );
  }

  Widget noteItem(context, index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          navigateTo(context, Routes.editNoteRoute);
        },
        child: Row(
          children: [
            Container(
              padding:
                  const EdgeInsets.only(right: AppSize.s20, left: AppSize.s10),
              width: AppSize.s290,
              child: Text(
                NotesCubit.get(context).allNotes[index].text,
                //"To make Machboos .. get one onion, two chicken, with a lot of rise To make Machboos .. get one onion, two chicken, with a lot of rise To make Machboos .. get one onion, two chicken, with a lot of rise To make Machboos .. get one onion, two chicken, with a lot of rise To make Machboos .. get one onion, two chicken, with a lot of rise ",
                style: Theme.of(context).textTheme.headlineLarge,
                maxLines: AppSize.s2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: AppSize.s10),
              child: Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }

  Widget listViewDevider() {
    return Container(
      width: double.infinity,
      height: AppSize.s1_0,
      color: ColorsManger.grey,
    );
  }

  Widget listViewWidget(context) {
    return SizedBox(
      height: AppSize.s600,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => noteItem(context, index),
        separatorBuilder: (context, index) => listViewDevider(),
        itemCount: NotesCubit.get(context).allNotes.length,
      ),
    );
  }

  List<Widget> notesWidget(context) {
    return [
      filterAndSearchIconButton(context),
      listViewWidget(context),
    ];
  }
}
