import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'nav_pages/home_page.dart';
import 'nav_pages/insurance_page.dart';
import 'nav_pages/stores_page.dart';

class ProvidedStylesExample extends StatefulWidget {
  final BuildContext menuScreenContext;
  ProvidedStylesExample({Key key, this.menuScreenContext}) : super(key: key);

  @override
  _ProvidedStylesExampleState createState() => _ProvidedStylesExampleState();
}

class _ProvidedStylesExampleState extends State<ProvidedStylesExample> {
  PersistentTabController _controller;
  bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      NavHomePage(),
      // Container(
      //   child: Center(
      //     child: Text(
      //       'Home Screen',
      //       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      //     ),
      //   ),
      //   ),
      StorePage(),
      //  Container(),
      InsurancePage(),
      Container(),
      Container(),
      Container(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.home_outlined,
          size: 25,
        ),
        title: "Home",

        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
        // inactiveColorSecondary: Colors.purple,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.store_outlined,
          size: 25,
        ),
        title: "Stores",
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
        // inactiveColorSecondary: Colors.purple,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.verified_user_outlined,
          size: 25,
        ),
        title: ('Insurance'),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          // initialRoute: PeriodHomePage.id,
          routes: {},
        ),
      ),
      PersistentBottomNavBarItem(
        // contentPadding: EdgeInsets.zero,
        icon: Icon(
          Icons.money_outlined,
          size: 25,
        ),
        title: ("My Money"),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          //  initialRoute: MinePage.id,
          routes: {},
        ),
      ),
      PersistentBottomNavBarItem(
        // contentPadding: EdgeInsets.zero,
        icon: Icon(
          Icons.wallet_giftcard_outlined,
          size: 25,
        ),
        title: ("Wallet"),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          //  initialRoute: MinePage.id,
          routes: {},
        ),
      ),
      PersistentBottomNavBarItem(
        // contentPadding: EdgeInsets.zero,
        icon: Icon(
          Icons.sync_alt_outlined,
          size: 25,
        ),

        title: "History",
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          //  initialRoute: MinePage.id,
          routes: {},
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PersistentTabView(context,
            controller: _controller,
            screens: _buildScreens(),
            items: _navBarsItems(),
            confineInSafeArea: true,
            backgroundColor: Colors.white, // Default is Colors.white.
            handleAndroidBackButtonPress: true, // Default is true.
            resizeToAvoidBottomInset:
                true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
            stateManagement: true, // Default is true.
            hideNavigationBarWhenKeyboardShows:
                true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(10.0),
              colorBehindNavBar: Colors.white,
            ),
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: ItemAnimationProperties(
              // Navigation Bar's items animation properties.
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: ScreenTransitionAnimation(
              // Screen transition animation on change of selected tab.
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle.style3
            //   .neumorphic, // Choose the nav bar style with this property.
            ));
  }
}
