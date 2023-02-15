import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myshop/view/pages/account.dart';
import 'package:myshop/view/pages/cart.dart';
import 'package:myshop/view/pages/home.dart';
import 'package:myshop/view/pages/item.dart';
import 'package:myshop/view/pages/notifications.dart';
import 'package:myshop/view/pages/notifications.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(),
        backgroundColor: Colors.white,
        bottomNavigationBar: CustomNavigationBar(
          iconSize: 30.0,
          selectedColor: Colors.red,
          strokeColor: const Color(0x30040307),
          unSelectedColor: const Color(0xffacacac),
          backgroundColor: Colors.white,
          onTap: (index) {
            //print(index);
            selectedIndex = index;
            setState(() {});
          },
          currentIndex: selectedIndex,
          items: [
            CustomNavigationBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.insert_emoticon),
              title: const Text("Item"),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart),
              title: const Text("Cart"),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.notifications),
              title: const Text("Notifications"),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.people),
              title: const Text("Account"),
            ),
          ],
        ),
        body: selectedIndex == 0
            ? const MyHomePage()
            : selectedIndex == 1
                ? const ItemsPage()
                : selectedIndex == 2
                    ? const CartPage()
                    : selectedIndex == 3
                        ? const NotificationsPage()
                        : const AccountPage(),
      ),
    );
  }
}
