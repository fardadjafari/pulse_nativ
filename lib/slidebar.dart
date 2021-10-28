import 'package:flutter/material.dart';
import 'bloc/counter_bloc.dart';
import 'bloc/theme_bloc.dart';
import 'menuItems.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/navigation_bloc.dart';

class Slidebar extends StatefulWidget {
  @override
  _SlidebarState createState() => _SlidebarState();
}

class _SlidebarState extends State<Slidebar>
    with SingleTickerProviderStateMixin {
  bool isSidebarOpen = false;
  bool modeStyle=false;

  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    var screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return AnimatedPositioned(
        duration: Duration(milliseconds: 500),
        left: isSidebarOpen ? 65 : screenWidth - 35,
        child: Row(
          children: [
            Container(
              width: screenWidth - 100,
              height: screenHeight,
              color: Colors.amber,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: new Column(
                children: [
                  new SizedBox(
                    height: 100,
                  ),
                  new ListTile(
                    title: new Text("Pulse Group",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w800,
                            fontSize: 24)),
                    subtitle: Container(
                      child: new Text("Software Group",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      margin: EdgeInsets.only(top: 10),
                    ),
                    leading: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.black87,
                      size: 37,
                    ),
                  ),
                  new Divider(
                    height: 65,
                    color: Colors.black.withOpacity(0.4),
                    indent: 32,
                    thickness: 2,
                  ),
                  MenuItems(icon: Icons.home, title: "Home",
                      onTap: () {
                        context.bloc<NavigationBloc>().add(
                            NavigationEvents.HomePageClickEvent);
                        setState(() {
                          isSidebarOpen = false;
                        });
                      }),
                  MenuItems(icon: Icons.shopping_basket, title: "Product",
                      onTap: () {
                        context.bloc<NavigationBloc>().add(
                            NavigationEvents.ProductPageClickEvent);
                        setState(() {
                          isSidebarOpen = false;
                        });
                      }),
                  MenuItems(icon: Icons.handyman, title: "Tools",
                      onTap: () {
                        context.bloc<NavigationBloc>().add(
                            NavigationEvents.ToolPageClickEvent);
                        setState(() {
                          isSidebarOpen = false;
                        });
                      }),
                  MenuItems(icon: Icons.account_box_outlined, title: "About us",
                      onTap: () {
                        context.bloc<NavigationBloc>().add(
                            NavigationEvents.AboutUsPageClickEvent);
                        setState(() {
                          isSidebarOpen = false;
                        });
                      }
                  ),
                  new BlocBuilder<CounterBloc, int>(
                      builder: (context, int myDigit) {
                        return MenuItems(
                            icon: Icons.one_k_plus, title: "$myDigit Counter ",
                            onTap: () {
                              context.bloc<NavigationBloc>().add(
                                  NavigationEvents.CounterPageClickEvent);
                              setState(() {
                                isSidebarOpen = false;
                              });
                            }
                        );
                      }),
                  new Divider(
                    height: 65,
                    color: Colors.black38,
                    indent: 32,
                    thickness: 2,
                  ),
                  new Center(
                    child: SwitchListTile(
                      secondary: Icon(Icons.wb_sunny) ,
                      activeColor: Colors.black54,
                      value: modeStyle,
                      onChanged: (value){
                        setState(() {
                          modeStyle=!modeStyle;
                          context.bloc<ThemeBloc>().add(ThemeEvents.toggle);
                        });
                      },
                    ),
                  )

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isSidebarOpen = !isSidebarOpen;
                  });
                },
                child: Align(
                    alignment: Alignment(0, -0.8),
                    child: ClipPath(
                      child: Container(
                        width: 35,
                        height: 110,
                        alignment: Alignment.center,
                        child: AnimatedIcon(
                            color: Colors.black87,
                            icon: isSidebarOpen
                                ? AnimatedIcons.close_menu
                                : AnimatedIcons.menu_close,
                            progress: _animationController.view),
                        color: Color(0xff61B15A),
                      ),
                      clipper: CustomerMenuClipper(),
                    )),
              ),
            )
          ],
        ));
  }
}

class CustomerMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(width, 0);
    path.quadraticBezierTo(width, 8, width - 10, 16);
    path.quadraticBezierTo(0, width, 0, height / 2);
    path.quadraticBezierTo(0, height - width, width - 10, height - 16);
    path.quadraticBezierTo(width, height - 8, width, height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
