import 'package:aina_project/core/const/all_styles.dart';
import 'package:aina_project/core/const/assets_images.dart';
import 'package:aina_project/core/injection_container.dart';
import 'package:aina_project/core/routes/page_routes.gr.dart';
import 'package:aina_project/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:aina_project/features/auth/presentation/viewModel/viewModel.dart';
import 'package:aina_project/features/auth/presentation/widgets/request_code.dart';
import 'package:aina_project/features/auth/presentation/widgets/verify_code.dart';
import 'package:aina_project/features/widgets/button/main_button.dart';
import 'package:aina_project/features/widgets/loading_layer/loading_layer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

part 'widgets/auth_body.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingLayerProvider(
      child: ChangeNotifierProvider(
        create: (context) => AuthViewModel(),
        child: BlocProvider<AuthBloc>(
            create: (context) => sl<AuthBloc>(),
            child: const AuthBody()
        ),
      ),
    );
  }
}