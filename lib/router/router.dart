import 'package:bases_web/router/route_handlers.dart';
import 'package:fluro/fluro.dart';


class Flurorouter{
  static final FluroRouter router = FluroRouter();

  static void configureRoutes(){
    // Stateful routes
    router.define('/', handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful', handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base', handler: counterHandler, transitionType: TransitionType.fadeIn);
    // Provider routes
    router.define('/provider', handler: counterProviderHandler, transitionType: TransitionType.fadeIn);
    router.define('/dashboard/user/:userid/:roleid', handler: dashboardUserHandler,transitionType: TransitionType.fadeIn);
    // 404
    router.notFoundHandler = pageNotFound;
  }
}