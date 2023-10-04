import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage()
class UserRegisterScreen extends StatelessWidget {
  const UserRegisterScreen({super.key});
//Todo: this is just for view, still a lot of logic to add
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                  radius: 86,
                  backgroundImage: Image.network(
                          "https://imgs.search.brave.com/GS7B7jGlPKk7BAfn_GwB20dNx7igBXG4DfpT9FDqBdU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzM3LzM1Lzcz/LzM2MF9GXzM3MzU3/MzEyXzZHTVFZY3dN/UXd0dzBOMHMxTlo4/YllvZ1V2OWJ1SEhx/LmpwZw")
                      .image,
                  child: IconButton(
                    icon: Icon(
                      Icons.add_a_photo_outlined,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 60,
                    ),
                    onPressed: () {},
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
              context.router.pop();
            },
            child: const Text("registrar"),
          ),
        ),
      ),
    );
  }
}
