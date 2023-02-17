import 'package:flutter/material.dart';
import 'sign_up.dart';
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
        debugShowCheckedModeBanner: false, home: log_in(title: 'log_in'));
  }
}

class log_in extends StatefulWidget {
  const log_in({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<log_in> createState() => _log_inState();
}

class _log_inState extends State<log_in> {
  bool mark = false;
  bool _isObscure = true;
//  String _password;
  Widget togglePassword() {
    return IconButton(
        onPressed: () {
          setState(() {
            _isObscure = !_isObscure;
          });
        },
        icon: _isObscure
            ? const Icon(Icons.visibility)
            : const Icon(Icons.visibility_off));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
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
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.only(top: 76)),
              Container(
                width: MediaQuery.of(context).size.width * .85,
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Welcome back!',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Login to your existing account',
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
                  Image.asset(
                    'assets/images/store.png',
                    width: 120,
                    height: 120,
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * .85,
                child: const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(' Email address',
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
                      keyboardType: TextInputType.emailAddress,
                      maxLines: 1,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: " e.g name@example.com",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  )),
              Container(
                width: MediaQuery.of(context).size.width * .85,
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
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isObscure,
                    obscuringCharacter: '*',
                    maxLines: 1,
                    decoration: InputDecoration(
                      suffixIcon: togglePassword(),
                      border: InputBorder.none,
                      labelText: " e.g ***********",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Checkbox(
                              value: mark,
                              onChanged: (value) {
                                setState(() {
                                  mark = value!;
                                });
                              }),
                          const Padding(padding: EdgeInsets.only(top: 0)),
                          const Text(
                            'Remember me',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
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
                      style: const ButtonStyle(),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 10,
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
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(10),
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/g.png',
                        ),
                        fit: BoxFit.none,
                        scale: 18,
                      ),
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/f.png'),
                        fit: BoxFit.none,
                        scale: 4,
                      ),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    "Don't have an accont?",
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
                                  const sign_up(title: 'sign_up')),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
