import 'package:aina_project/core/routes/page_routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:rxdart/rxdart.dart';

class AuthGuard extends AutoRouteGuard {
  BehaviorSubject<bool> isAuthenticated;

  AuthGuard(this.isAuthenticated);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    print("Asdasafs");
    if (isAuthenticated.value) {
      resolver.next(true);
    } else {
      resolver.next(false);
      await router.push(const AuthScreenRoute());
    }
  }
}
