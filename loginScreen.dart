import 'package:flutter/material.dart';
import 'package:quiz_fair/constants.dart';
import 'package:quiz_fair/widgets/widgetsExporter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  bool password = false;

  @override
  void initState() {
    super.initState();
    AnimationController _animationController;
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: kPrimaryGradientColor),
      child: Scaffold(
          body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
            height: MediaQuery.of(context).size.height,
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    DecorationContainer('Sign In'),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  labelText: 'Email',
                                  hintText: 'Enter your e-mail',
                                  
                                  suffixIcon: Icon(
                                    Icons.email_rounded,
                                    color: kTextColor,
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto)),
                          SizedBox(height: 15),
                          TextFormField(
                              obscureText: password == false ? true : false,
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  hintText: 'Enter your password',
                                  suffixIcon: IconButton(
                                      icon: Icon(
                                          password == false
                                              ? Icons.visibility_rounded
                                              : Icons.visibility_off_rounded,
                                          color: kTextColor),
                                      onPressed: () {
                                        if (password == true) {
                                          setState(() {
                                            password = false;
                                          });
                                        } else if (password == false) {
                                          setState(() {
                                            password = true;
                                          });
                                        }
                                      }),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto)),
                          SizedBox(height: 15),
                          mainButton('CONTINUE'),
                          SizedBox(height: 25)
                        ],
                      ),
                    )
                  ],
                ))),
      )),
    );
  }
}
