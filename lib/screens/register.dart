import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin/authenticate/provider/google_signin.dart';

class GoogleRegister extends StatefulWidget {
  const GoogleRegister({Key? key}) : super(key: key);

  @override
  _GoogleRegisterState createState() => _GoogleRegisterState();
}

class _GoogleRegisterState extends State<GoogleRegister> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 1, 6, 31),
          width: width,
          height: height,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Image(
                image: AssetImage('assets/icon.png'),
                height: 150,
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 30),
                child: Text(
                  'Hey There,\nWelcome Back',
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Poppins", fontSize: 40),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 100),
                child: Text(
                  'Login In To Your Account',
                  style: TextStyle(
                      fontFamily: "Poppins", color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.googleSignin();
                },
                child: Row(
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage('assets/google.png'),
                        ),
                      ),
                    ),
                    Text(
                      'Login With Google',
                      style:
                          TextStyle(color: Colors.black, fontFamily: "Poppins"),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    primary: Colors.white,
                    fixedSize: const Size(240, 50)),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage('assets/facebook.png'),
                        ),
                      ),
                    ),
                    Text(
                      'Login With Facebook',
                      style:
                          TextStyle(color: Colors.black, fontFamily: "Poppins"),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    primary: Colors.white,
                    fixedSize: const Size(240, 50)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
