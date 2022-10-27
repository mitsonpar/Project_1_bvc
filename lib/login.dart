import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bvc/home.dart';
import 'package:bvc/login_model.dart';
import 'package:bvc/All_apis.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:bvc/project.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int check=0;
  List<Login_model> _loginList = new List<Login_model>.empty();

  @override
  void initState() {
    try {
      getLoginfromApi();
    }
    catch(e)
    {
      Fluttertoast.showToast(
          msg: "Error "+e.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child:
        // FROM HERE
        /*
        ListView.builder(
            itemCount: _loginList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_loginList[index].title),
                subtitle: Text(_loginList[index].id.toString()),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://53.fs1.hubspotusercontent-na1.net/hub/53/hubfs/Site%20owner%20turning%20images%20into%20links.jpg'),
                ),
              );
            }),
        */
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/logo.png')),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mobile',
                    hintText: 'Enter valid mobile number'),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email address'),
                keyboardType: TextInputType.emailAddress
              ),
            ),
            SizedBox(height: 20),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'City',
                      hintText: 'Enter your city'),
                  keyboardType: TextInputType.text
              ),
            ),
            SizedBox(height: 20),
            /*
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),*/
            TextButton(
              onPressed: (){
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Project()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Text('Already User? Login now')
          ],

        ), // TO HERE
      ),
    );
    /*
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600],
      ),
      body: Column(
        children: [
          Expanded(
            child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (value){
                setState((){
                  check=int.parse(value);
                });
                },
                decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your mobile number !',
              ),
              ),
            ),
          ElevatedButton(
              onPressed: () {
                if(check==0) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar
                    (content: Text('Please Enter Mobile Number !'),
                  ));
                }
                else{
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Option()));}
                },
              child: const Text('Next')
          )
          ]
    )
    );*/
  }
  void getLoginfromApi() async {
    All_apis.getLogin().then((response) {
      setState(() {
        Iterable list = jsonDecode(response.body);
        //json.decode(response.body);
        //http.defaultDecoder = Login_model.listFromJson;
        _loginList = list.map((model) => Login_model.fromJson(model)).toList();
        Fluttertoast.showToast(
            msg: "This is "+_loginList[0].title,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      });
    });
  }
}