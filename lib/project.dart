import 'package:flutter/material.dart';
import 'package:bvc/materialy.dart';
import 'package:bvc/model.dart';
import 'package:bvc/All_apis.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';

class Project extends StatefulWidget{
  @override
  State<Project> createState() => _ProjectState();
}
String? place;
class _ProjectState extends State<Project> {
  late Future <List<Model>> futureData;
  late List<Model> datas;
  All_apis apis = new All_apis();

  Future <List<Model>> fetchData() async {
    final response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((data) => new Model.fromJson(data)).toList();
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
  /*
  Future<List<dynamic>> getJobsData() async {
    String url = 'https://jsonplaceholder.typicode.com/albums';
    var response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    return json.decode(response.body);
  }*/
  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web API Test'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
              child: FutureBuilder <List<Model>>(
              future: futureData,
                builder: (context, snapshot) {

                  if (snapshot.hasData || snapshot.data != null) {
                      datas = snapshot.data ?? <Model>[];;
                      return
                      ListView.builder(
                      itemCount: datas.length,
                      itemBuilder: (BuildContext context, int index) {
                      return Container(
                      height: 75,
                      color: Colors.white,
                      child: Center(child: Text(datas[index].title),
                      ),);
                  }
              );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default show a loading spinner.
                return CircularProgressIndicator();
              },
                ),
    ),
      /*
      body: Center(
          child: ListView(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom:12.0),
            children: <Widget>[
              SizedBox(height: 10),

              Text("This is Project 1",textAlign: TextAlign.center),
              SizedBox(height: 20),
              /*
              ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 450,
                      minHeight: 500,
                      maxWidth: 450,
                      maxHeight: 500,
                    ),
                    child: Image.asset('assets/corona.png', fit: BoxFit.fill),
                  )),*/
              /*
              ListTile(
                  //visualDensity: VisualDensity(horizontal: 0, vertical: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  tileColor: Colors.cyan[900],
                  iconColor: Colors.cyan[400],
                  visualDensity: VisualDensity(vertical: 4),
                  title: Text("Project 1",style: TextStyle(color: Colors.white)),
                  subtitle: Text("This is description of project 1.",style: TextStyle(color: Colors.white)),
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 64,
                      minHeight: 64,
                      maxWidth: 64,
                      maxHeight: 64,
                    ),
                    child: Image.asset('assets/logo.png', fit: BoxFit.cover),
                  ),
                  trailing: Icon(Icons.star),
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => Visitor()));
                  }),
              SizedBox(height: 30),
              ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  tileColor: Colors.purple[600],
                  iconColor: Colors.purple[300],
                  visualDensity: VisualDensity(vertical: 4),
                  title: Text("Project 2",style: TextStyle(color: Colors.white)),
                  subtitle: Text("This is description of project 2.",style: TextStyle(color: Colors.white)),
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 64,
                      minHeight: 64,
                      maxWidth: 64,
                      maxHeight: 64,
                    ),
                    child: Image.asset('assets/logo.png', fit: BoxFit.cover),
                  ),
                  trailing: Icon(Icons.star),
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => Gallery()));
                  }),
              SizedBox(height: 30),
              ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  tileColor: Colors.lightGreen[800],
                  iconColor: Colors.lightGreen[300],
                  visualDensity: VisualDensity(vertical: 4),
                  title: Text("Project 3",style: TextStyle(color: Colors.white)),
                  subtitle: Text("This is description of project 3.",style: TextStyle(color: Colors.white)),
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 64,
                      minHeight: 64,
                      maxWidth: 64,
                      maxHeight: 64,
                    ),
                    child: Image.asset('assets/logo.png', fit: BoxFit.cover),
                  ),
                  trailing: Icon(Icons.star),
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => Gallery()));
                  }),
                  *//*
              //ListTile( title: Text("Ballot"),subtitle: Text("Cast your vote."), leading:  CircleAvatar(backgroundImage: AssetImage("assets/react.png")), trailing: Icon(Icons.star))
            ],
          )
      ),

      drawer: const NavigationDrawer(),*/
      /*
      Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Image(
                image: AssetImage('assets/logo.png'),
                height: 200,
                width: 300,
              ),
              //Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(
                Icons.history,
              ),
              title: const Text('Booking History'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.people,
              ),
              title: Text('About us'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Aboutus()));
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.call,
              ),
              title: TextButton(
                child: new Text('Contact us'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contactus()),
                  );
                }
                ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text(''),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(''),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomRight,
                child: ListTile(
                  hoverColor: Colors.lightBlue,
                  /*
                  leading: Icon(
                    Icons.null,
                    color: Colors.grey,
                  ),*/
                  title: Text('Version #0.001'),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),

      ),*/

       */
    );
  }
}
class NavigationDrawer extends StatelessWidget{
  const NavigationDrawer({Key? key}) : super (key:key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      )
    )
  );
  Widget buildHeader(BuildContext context) => Container();

  Widget buildMenuItems(BuildContext context) => Column(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Image(
            image: AssetImage('assets/logo.png'),
            height: 200,
            width: 300,
          ),
          //Text('Drawer Header'),
        ),
        ListTile(
          leading: Icon(
            Icons.history,
          ),
          title: const Text('Material'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Materialy()
            ));
          },
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: Icon(
            Icons.people,
          ),
          title: Text('Vendor'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Materialy()
            ));
          },
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: Icon(
            Icons.people,
          ),
          title: Text('PR'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Materialy()
            ));
          },
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: Icon(
            Icons.people,
          ),
          title: Text('PO'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Materialy()
            ));
          },
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: Icon(
            Icons.people,
          ),
          title: Text('GRN'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Materialy()
            ));
          },
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: Icon(
            Icons.people,
          ),
          title: Text('Consumption'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Materialy()
            ));
          },
        ),
        Divider(
          color: Colors.grey,
        ),
        /*
        ListTile(
          leading: Icon(
            Icons.call,
          ),
          title: Text('Contact us'),
          onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => Materialy()
              ));
              },
          ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
          ),
          title: const Text('Logout'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(
          color: Colors.grey,
        ),
        Expanded(
          child: Align(
            alignment: FractionalOffset.bottomRight,
            child: ListTile(
              hoverColor: Colors.lightBlue,
              /*
                  leading: Icon(
                    Icons.null,
                    color: Colors.grey,
                  ),*/
              title: Text('Version #0.001'),
              onTap: () {},
            ),
          ),
        ),*/
      ],
  );
}