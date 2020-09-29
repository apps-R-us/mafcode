import 'package:flutter/material.dart';
import 'package:mafcode/components/rounded_button.dart';
import 'package:mafcode/screens/signup_screen.dart';
import 'package:mafcode/screens/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  Color backgroundColor = Colors.blueGrey;

  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = ColorTween(
      begin: Colors.blueGrey,
      end: Color(0xff00416A),
    ).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        backgroundColor = Color(0xff00416A);
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        color: backgroundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      margin: new EdgeInsets.only(left: 80.0),
                      decoration: ShapeDecoration(
                          shape: CircleBorder(
                              side: BorderSide(width: 2, color: Colors.white))),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/welcome.png'),
                        radius: 100.0,
                        backgroundColor: Colors.white,
                      )),
                  /*Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('images/logo.png'),
                      height: 60.0,
                    ),
                  ),
                  TypewriterAnimatedTextKit(
                    text: ['Flash Chat'],
                    textStyle: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),*/
                ],
              ),
              SizedBox(
                height: 48.0,
              ),
              RoundedButton(
                title: 'Log In',
                colour: Color(0xff295883),
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginScreen.id);
                },
              ),
              RoundedButton(
                title: 'Register',
                colour: Color(0xff295883),
                onPressed: () {
                  Navigator.of(context).pushNamed(SignUpScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
} /*Scaffold(
      backgroundColor: Color(0xff00416A),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 100.0),
              child: CircleAvatar(backgroundImage:AssetImage('assets/images/welcome.png'), radius: 100.0),
            ),


          ],
        ),
      ),

    );
  }
}*/
