import 'package:flutter/material.dart';
import 'package:trybeandlockr/screens/homescreen2.dart';
import 'package:trybeandlockr/screens/tabselector.dart';

class LoginOrSignup extends StatefulWidget {
  @override
  _LoginOrSignupState createState() => _LoginOrSignupState();
}

class _LoginOrSignupState extends State<LoginOrSignup> {
  bool _passwordVisible = true;
  //bool _loading = false;
  String email, password, confirmPassword;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Hero(
                        tag: 'trybe&Lockr',
                        child: CircleAvatar(
                          child: Text(
                            "LOGO",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          radius: 50,
                          backgroundColor: Colors.green[700],
                          foregroundColor: Colors.amber,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          "Sign up/Log in",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Hero(
                            tag: 'google',
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: ExactAssetImage(
                                'assets/images/googlee.png',
                              ),
                              backgroundColor: Colors.orange[100],
                              // foregroundColor: Colors.amber,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Hero(
                            tag: 'facebook',
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: ExactAssetImage(
                                'assets/images/fb.png',
                              ),
                              backgroundColor: Colors.orange[100],
                              // foregroundColor: Colors.amber,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Hero(
                            tag: 'twitter',
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: ExactAssetImage(
                                'assets/images/twitt.png',
                              ),
                              backgroundColor: Colors.orange[100],
                              // foregroundColor: Colors.amber,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Hero(
                            tag: 'instagram',
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: ExactAssetImage(
                                'assets/images/insta.png',
                              ),
                              backgroundColor: Colors.orange[100],
                              foregroundColor: Colors.orange[100],
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Hero(
                            tag: 'telegram',
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: ExactAssetImage(
                                'assets/images/tele.png',
                              ),
                              backgroundColor: Colors.orange[100],
                              foregroundColor: Colors.orange[100],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(32),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          maxLines: 1,
                          showCursor: true,
                          validator: (value) {
                            if (value.isEmpty ||
                                !value.contains("@") ||
                                !value.contains(".com")) {
                              return "Please enter valid email";
                            }
                            return null;
                          },
                          onSaved: (value) => email = value,
                          onChanged: (value) => email = value,
                          keyboardType: TextInputType.emailAddress,
                          autofocus: false,
                          enableSuggestions: true,
                          // initialValue: 'alucard@gmail.com',
                          decoration: InputDecoration(
                            // fillColor: Colors.orange[100],
                            hintText: 'Email',
                            //filled: true,
                            // focusColor: Colors.white,
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0),
                              borderSide: new BorderSide(
                                color: Colors.orange[100],
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 05,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(32),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          maxLines: 1,
                          showCursor: true,
                          validator: (value) {
                            if (value.isEmpty ||
                                !value.contains("@") ||
                                !value.contains(".com")) {
                              return "Please enter valid email";
                            }
                            return null;
                          },
                          onSaved: (value) => email = value,
                          onChanged: (value) => email = value,
                          keyboardType: TextInputType.emailAddress,
                          autofocus: false,
                          enableSuggestions: true,
                          // initialValue: 'alucard@gmail.com',
                          decoration: InputDecoration(
                            // fillColor: Colors.orange[100],
                            hintText: 'Username',
                            //filled: true,
                            // focusColor: Colors.white,
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0),
                              borderSide: new BorderSide(
                                color: Colors.orange[100],
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 05,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(32),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          maxLines: 1,
                          showCursor: true,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value.length < 6) {
                              return "Password should be alteast 5 characters long";
                            }
                            return null;
                          },
                          onSaved: (value) => password = value,
                          onChanged: (value) => password = value,
                          autofocus: false,
                          // initialValue: 'some password',
                          obscureText: _passwordVisible,

                          decoration: InputDecoration(
                            hintText: 'Password',
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0),
                              borderSide: BorderSide.none,
                              // borderSide: new BorderSide(
                              //   color: Colors.redAccent,
                              //   width: 2,
                              // ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0),
                              borderSide: new BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            // enabledBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(32.0),
                            //   borderSide: BorderSide(
                            //     color: Colors.redAccent,
                            //     width: 2,
                            //   ),
                            // ),
                            // focusColor: Colors.red,
                            suffixIcon: IconButton(
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.green[700],
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.070,
                        margin: EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        TabSelector()));
                            // print("hereeeee");
                            // print(email);
                            // print(password);
                            // loginWithAuth(email, password);

                            // Navigator.of(context).pushNamed(HomePage.tag);
                          },
                          padding: EdgeInsets.all(12),
                          color: Colors.green[800],
                          child: Text('Signup',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.070,
                        margin: EdgeInsets.only(left: 30, right: 30, top: 05),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          onPressed: () {
                            // print("hereeeee");
                            // print(email);
                            // print(password);
                            // loginWithAuth(email, password);

                            // Navigator.of(context).pushNamed(HomePage.tag);
                          },
                          padding: EdgeInsets.all(12),
                          color: Colors.green[800],
                          child: Text('Log in',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Forgot password? ',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 1,
                              decorationThickness: 1.5,
                              color: Colors.black54,
                              // decoration: TextDecoration.underline,
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              'Click Here',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 1,
                                decorationThickness: 2,
                                color: Colors.green[800],
                                // decoration: TextDecoration.underline,
                              ),
                            ),
                            onTap: () {
                              print("Forgot");
                            },
                          ),
                          SizedBox(height: 20),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
