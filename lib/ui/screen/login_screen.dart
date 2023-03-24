import 'package:flutter/material.dart';
import 'package:note/ui/screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameTextController = TextEditingController(text: 'amirahmadi');

  final _passwordTextController = TextEditingController(text: '12345678');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.lightBlue[100],
        body: getLogin(
          usernameTextController: _usernameTextController,
          passwordTextController: _passwordTextController,
        ),
      ),
    );
  }
}

class getLogin extends StatelessWidget {
  getLogin({
    Key? key,
    required TextEditingController usernameTextController,
    required TextEditingController passwordTextController,
  })  : _usernameTextController = usernameTextController,
        _passwordTextController = passwordTextController,
        super(key: key);

  final TextEditingController _usernameTextController;
  final TextEditingController _passwordTextController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/images/sticky_note.png'),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    controller: _usernameTextController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          fontFamily: 'sm', fontSize: 18, color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _passwordTextController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontFamily: 'sm', fontSize: 18, color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue[100],
                      textStyle: TextStyle(fontFamily: 'sb', fontSize: 18),
                      minimumSize: Size(200, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      print('object');
                    },
                    child: Text(
                      'Login',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(342, 64),
                    ),
                    onPressed: () {
                      final snackBar = SnackBar(
                        content: const Text('next updates will add!'),
                        backgroundColor: (Colors.black),
                        action: SnackBarAction(
                          label: 'ok',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/google.png'),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'login with your google account',
                          style:
                              TextStyle(fontFamily: 'IS', color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 130,
                    child: Image.asset('assets/images/login_ilustratiuon.jpg'),
                  ),
                  OutlinedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue[100],
                        textStyle: TextStyle(fontFamily: 'sb', fontSize: 14),
                        minimumSize: Size(100, 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      Navigator.of(context).push(_createRoute());
                    },
                    child: Text('I don' 't have account'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SignUpScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(3.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
