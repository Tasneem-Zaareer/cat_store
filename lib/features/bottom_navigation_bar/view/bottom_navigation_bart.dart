import 'package:cat_shop/constants.dart';
import 'package:cat_shop/features/home/view/home_view.dart';
import 'package:cat_shop/features/wishlist/view/wishlist_view.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({super.key});

  @override
  State<BottomNavigationBarApp> createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
  //
  int selectedPageIndex = 0;
  void selectedPage(index){
    setState(() {
      selectedPageIndex = index;
    });
  }

  //list of Widget - home, wishlist, cart
  List<Widget> pages = [
    HomeView(),
    WishlistView(),
    Text('cart'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPageIndex,
          onTap: selectedPage,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey.shade400,
          // BottomNavigationBarItem - icon page and title
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
          ],
        ),
        //body will be list of bottom pages - index
        body: pages[selectedPageIndex],
      ),
    );
  }
}
