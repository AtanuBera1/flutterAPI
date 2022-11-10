import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  bool obsText = true;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 3));
      await Navigator.pushNamed(context, "home");

      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "asset/image/lock.png",
            fit: BoxFit.contain,
            height: 32.0,
            width: 32.0,
          ),
          SizedBox(width: 10.0),
          Text("Login")
        ]),
      ),
      body: Center(
        child: Container(
          width: 500,
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  // controller: textController,

                  decoration: new InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    hintText: "Account",
                  ),

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username can't be empty";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  obscureText: obsText,

                  // controller: textController,

                  decoration: new InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            obsText = !obsText;
                          });
                        },
                        child: obsText == true
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off)),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    hintText: "Password",
                  ),

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password can't be empty";
                    } else if (value.length < 6) {
                      return "Password lenght atleast 6";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 15),
                    InkWell(onTap: () {}, child: Text("Forget Password?")),
                  ],
                ),
                SizedBox(height: 55),
                // Material(
                //   color: Colors.black,
                //   borderRadius: BorderRadius.circular(50.0),
                //   child: InkWell(
                //     onTap: () => moveToHome(context),
                //     child: AnimatedContainer(
                //       duration: Duration(seconds: 1),
                //       child: Center(
                //           child: changeButton
                //               ? Icon(
                //                   Icons.done,
                //                   color: Colors.white,
                //                 )
                //               : Text(
                //                   "Login",
                //                   style: TextStyle(
                //                       color: Colors.white,
                //                       fontWeight: FontWeight.w500),
                //                 )),
                //       height: 50.0,
                //       width: changeButton ? 50.0 : 100.0,
                //     ),
                //   ),
                // )

                Material(
                  elevation: 2.0,
                  color: Colors.black,
                  shape: StadiumBorder(),
                  child: InkWell(
                      borderRadius: BorderRadius.circular(50.0),
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        child: Center(
                          child: changeButton
                              ? CircularProgressIndicator(
                                  strokeWidth: 3.0,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                ),
                        ),
                        height: 41.0,
                        width: changeButton ? 41.0 : 95.0,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
