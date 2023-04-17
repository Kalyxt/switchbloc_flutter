import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switchbloc_flutter/bloc/switchcubit.dart';

class SwitchBloc extends StatelessWidget {
  const SwitchBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SwitchCubit(),
      child: BlocBuilder<SwitchCubit, bool>(
        builder: (context, state) {
          return Switch(
            value: state,
            activeColor: Colors.green,
            onChanged: (bool value) {
              // This is called when the user toggles the switch.
              BlocProvider.of<SwitchCubit>(context).toggle();
            },
          );
        },
      ),
    );
  }
}
