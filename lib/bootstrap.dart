import 'dart:async';
import 'dart:developer';
import 'package:hive_flutter/adapters.dart';
import 'package:aina_project/core/injection_container.dart';
import 'package:aina_project/core/utils/hive/hive_init.dart';
import 'package:aina_project/firebase_options.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/widgets.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = AppBlocObserver();

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      configureInjection();
      await Hive.initFlutter();
      await initHiveBoxes();
      FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

      runApp(await builder());
    },
    (error, stackTrace) => FirebaseCrashlytics.instance.recordError(
      error,
      stackTrace,
      fatal: true,
    ),
  );
}
