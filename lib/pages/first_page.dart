import "package:ecom_app/pages/home_page.dart";
import "package:ecom_app/pages/profile_page.dart";
import "package:ecom_app/pages/second_page.dart";
import "package:ecom_app/pages/settings_page.dart";
import "package:flutter/material.dart";

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  final List _pages = [HomePage(), ProfilePage(), SettingsPage()];

  void _navigateBottomBar(int Index) {
    setState(() {
      _selectedIndex = Index;
    });
  }

  void navHome(context) {
    Navigator.pop(context);
    Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "first page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: _pages[_selectedIndex],
      // body: Center(
      //     child: ElevatedButton(
      //         onPressed: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => SecondPage(),
      //               ));
      //         },
      //         child: Text("Go to second page"))),
      drawer: Drawer(
        backgroundColor: Colors.green[200],
        child: Column(children: [
          DrawerHeader(
              child: Icon(
            Icons.wysiwyg,
            size: 48,
          )),
          ListTile(
            leading: Icon(Icons.holiday_village),
            title: Text("Home"),
            onTap: () => navHome(context),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.holiday_village), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings")
          ]),
    );
  }
}
