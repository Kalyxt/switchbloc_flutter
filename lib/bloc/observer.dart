import 'package:bloc/bloc.dart';

/// {@template counter_observer}
/// [BlocObserver] for the application which
/// observes all state changes.
/// {@endtemplate}
class AppObserver extends BlocObserver {
  /// {@macro observer}
  const AppObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    // ignore: avoid_print
    print('${bloc.runtimeType} $change');
  }
}
