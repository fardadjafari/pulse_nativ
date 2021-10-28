import 'package:bloc/bloc.dart';

enum CounterEvent{
  incresment,
  decresment
}

class CounterBloc extends Bloc<CounterEvent,int>{
  CounterBloc() : super(0);


  @override
  Stream<int> mapEventToState(CounterEvent event) async*{
    if(event==CounterEvent.incresment)
     yield state+1;
    else
     yield state-1;
  }

}