import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:pulse_nativ/pages/aboutusPage.dart';
import 'package:pulse_nativ/pages/counterPage.dart';
import 'package:pulse_nativ/pages/homePage.dart';
import 'package:pulse_nativ/pages/productPage.dart';
import 'package:pulse_nativ/pages/toolPage.dart';

enum NavigationEvents {
  HomePageClickEvent,
  AboutUsPageClickEvent,
  ProductPageClickEvent,
  ToolPageClickEvent,
  CounterPageClickEvent
}

class NavigationBloc extends Bloc<NavigationEvents, Widget> {
  NavigationBloc() : super(HomePage());

  @override
  Stream<Widget> mapEventToState(NavigationEvents event) async* {
    if (event == NavigationEvents.HomePageClickEvent) {
      yield HomePage();
    }
    if (event == NavigationEvents.ProductPageClickEvent) {
      yield ProductPage();
    }
    if (event == NavigationEvents.ToolPageClickEvent) {
      yield ToolPage();
    }
    if (event == NavigationEvents.AboutUsPageClickEvent) {
      yield AboutUsPage();
    }
    if (event == NavigationEvents.CounterPageClickEvent) {
      yield CounterPage();
    }
  }
}
