import 'package:aina_project/core/const/all_styles.dart';
import 'package:aina_project/core/injection_container.dart';
import 'package:aina_project/core/routes/guards/auth_guard.dart';
import 'package:aina_project/core/routes/page_routes.gr.dart';
import 'package:aina_project/features/app_state.dart';
import 'package:aina_project/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:aina_project/features/session/presentation/bloc/session_bloc.dart';
import 'package:aina_project/features/widgets/loading_layer/loading_layer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppState _appState = AppState();
  late final MainRouter _router;

  @override
  void initState() {
    _router = MainRouter(
      authGuard: AuthGuard(_appState.isAuthenticated),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoadingLayerProvider(
        child: MultiBlocProvider(
          providers: [
            BlocProvider<SessionBloc>(
              lazy: false,
              create: (context) =>
              sl<SessionBloc>()
                ..add(const SessionBlocEvent.init()),
            ),
            BlocProvider<AuthBloc>(
              create: (_) => sl<AuthBloc>(),
            )
          ],
          child: MaterialApp.router(
            theme: ThemeData(
              fontFamily: 'Gilroy',
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: colorBackgroundGrey,
            ),
            debugShowCheckedModeBanner: false,
            title: '',
            routeInformationParser: _router.defaultRouteParser(),
            routerDelegate: _router.delegate(),
            builder: (context, navigator) {
              return BlocConsumer<SessionBloc, SessionBlocState>(
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () => LoadingLayer.hide(),
                    authorized: (state) {
                      _appState.isAuthenticatedValue = true;
                      _router.replaceAll([const PersonalDataScreenRoute()]);
                      LoadingLayer.hide();
                    },
                    loading: (state) =>
                        LoadingLayer.show(context, isTinted: false),
                  );
                },
                buildWhen: (p, c) {
                  return c.maybeMap(
                    orElse: () => true,
                    error: (state) => false,
                  );
                },
                builder: (context, state) {
                  return state.maybeMap(
                      orElse: () => navigator ?? const SizedBox.shrink(),
                      loading: (state) => const SizedBox.shrink()
                  );
                },
              );
            },
          ),
        )
    );
  }
}