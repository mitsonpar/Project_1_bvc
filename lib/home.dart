import 'package:flutter/material.dart';
import 'package:bvc/project.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}
String? place;
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project List'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: ListView(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom:12.0),
            children: <Widget>[
              SizedBox(height: 10),
              /*
              Text("Welcome - 9924031147",textAlign: TextAlign.center),
              SizedBox(height: 20),*/
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
              ListTile(
                  //visualDensity: VisualDensity(horizontal: 0, vertical: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  tileColor: Colors.cyan[300],
                  iconColor: Colors.cyan[600],
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Project()));
                  }),
              SizedBox(height: 30),
              ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  tileColor: Colors.purple[300],
                  iconColor: Colors.purple[600],
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Project()));
                  }),
              SizedBox(height: 30),
              ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  tileColor: Colors.lightGreen[300],
                  iconColor: Colors.lightGreen[600],
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Project()));
                  }),
              //ListTile( title: Text("Ballot"),subtitle: Text("Cast your vote."), leading:  CircleAvatar(backgroundImage: AssetImage("assets/react.png")), trailing: Icon(Icons.star))
            ],
          )
      ),

      //drawer: const NavigationDrawer(),
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
    );
  }
}
/*
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
          title: const Text('Booking History'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => History()
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
          title: Text('About us'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Aboutus()
            ));
          },
        ),
        Divider(
          color: Colors.grey,
        ),

        ListTile(
          leading: Icon(
            Icons.call,
          ),
          title: Text('Contact us'),
          onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => Contactus()
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
        ),
      ],
  );
}*/