import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:oximapp_v2/core/constants.dart';

import '../../core/presentation/app_router.dart';
import '../../i18n/strings.g.dart';
import '../application/user_selection_bloc.dart';

@RoutePage()
class UserSelectionScreen extends StatefulWidget {
  const UserSelectionScreen({super.key});

  @override
  State<UserSelectionScreen> createState() => _UserSelectionScreenState();
}

class _UserSelectionScreenState extends State<UserSelectionScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<UserSelectionBloc>()
        .add(const UserSelectionEvent.getAllUsers());
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final userSelection = context.watch<UserSelectionBloc>();
    final userState = userSelection.state;
    final users = userState.users;
    return Scaffold(
      appBar: AppBar(
        title: Text(t.login.title),
      ),
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1.3,
        child: Container(
          //padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: users!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height / 12,
                          ),
                          width: MediaQuery.of(context).size.width * .90,
                          child: Column(
                            children: [
                              Text(
                                users[index].userName!,
                                style:
                                    Theme.of(context).textTheme.headlineMedium!,
                              ),
                              const CircleAvatar(
                                radius: 100,
                                // backgroundImage:
                                //     Image.network(temportalImage).image,
                                child: Icon(
                                  Icons.person,
                                  size: 200,
                                ),
                              ),
                              const Gap(16),
                              Center(
                                child: FilledButton(
                                    onPressed: () async {
                                      userSelection.add(const UserSelectionEvent
                                          .setSignInStatus(isLogged: true));
                                    },
                                    child: const Text("Seleccionar")),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              const Gap(32),
              ElevatedButton(
                  onPressed: () async {
                    context.router.push(const UserRegisterRoute());
                  },
                  child: const Text("registrarse"))
            ],
          ),
        ),
      ),
    );
  }
}
