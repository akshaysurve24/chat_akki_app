import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  var checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Center(
              child: Container(
                width: 400,
                height: 70,
                /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                child: Column(
                  children: [
                    Text(
                      "BolKon !",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 11),
                      child: Text(
                        "Connet with your peoples.",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.blueGrey,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.deepPurple.shade50,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  hintText: 'Enter your email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  fillColor: Colors.deepPurple.shade50,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  hintText: 'Enter your password'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: CheckboxListTile(
                  title: Text(
                    "Remember me",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                  ),
                  value: checkedValue,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = !checkedValue;
                    });
                  },
                  //  <-- leading Checkbox
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: TextButton(
                    onPressed: () {
                      //TODO FORGOT PASSWORD SCREEN GOES HERE
                    },
                    child: Text(
                      'Reset Password',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 50,
            width: 380,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(8.0)),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Sign in',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Container(
              child: Row(
                children: <Widget>[
                  Text('Dont have an account yet !',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.blueGrey,
                          fontSize: 15)),
                  Text(
                    'Sign up.',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
