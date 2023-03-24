import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isVisible = false;
  final _usernameTextController = TextEditingController();
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.lightBlue[100],
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset('assets/images/sticky_note.png'),
                ),
                Expanded(
                  flex: _isVisible ? 3 : 1,
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
                          controller: _firstNameTextController,
                          decoration: InputDecoration(
                            labelText: 'First name',
                            labelStyle: TextStyle(
                                fontFamily: 'sm',
                                fontSize: 18,
                                color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _lastNameTextController,
                          decoration: InputDecoration(
                            labelText: 'Last name',
                            labelStyle: TextStyle(
                                fontFamily: 'sm',
                                fontSize: 18,
                                color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AnimatedOpacity(
                          opacity: _isVisible ? 1.0 : 0.0,
                          curve: Curves.bounceInOut,
                          duration: Duration(milliseconds: 300),
                          child: Visibility(
                            visible: _isVisible,
                            child: Column(
                              children: [
                                TextField(
                                  controller: _usernameTextController,
                                  decoration: InputDecoration(
                                    labelText: 'Username',
                                    labelStyle: TextStyle(
                                        fontFamily: 'sm',
                                        fontSize: 18,
                                        color: Colors.black),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 2),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  controller: _emailTextController,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                        fontFamily: 'sm',
                                        fontSize: 18,
                                        color: Colors.black),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 2),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  controller: _passwordTextController,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                        fontFamily: 'sm',
                                        fontSize: 18,
                                        color: Colors.black),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 2),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        OutlinedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlue[100],
                            textStyle:
                                TextStyle(fontFamily: 'sb', fontSize: 18),
                            minimumSize: Size(200, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _isVisible = !_isVisible;
                            });
                          },
                          child: Text(
                              _isVisible == true ? 'Login' : 'other questions'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class getSignUp extends StatefulWidget {
  getSignUp({
    Key? key,
    required TextEditingController usernameTextController,
    required TextEditingController passwordTextController,
    required TextEditingController emailTextController,
    required TextEditingController firstNameTextController,
    required TextEditingController lastNameTextController,
  })  : _usernameTextController = usernameTextController,
        _passwordTextController = passwordTextController,
        _emailTextController = emailTextController,
        _firstNameTextController = firstNameTextController,
        _lastNameTextController = lastNameTextController,
        super(key: key);

  final TextEditingController _usernameTextController;
  final TextEditingController _passwordTextController;
  final TextEditingController _emailTextController;
  final TextEditingController _firstNameTextController;
  final TextEditingController _lastNameTextController;
  bool _isVisible = false;
  @override
  State<getSignUp> createState() => _getSignUpState();
}

class _getSignUpState extends State<getSignUp> {
  @override
  void setState(VoidCallback fn) {
    widget._firstNameTextController;
    widget._lastNameTextController;
  }

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
                    controller: widget._firstNameTextController,
                    decoration: InputDecoration(
                      labelText: 'First name',
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
                    controller: widget._lastNameTextController,
                    decoration: InputDecoration(
                      labelText: 'Last name',
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
                  if (widget._firstNameTextController.text.isNotEmpty &&
                      widget._lastNameTextController.text.isNotEmpty)
                    ...{},
                  Visibility(
                    maintainAnimation: false,
                    visible: widget._isVisible,
                    child: Column(
                      children: [
                        TextField(
                          controller: widget._usernameTextController,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(
                                fontFamily: 'sm',
                                fontSize: 18,
                                color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: widget._emailTextController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                fontFamily: 'sm',
                                fontSize: 18,
                                color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: widget._passwordTextController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                fontFamily: 'sm',
                                fontSize: 18,
                                color: Colors.black),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
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
                    onPressed: () {},
                    child: Text(
                      'Login',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
