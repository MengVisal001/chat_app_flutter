
import 'package:flutter/material.dart';
import 'signup.dart';
import 'main.dart';

class SignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Color(0xFFBE8E9EF),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 150),
              child: Center(
                child: Text(
                  'VISA',
                  style: TextStyle(
                      color: Color(0xFFB323EE6),
                      fontSize: 56,
                      fontFamily: 'Rowdies',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.2
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 35),
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Color(0xFFB353030),
                      fontSize: 27,
//                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            RoundedInputField(
              hintText: "Email Address",
              onChanged: (value) {},
            ),
            TextFieldEditor (
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  icon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RoundedInputField extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField ({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 45),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.grey,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class TextFieldEditor extends StatelessWidget {

  final Widget child;
  const TextFieldEditor({
    Key key,
    this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
      ),
      
      child: child,
    );
  }
}



