import 'package:aina_project/core/routes/guards/auth_guard.dart';
import 'package:aina_project/features/auth/presentation/auth_screen.dart';
import 'package:aina_project/features/main/presentation/main_screen.dart';
import 'package:aina_project/features/onBoarding/presentation/onBoarding_screen.dart';
import 'package:aina_project/features/personal_data/presentation/personal_data_screen.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(
      page: OnBoardingScreen,
      initial: true,
    ),
    MaterialRoute(
      page: AuthScreen
    ),
    MaterialRoute(
        page: MainScreen,
        guards: [AuthGuard],
    ),
    MaterialRoute(
      page: PersonalDataScreen,
      guards: [AuthGuard],
    ),
  ],
)
class $MainRouter {}
