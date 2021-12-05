import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_ims/views/salesman/demandScreen.dart';
import 'package:fyp_ims/views/salesman/homeScreen.dart';
import 'package:fyp_ims/views/salesman/replacementScreen.dart';
import 'package:fyp_ims/views/salesman/salesScreen.dart';

class SalesmanHomePage extends StatefulWidget {
  const SalesmanHomePage({Key? key}) : super(key: key);

  @override
  _SalesmanHomePageState createState() => _SalesmanHomePageState();
}

class _SalesmanHomePageState extends State<SalesmanHomePage> {

  int cIndex=0;
  final screens=[
    HomeScreen(),
    SalesScreen(),
    DemandScreen(),
    ReplacementScreen(),
  ];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100.0,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: BottomNavigationBar(
          onTap: (index) {
              setState(() {
                cIndex = index;
              });
          },
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.indigo.shade900,
          currentIndex: cIndex,
          selectedItemColor: Colors.blueGrey,
          selectedIconTheme:
          IconThemeData(color: Colors.blueGrey, size: 30.0),
          showSelectedLabels: true,
          unselectedItemColor: Colors.grey,
          unselectedIconTheme:
          IconThemeData(color: Colors.grey, size: 20.0),
          showUnselectedLabels: true,
          unselectedFontSize: 18.0,
          selectedFontSize: 18.0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
              ),
              label: "Home",
              backgroundColor: Colors.indigo.shade900
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_shopping_cart,
              ),
              label: "sales",
                backgroundColor: Colors.indigo.shade900
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.tags,
              ),
              label: "Demand",
                backgroundColor: Colors.indigo.shade900
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.find_replace,
              ),
              label: "Replacement",
                backgroundColor: Colors.indigo.shade900
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("SalesMan Interface"),
        centerTitle: true,
      ),
      body: screens[cIndex]
    );
  }

}