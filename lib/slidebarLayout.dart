import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse_nativ/bloc/navigation_bloc.dart';
import 'package:pulse_nativ/pages/Panel/homePage.dart';
import 'package:pulse_nativ/slidebar.dart';

class slidebarLayout extends StatefulWidget {
  const slidebarLayout({Key key}) : super(key: key);

  @override
  _slidebarLayoutState createState() => _slidebarLayoutState();
}

class _slidebarLayoutState extends State<slidebarLayout> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: BlocProvider<NavigationBloc>(
            create:(context)=> new NavigationBloc() ,
              child: Stack(
                children: <Widget>[
                  BlocBuilder<NavigationBloc,Widget>(builder:(context,Widget widget){
                     return widget;
                  }),
                  Slidebar()
                ],
              )
          )
      ),
    );
  }
}
