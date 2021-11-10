import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:pulse_nativ/pages/Login/loginPage.dart';
import 'package:pulse_nativ/pages/Panel/aboutusPage.dart';
import 'package:pulse_nativ/pages/Panel/counterPage.dart';
import 'package:pulse_nativ/pages/Panel/homePage.dart';
import 'package:pulse_nativ/pages/Panel/productPage.dart';
import 'package:pulse_nativ/pages/Panel/toolPage.dart';
import 'package:pulse_nativ/pages/Welcom/welcomePage.dart';

enum NavigationEvents {
  HomePageClickEvent,
  AboutUsPageClickEvent,
  ProductPageClickEvent,
  ToolPageClickEvent,
  CounterPageClickEvent,
  WelcomePageClickEvent,
  LogoutPageClickEvent
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
    if (event == NavigationEvents.WelcomePageClickEvent) {
      yield WelcomePage();
    }
    if (event == NavigationEvents.LogoutPageClickEvent) {
      yield LoginPage();
    }
  }
}
