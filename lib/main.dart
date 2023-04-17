import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switchbloc_flutter/widgets/switch_bloc.dart';
import 'bloc/switchcubit.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SwitchCubit(),
      child: const MaterialApp(
        title: "Test",
        home: TestPage(),
      ),
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Switch bloc test'),
          actions: [
            IconButton(
              icon: const Icon(Icons.info),
              tooltip: 'Switch bloc test',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (innerContext) {
                    return BlocProvider.value(
                      value: context.watch<SwitchCubit>(),
                      child: Material(
                        child: BlocBuilder<SwitchCubit, bool>(
                          builder: (context, state) => AlertDialog(
                            content: Text(state.toString()),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: const Center(
          // SwitchBloc is a widget that uses BlocProvider to create a SwitchCubit
          child: SwitchBloc(),
        ),
      ),
    );
  }
}
