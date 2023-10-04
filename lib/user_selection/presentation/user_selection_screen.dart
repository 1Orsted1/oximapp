import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../core/presentation/app_router.dart';
import '../../i18n/strings.g.dart';
import '../application/user_selection_bloc.dart';

@RoutePage()
class UserSelectionScreen extends StatelessWidget {
  const UserSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final userSelection = context.watch<UserSelectionBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text(t.login.title),
      ),
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1.3,
        child: Container(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  //shrinkWrap: true,
                  children: [
                    Card(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height / 12,
                        ),
                        width: MediaQuery.of(context).size.width * .90,
                        child: Column(
                          children: [
                            Text(
                              "Gustavo",
                              style:
                                  Theme.of(context).textTheme.headlineMedium!,
                            ),
                            CircleAvatar(
                              radius: 100,
                              backgroundImage: Image.network(
                                      "https://imgs.search.brave.com/GS7B7jGlPKk7BAfn_GwB20dNx7igBXG4DfpT9FDqBdU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzM3LzM1Lzcz/LzM2MF9GXzM3MzU3/MzEyXzZHTVFZY3dN/UXd0dzBOMHMxTlo4/YllvZ1V2OWJ1SEhx/LmpwZw")
                                  .image,
                            ),
                            const Gap(16),
                            Center(
                              child: FilledButton(
                                  onPressed: () {
                                    userSelection.add(const UserSelectionEvent
                                        .setSignInStatus(isLogged: true));
                                  },
                                  child: const Text("Seleccionar")),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height / 12,
                        ),
                        width: MediaQuery.of(context).size.width * .90,
                        child: Column(
                          children: [
                            Text(
                              "Gustavo 2",
                              style:
                                  Theme.of(context).textTheme.headlineMedium!,
                            ),
                            CircleAvatar(
                              radius: 100,
                              backgroundImage: Image.network(
                                      "https://imgs.search.brave.com/GS7B7jGlPKk7BAfn_GwB20dNx7igBXG4DfpT9FDqBdU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzM3LzM1Lzcz/LzM2MF9GXzM3MzU3/MzEyXzZHTVFZY3dN/UXd0dzBOMHMxTlo4/YllvZ1V2OWJ1SEhx/LmpwZw")
                                  .image,
                            ),
                            const Gap(16),
                            Center(
                              child: FilledButton(
                                  onPressed: () {
                                    userSelection.add(const UserSelectionEvent
                                        .setSignInStatus(isLogged: true));
                                  },
                                  child: const Text("Seleccionar")),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(32),
              ElevatedButton(
                  onPressed: () {
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
