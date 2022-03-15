import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/counter_provider.dart';
import '../shared/custom_app_menu.dart';
import '../shared/custom_flat_button.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const _CounterProviderPageBody()
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Text('Provider counter', style: TextStyle(fontSize: 20.0),),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Contador: ${counterProvider.counter}', style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),),
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomFlatButton(
                text: 'Incrementar', 
                onPressed: (){
                  counterProvider.increment();
                }
              ),
              CustomFlatButton(
              text: 'Decrementar', 
              onPressed: (){
                counterProvider.decrement();
              }
            ),
          ],
        ),
        Spacer()
      ],
    );
  }
}