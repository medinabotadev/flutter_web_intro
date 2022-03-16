  // HANDLERS
import 'package:bases_web/ui/views/view404.dart';
import 'package:fluro/fluro.dart';

import '../ui/views/counter_provider_view.dart';
import '../ui/views/counter_view.dart';

final Handler counterHandler = Handler(
    handlerFunc: (context, parameters){
      return CounterView(base: parameters['base']?[0] ?? '5',);
    }
  );
  final Handler counterProviderHandler = Handler(
    handlerFunc: (context, parameters){

      return CounterProviderView(base: parameters['q']?[0] ?? '10' );
    }
  );
  final Handler dashboardUserHandler = Handler(
    handlerFunc: (context, parameters){
      print(parameters);
      return CounterProviderView(base: parameters['q']?[0] ?? '10' );
    }
  );
  final Handler pageNotFound = Handler(
    handlerFunc: (context, parameters){
      return View404();
    }
  );