import 'package:flutter/material.dart';
import 'package:hona/favorite_page.dart';
import 'package:hona/home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class NavigationPage extends StatelessWidget {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  NavigationPage({super.key});

  //Bottom navigation screens
  List<Widget> _buildScreens() {
    return [
      HomePage(),
      const FavoritePage(
        place: "Nyanga Mountains",
        location: 'location test',
        price: '160',
        rate: '5.0',
        description:
            'Formerly inyangani mountain is the highest mountain in Zimbabwe at 2,592m. The mountan is located within Nyanga national park in nyanga district, about 110km north west of Mutare.',
        pic: 'assets/bg1.jpg',
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_outlined),
        title: ("Home"),
        activeColorPrimary: const Color(0xff003263),
        inactiveColorPrimary: const Color(0xff828282),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.favorite_outlined),
        title: ("Favorite"),
        activeColorPrimary: const Color(0xff003263),
        inactiveColorPrimary: const Color(0xff828282),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.transparent,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: const NavBarDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0xff003263),
            width: 0.6,
          ),
        ),
        colorBehindNavBar: Color(0xffEFFCFF),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 400),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}
