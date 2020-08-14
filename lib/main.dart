
import 'package:flutter/material.dart';
import 'signup.dart';
import 'signin.dart';

void main() {

  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'JosefinSans'
    ),
    home: HomePage()
  ));

}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
//      color: _backgroundColor,
        //TODO: Step 1 - Add background.jpg to this Container as a background image.
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('all_images/background.jpg'),fit: BoxFit.cover,),
        ),
        //TODO: step 1 - Add text
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 150),
                    child: Text(
                      'VISA',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 56,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.2,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    padding: EdgeInsets.symmetric(
                        horizontal: 32
                    ),
                    child: Text(
                      'Talk to anyone, anywhere and anytime',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(70, 360, 70, 0),
                child: FlatButton(
                  textColor: Colors.white,
                  color: Color(0xFFB323EE6),
                  padding: EdgeInsets.all(12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SignUp()
                      )
                    );
                  },
                ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  'Are you already member?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              child: FlatButton(
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFB323EE6)
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SignIn()
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}



