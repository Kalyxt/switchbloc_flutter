import 'package:bloc/bloc.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages an [bool] as its state.
/// {@endtemplate}
class SwitchCubit extends Cubit<bool> {
  /// {@macro switch_cubit}
  SwitchCubit() : super(false);

  /// Changes the state of the [Cubit] to the opposite of the current state.
  void toggle() {
    emit(!state);
  }
}
