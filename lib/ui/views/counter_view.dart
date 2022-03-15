import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget{
  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Text('Stateful counter', style: TextStyle(fontSize: 20.0),),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Contador: $counter', style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),),
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomFlatButton(
                text: 'Incrementar', 
                onPressed: (){
                  setState(() {
                    counter++;
                  });
                }
              ),
              CustomFlatButton(
                text: 'Decrementar', 
                onPressed: (){
                  setState(() {
                    counter--;
                  });
                }
              ),
            ],
          ),
          Spacer()
        ],
      );
  }
}