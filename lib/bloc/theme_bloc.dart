import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pulse_nativ/data/constanse.dart';

enum ThemeEvents{
  toggle,
}

class ThemeBloc extends Bloc<ThemeEvents,ThemeData>{
  ThemeBloc() : super(ThemeData.light());

  @override
  Stream<ThemeData> mapEventToState(ThemeEvents event) async* {
    if(state==ThemeData.dark())
      yield ThemeData(
        primaryColor: KPrimaryColor,
        scaffoldBackgroundColor: Colors.white70
      );
    else
      yield ThemeData.dark();
  }




}