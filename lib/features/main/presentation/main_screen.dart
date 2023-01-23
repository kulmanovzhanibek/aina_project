import 'package:aina_project/core/const/all_styles.dart';
import 'package:aina_project/core/injection_container.dart';
import 'package:aina_project/core/routes/page_routes.gr.dart';
import 'package:aina_project/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:aina_project/features/widgets/loading_layer/loading_layer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingLayerProvider(
      child: Scaffold(
        body: SafeArea(
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () => LoadingLayer.hide(),
                loading: (state) => LoadingLayer.show(context),
              );

              state.maybeMap(
                orElse: () {},
                failure: (error) =>
                {
                  print(error.failure)
                },
                logout: (state) {
                  context.replaceRoute(const AuthScreenRoute());
                },
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(const LogoutEvent());
                      },
                      child: const Text("Log out")
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
