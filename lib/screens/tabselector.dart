import 'package:flutter/material.dart';
import 'package:trybeandlockr/screens/camera.dart';
import 'package:trybeandlockr/screens/homescreen2.dart';
import 'package:trybeandlockr/screens/notification.dart';
import 'package:trybeandlockr/screens/search.dart';
import 'package:trybeandlockr/screens/user.dart';

class TabSelector extends StatefulWidget {
  @override
  _TabSelectorState createState() => _TabSelectorState();
}

class _TabSelectorState extends State<TabSelector> {
  int pageIndex = 0;
  final HomeScreen2 homeScreen2 = new HomeScreen2();
  final Search search = new Search();
  final Noti notification = new Noti();
  final Camera camera = new Camera();
  final User user = new User();

  Widget _showTab = new HomeScreen2();

  Widget _tabSelector(int tab) {
    switch (tab) {
      case 0:
        return homeScreen2;
        break;
      case 1:
        return search;
        break;
      case 2:
        return camera;
        break;
      case 3:
        return notification;
        break;
      case 4:
        return user;
        break;
      default:
        new Container(
          child: Center(
            child: Text("No Tab Selected yet"),
          ),
        );
    }
  }

  Widget bottomNavBar() {
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0)),
      child: Container(
        color: Colors.orange[200],
        child: BottomNavigationBar(
          selectedFontSize: 2,
          currentIndex: pageIndex,
          //fixedColor: Colors.orange[200],

          // selectedIconTheme: ,
          onTap: (int tappedIndex) {
            setState(() {
              pageIndex = tappedIndex;
              // tappedIndex = pageIndex;
              _showTab = _tabSelector(tappedIndex);
            });
          },

          // backgroundColor: Colors.orange[200],
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.grey[800],
          unselectedItemColor: Colors.white,
          items: [
            new BottomNavigationBarItem(
              backgroundColor: Colors.orange[200],
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              title: Text(''),
            ),
            new BottomNavigationBarItem(
              backgroundColor: Colors.orange[200],
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              title: Text(''),
            ),
            new BottomNavigationBarItem(
              backgroundColor: Colors.orange[200],
              icon: Icon(
                Icons.add,
                size: 30,
              ),
              title: Text(''),
            ),
            new BottomNavigationBarItem(
              backgroundColor: Colors.orange[200],
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              title: Text(''),
            ),
            new BottomNavigationBarItem(
              backgroundColor: Colors.orange[200],
              icon: Icon(
                Icons.person_outline,
                size: 30,
              ),
              title: Text(''),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appBar = new AppBar(
      backgroundColor: Colors.orange[200],
      centerTitle: false,
      // elevation: 0.1,
      // leading: new Icon(Icons.camera_alt),
      title: Row(
        children: [
          Text(
            "TRYBE",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Icon(
            Icons.lock,
            color: Colors.red,
          ),
          Text(
            "LOCKR",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
      // title: SizedBox(
      //     height: 35.0, child: Image.asset("assets/images/insta_logo.png")),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Icon(
            Icons.send,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: bottomNavBar(),
      body: Container(
        child: Center(
          child: _showTab,
        ),
      ),
    );
  }
}
