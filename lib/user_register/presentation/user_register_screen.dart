import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oximapp_v2/core/constants.dart';
import '../../injection.dart';
import '../../user_selection/application/user_selection_bloc.dart';
import '../application/user_register_bloc.dart';

@RoutePage()
class UserRegisterScreen extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<UserRegisterBloc>(),
      child: this,
    );
  }

  const UserRegisterScreen({super.key});
//Todo: this is just for view, still a lot of logic to add
  @override
  Widget build(BuildContext context) {
    final urBloc = context.watch<UserRegisterBloc>();
    final userSelectionBloc = context.read<UserSelectionBloc>();
    return BlocListener<UserRegisterBloc, UserRegisterState>(
      listener: (context, state) {
        if (state.isLoading == false && state.operationCompleted == true) {
          print("success!!!");

          userSelectionBloc.add(const UserSelectionEvent.getAllUsers());
          context.router.pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              urBloc.state.isLoading
                  ? const LinearProgressIndicator(
                      //value: controller.value,
                      semanticsLabel: 'Linear progress indicator',
                    )
                  : const SizedBox.shrink(),
              Center(
                child: CircleAvatar(
                    radius: 86,
                    // backgroundImage: urBloc.state.image == null
                    //     ? Image.network(temportalImage).image
                    //     : Image.memory(urBloc.state.image!).image,

                    child: IconButton(
                      icon: Icon(
                        Icons.add_a_photo_outlined,
                        color: Theme.of(context).colorScheme.secondary,
                        size: 60,
                      ),
                      onPressed: () {
                        urBloc.add(const UserRegisterEvent.selectImage());
                      },
                    )),
              ),
              const Gap(16),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text("Nombre de usuario"),
              ),
              const Gap(16),
              const TextField(),
            ],
          ),
        ),
        bottomSheet: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 32),
          child: SizedBox(
            //color: Colors.red,
            width: MediaQuery.of(context).size.width / 3,
            child: FilledButton(
              onPressed: () {
                urBloc.add(const UserRegisterEvent.create(name: "Gustavo 80"));
              },
              child: const Text("registrar"),
            ),
          ),
        ),
      ),
    );
  }
}
