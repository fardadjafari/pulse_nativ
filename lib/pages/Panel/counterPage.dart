import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse_nativ/bloc/counter_bloc.dart';
import 'package:pulse_nativ/bloc/theme_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      new BlocBuilder<CounterBloc,int>(builder: (context,int myDigit){
       return Center(
          child: new Text(
            "Counter is  $myDigit",
            style: new TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w900
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.bloc<CounterBloc>().add(CounterEvent.incresment);
        },
        child: new Icon(Icons.add),
      ),
    ) ;
  }
}
