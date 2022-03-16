import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../ui/views/view404.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(CounterView(base: '5',), '/stateful');
      case '/provider':
        return _fadeRoute(CounterProviderView(base: '10',), '/provider');
      default:
        return _fadeRoute(View404(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName){
    return PageRouteBuilder(
       settings: RouteSettings(name: routeName),
       pageBuilder: (BuildContext context, animation, secondAnimation){
         return child;
       },
       transitionsBuilder: (BuildContext context, animation, secondAnimation, child){
         return (kIsWeb)
         ? FadeTransition(
          opacity: animation,
          child: child
          )
          : CupertinoPageTransition(
            primaryRouteAnimation: animation ,
            secondaryRouteAnimation: secondAnimation, 
            child: child, 
            linearTransition: true
          );
       }
    );
  }

}