import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:oximapp_v2/aplication/sign_in/sign_in_bloc.dart';
import 'package:oximapp_v2/presentation/core/router/app_router.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    context.router.push(const SignUpRoute());
  }

  @override
  Widget build(BuildContext context) {
    final signIn = context.watch<SignInBloc>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("HOME"),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              signIn.add(const SignInEvent.setSignInStatus(isLogged: false));
              //todo add a notifier
            },
            icon: const Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
