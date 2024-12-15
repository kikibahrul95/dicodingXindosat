import 'package:flutter/material.dart';
import 'package:presensi_1/bottomnav.dart';
import 'package:presensi_1/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black,width: 5),
                        // borderRadius: BorderRadius.circular(100)
                        ),
                    child: Image(
                      image: AssetImage("images/Logors1.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black)),
                  child: TextField(
                    //controller: emailController,
                    decoration: InputDecoration(
                        icon: Icon(Icons.mail),
                        border: InputBorder.none,

                        /// hintStyle: greyFontStyle,
                        hintText: 'Tulis Email Disini'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black)),
                  child: TextField(
                    obscureText: true,
                    //controller: emailController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      border: InputBorder.none,

                      /// hintStyle: greyFontStyle,
                      hintText: 'Tulis Password Disini',
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 0),
                    height: 65,
                    padding: EdgeInsets.fromLTRB(12, 05, 12, 05),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Bottomnav()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 30, color: Colors.white70),
                        )))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
