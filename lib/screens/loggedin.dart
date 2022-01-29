import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signin/authenticate/provider/google_signin.dart';

class LoggedInWidget extends StatefulWidget {
  const LoggedInWidget({Key? key}) : super(key: key);

  @override
  _LoggedInWidgetState createState() => _LoggedInWidgetState();
}

class _LoggedInWidgetState extends State<LoggedInWidget> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Logged In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        width: width,
        height: height,
        color: Color.fromARGB(255, 3, 17, 29),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Profile',
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 16, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.photoURL!),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Name: ${user.displayName!}',
              style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Email: ${user.email!}',
              style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
            ),
          ],
        ),
      ),
    );
  }
}
