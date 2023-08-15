import 'package:location_track/screens/registration_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:location_track/bus_fees.dart';
import 'package:location_track/firstscreen.dart';
import 'package:location_track/location.dart';
import 'package:location_track/my_drawer_header.dart';
import 'package:location_track/NotesPage.dart';
import 'package:location_track/bus.dart';
import 'package:location_track/firstpage.dart';

import '../EditProfilePage.dart';
import '../about_us.dart';
import '../bus_track.dart';
import '../logout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email!!");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a Valid Email");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: "Email",
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 3, color: Colors.purple.shade100), //<-- SEE HERE
        ),
      ),
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      validator: (value) {
        RegExp regex = RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Characters)");
        }
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hintText: "Password",
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 3, color: Colors.purple.shade100), //<-- SEE HERE
        ),
      ),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.purple.shade100,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          print('btn cick');
          signIn(emailController.text, passwordController.text);
        },
        child: const Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        height: 200,
                        child: Image.asset(
                          "images/bus.jpeg",
                          fit: BoxFit.contain,
                        )),
                    const SizedBox(height: 45),
                    emailField,
                    const SizedBox(height: 25),
                    passwordField,
                    const SizedBox(height: 35),
                    loginButton,
                    const SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Don't have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegistrationScreen()));
                            },
                            child: const Text(
                              "SignUp",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          )
                        ])
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        // Call signInWithEmailAndPassword to sign in the user
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );

        // If signInWithEmailAndPassword doesn't throw an exception, the login was successful
        // You can access the user's information using userCredential.user
        Fluttertoast.showToast(msg: "Login Successful");
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MainPage()),
        );
      } on FirebaseAuthException catch (e) {
        String errorMessage = "An undefined Error happened.";

        switch (e.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
        }
        Fluttertoast.showToast(msg: errorMessage);
      }
    }
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.firstpage;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.firstpage) {
      container = FirstPage();
    } else if (currentPage == DrawerSections.bus_track) {
      container = BusTrack();
    } else if (currentPage == DrawerSections.bus_details) {
      container = bus_fees();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.about_us) {
      container = AboutUsPage();
    } else if (currentPage == DrawerSections.logout) {
      container = LogOutPage();
    } else if (currentPage == DrawerSections.EditProfiePage) {
      container = EditProfilePage();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "Where is my Bus?",
          style: TextStyle(fontSize: 22.0, color: Colors.black),
        ),
      ),
      //backgroundColor: Image.asset('images/profile.jpg').color,
      backgroundColor: Colors.purple.shade50,
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 250,
            width: 580,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage('images/clg.jpeg'),
              ),
            ),
          ),
          const Center(
            child: Text('\t\tWelcome to NKOCET\n Bus Management System',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 26.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),

          const Center(
            child: CircleAvatar(
              radius: 70.0,
              // Icon(Icons.add_location_alt_outlined, color: Colors.teal),
              backgroundImage: AssetImage("images/blackbus.png"),
              // "https://static.vecteezy.com/system/resources/previews/000/423/620/original/vector-school-bus-icon.jpg"),
            ),
          ),
          // Image.asset(
          //   'images/profile.jpg',
          //   width: 200,
          //   height: 200,
          // ),

          const Center(
            child: Text(
              'Where is my Bus?',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.black,
                  fontSize: 15.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 150,
            child: Divider(color: Colors.green.shade400),
          ),

          TextButton(
            child: Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 60.5),
                child: ListTile(
                  leading: Icon(Icons.location_on, color: Colors.teal),
                  title: Text(
                    'Track Location',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15.0),
                  ),
                )),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => location1(n: '1'))));
            },
          ),
          TextButton(
            child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 60.5),
                child: ListTile(
                  leading: Icon(Icons.library_books, color: Colors.teal),
                  title: Text(
                    'Bus Details',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15.0),
                  ),
                )),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => firstscreen())));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Bus Track", Icons.location_on_outlined,
              currentPage == DrawerSections.bus_track ? true : false),
          menuItem(2, "Bus Details", Icons.directions_bus,
              currentPage == DrawerSections.bus_details ? true : false),
          menuItem(3, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          menuItem(4, "About Us", Icons.person_outline,
              currentPage == DrawerSections.about_us ? true : false),
          const Divider(),
          menuItem(5, "Log Out", Icons.logout_outlined,
              currentPage == DrawerSections.logout ? true : false),
          menuItem(6, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.EditProfiePage ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => bus())));
            } else if (id == 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => bus_fees())));
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => AboutUsPage())));
            } else if (id == 5) {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => LogOutPage())));
            } else if (id == 6) {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => EditProfilePage())));
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  bus_details,
  about_us,
  logout,
  firstpage,
  bus_track,
  bus_fees,
  EditProfiePage,
}
