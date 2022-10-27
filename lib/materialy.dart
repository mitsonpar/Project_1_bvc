import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Materialy extends StatefulWidget{
  @override
  State<Materialy> createState() => _MaterialyState();
}
String? place;
class _MaterialyState extends State<Materialy> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {},
          ),
          /*
          bottomNavigationBar: BottomAppBar(
            color: Colors.blueGrey,
            child: Container(height: 50.0),
          ),*/
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Text("Approved",textAlign: TextAlign.center)),
                Tab(icon: Text("Unapproved",textAlign: TextAlign.center)),
              ],
            ), // TabBar
            title: const Text('PR'),
            backgroundColor: Colors.blue,
          ), // AppBar
          body: TabBarView(
            children: [
              //Added here
              Table(
                  columnWidths: {
                    0: FlexColumnWidth(0.2),
                    1: FlexColumnWidth(1.0),
                    2: FlexColumnWidth(0.3),
                  },
                  //defaultColumnWidth: FixedColumnWidth(120.0),
                  /*
                  border: TableBorder.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 2
                    ),*/
                  children: [

                    TableRow( children: [
                      Column(
                          children:[
                            TextButton(
                              onPressed: (){

                              },
                              child: Text(
                                '1',
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                            )]),
                      Column(
                          children:[
                            TextButton(
                              onPressed: (){

                              },
                              child: Text(
                                'Pr no 1',
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                            )]),
                      Column(
                          children:[
                            TextButton(
                              onPressed: (){

                              },
                              child: Text(
                                'Edit',
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                            )]),
                    ]),
                    TableRow( children: [
                      Column(
                          children:[
                            TextButton(
                              onPressed: (){

                              },
                              child: Text(
                                '2',
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                            )]),
                      Column(
                          children:[
                            TextButton(
                              onPressed: (){

                              },
                              child: Text(
                                'Pr no 2',
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                            )]),
                      Column(
                          children:[
                            TextButton(
                              onPressed: (){

                              },
                              child: Text(
                                'Edit',
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                            )]),
                    ]),
                  ]),
              //To here
              Icon(Icons.music_video),
            ],
          ), // TabBarView
          bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Home',
                  backgroundColor: Colors.yellow,
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Project',
                    backgroundColor: Colors.blue
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.people),
                    label: 'Approvals',
                    backgroundColor: Colors.green,
                ),
              ],
              type: BottomNavigationBarType.shifting,
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black,
              iconSize: 40,
              onTap: _onItemTapped,
              elevation: 5
          ),
        ), // Scaffold
      ), // DefaultTabController
    ); // MaterialApp
  }
}