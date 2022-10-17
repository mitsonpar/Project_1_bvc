import 'package:flutter/material.dart';
import 'package:bvc/login.dart';

class Splash extends StatefulWidget{
    const Splash({ Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
    @override
    void initState()
    {
      super.initState();
      navigatetohome();
    }

    navigatetohome() async
    {
      await Future.delayed(const Duration(milliseconds: 3000), () {});
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
    }

    @override
    Widget build(BuildContext context)
    {
      return const Scaffold(
        body: Center(
          child: Image(
            image: AssetImage('assets/logo.png'),
            height: 200,
            width: 300,
          ),
          ),
      );
    }
}
