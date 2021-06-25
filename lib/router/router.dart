import 'package:admin_dashboard/router/auth_handlers.dart';
import 'package:admin_dashboard/router/dashboard_handlers.dart';
import 'package:admin_dashboard/router/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static String rootRoute = '/';

  // Auth Router
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  // Dashboard
  static String dashboardRoute = '/dashboard';

  static void configureRoutes() {
    router.define(rootRoute,
        handler: AuthHandlers.login, transitionType: TransitionType.none);

    //* Auth Routes
    router.define(loginRoute,
        handler: AuthHandlers.login, transitionType: TransitionType.none);
    router.define(registerRoute,
        handler: AuthHandlers.register, transitionType: TransitionType.none);

    //* Dashboard Routes
    router.define(dashboardRoute, handler: DashboardHandlers.dashboard);

    //! 404
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
