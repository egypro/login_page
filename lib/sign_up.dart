import 'package:flutter/material.dart';
import 'log_in.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: sign_up(title: 'sign_up'));
  }
}

class sign_up extends StatefulWidget {
  const sign_up({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  bool mark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width * 1,
          // alignment: Alignment.center,
          // padding: EdgeInsets.only(left: 25),
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/pat.png',
                ),
                opacity: .05),
          ),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 28)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const log_in(title: 'log_in')),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          )),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 0)),
                  Container(
                    width: MediaQuery.of(context).size.width * .85,
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Sign Up',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Calibri',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Please enter your information below to sign up',
                          style: TextStyle(
                            fontFamily: 'Calibri',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // const Padding(padding: EdgeInsets.only(top: 50)),
                      Image.asset(
                        'assets/images/store.png',
                        width: 120,
                        // alignment: Alignment.center,
                        height: 120,
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .85,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(' Name',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Calibri',
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  // const Padding(padding: EdgeInsets.only(bottom: 0, top: )),
                  Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .85,
                        // alignment: Alignment.center,
                        height: 60,
                        decoration: const BoxDecoration(),
                        child: TextFormField(
                          // scrollPadding: EdgeInsets.all(20),
                          keyboardType: TextInputType.emailAddress,
                          // obscuringCharacter: 's',
                          maxLines: 1,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: " Please enter your name",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.all(Radius.circular(10)),
                            // ),
                            // contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width * .85,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(' Email',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Calibri',
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .85,
                      height: 60,
                      decoration: const BoxDecoration(),
                      child: TextFormField(
                        // scrollPadding: EdgeInsets.all(20),
                        keyboardType: TextInputType.visiblePassword,
                        // obscureText: false,
                        // obscuringCharacter: '*',
                        maxLines: 1,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: " Please enter your email",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.all(Radius.circular(10)),
                          // ),
                          // contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .85,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(' Password',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Calibri',
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .85,
                      height: 60,
                      decoration: const BoxDecoration(),
                      child: TextFormField(
                        // scrollPadding: EdgeInsets.all(20),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        obscuringCharacter: '*',
                        maxLines: 1,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: " Please enter your password",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.all(Radius.circular(10)),
                          // ),
                          // contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 120)),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: MediaQuery.of(context).size.width * .85,
                        child: TextButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              //   RoundedRectangleBorder(
                              //       borderRadius: BorderRadius.circular(10)),
                              // ),
                              // backgroundColor:
                              //     MaterialStateProperty.all<Color>(Color(0xFF030953)),
                              ),
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 5,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const log_in(title: 'log_in')),
                            );
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                            ),
                          ))
                    ],
                  ),
                ]),
          )),
    );
  }
}
