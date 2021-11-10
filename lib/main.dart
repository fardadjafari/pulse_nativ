import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse_nativ/bloc/counter_bloc.dart';
import 'package:pulse_nativ/bloc/theme_bloc.dart';
import 'package:pulse_nativ/preloader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CounterBloc>(
            create: (BuildContext context) => CounterBloc(),
          ),
          BlocProvider<ThemeBloc>(
            create: (BuildContext context) => ThemeBloc(),
          )
        ],
        child: BlocBuilder<ThemeBloc, ThemeData>(
          builder: (context, ThemeData themeData) {
            return MaterialApp(
              title: 'Pulse Group',
              debugShowCheckedModeBanner: false,
              theme: themeData,
              home: Preloader(),
            );
          },
        ));
  }
}
