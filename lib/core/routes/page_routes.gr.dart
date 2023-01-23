// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../features/auth/presentation/auth_screen.dart' as _i2;
import '../../features/main/presentation/main_screen.dart' as _i3;
import '../../features/onBoarding/presentation/onBoarding_screen.dart' as _i1;
import '../../features/personal_data/presentation/personal_data_screen.dart'
    as _i4;
import 'guards/auth_guard.dart' as _i7;

class MainRouter extends _i5.RootStackRouter {
  MainRouter({
    _i6.GlobalKey<_i6.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i7.AuthGuard authGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    OnBoardingScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.OnBoardingScreen(),
      );
    },
    AuthScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AuthScreen(),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreen(),
      );
    },
    PersonalDataScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PersonalDataScreen(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          OnBoardingScreenRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          AuthScreenRoute.name,
          path: '/auth-screen',
        ),
        _i5.RouteConfig(
          MainScreenRoute.name,
          path: '/main-screen',
          guards: [authGuard],
        ),
        _i5.RouteConfig(
          PersonalDataScreenRoute.name,
          path: '/personal-data-screen',
          guards: [authGuard],
        ),
      ];
}

/// generated route for
/// [_i1.OnBoardingScreen]
class OnBoardingScreenRoute extends _i5.PageRouteInfo<void> {
  const OnBoardingScreenRoute()
      : super(
          OnBoardingScreenRoute.name,
          path: '/',
        );

  static const String name = 'OnBoardingScreenRoute';
}

/// generated route for
/// [_i2.AuthScreen]
class AuthScreenRoute extends _i5.PageRouteInfo<void> {
  const AuthScreenRoute()
      : super(
          AuthScreenRoute.name,
          path: '/auth-screen',
        );

  static const String name = 'AuthScreenRoute';
}

/// generated route for
/// [_i3.MainScreen]
class MainScreenRoute extends _i5.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: '/main-screen',
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i4.PersonalDataScreen]
class PersonalDataScreenRoute extends _i5.PageRouteInfo<void> {
  const PersonalDataScreenRoute()
      : super(
          PersonalDataScreenRoute.name,
          path: '/personal-data-screen',
        );

  static const String name = 'PersonalDataScreenRoute';
}
