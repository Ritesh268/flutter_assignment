import 'package:flutter/material.dart';
import 'package:flutter_assignment/Bloc/model_data_bloc.dart';
import 'package:flutter_assignment/Models/model_data.dart';
import 'package:flutter_assignment/Screens/dashboardScreen.dart';
import 'package:flutter_assignment/Widgets/icon_container.dart';
import 'package:flutter_assignment/constraints/styles.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  late Future<List<Time>> timeList;
  late ModalListBloc _modalListBloc;

  @override
  void initState() {
    super.initState();
    _modalListBloc = ModalListBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ThemeStyles.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ThemeStyles.whiteColor,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "LOGIN",
                    style: ThemeStyles.fontSizeBoldB,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //EMAIL FIELD
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Email",
                          style: ThemeStyles.fontSizeBoldB,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: TextFormField(
                        controller: emailController,
                        autofocus: true,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(top: 2, left: 10),
                          counterText: "",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          // Check if this field is empty
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }

                          // using regular expression
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return "Please enter a valid email address";
                          }

                          // the email is valid
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //Password FIELD
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Password",
                          style: ThemeStyles.fontSizeBoldB,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: TextFormField(
                        controller: passwordController,
                        autofocus: true,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(top: 2, left: 10),
                          counterText: "",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        maxLength: 6,
                        validator: (value) {
                          // Check if this field is empty
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }

                          // using regular expression
                          if (value.length != 6) {
                            return "Please enter a Password of Max length of 6";
                          }

                          // the email is valid
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          child: Theme(
                            data: ThemeData(),
                            child: Checkbox(
                              activeColor: ThemeStyles.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
                              ),
                              value: true,
                              onChanged: (bool? value) {},
                            ),
                          ),
                        ),
                        Text(
                          "Remember Me?",
                          style: ThemeStyles.fontSizeNormalD,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 16,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          // Validate returns true if the form is valid, or false otherwise.

                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,

                            // you'd often call a server or save the information in a database.
                            snackBarFunction();
                            valueSave();
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: ThemeStyles.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text("LOGIN"),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "Forgot Password?",
                    style: ThemeStyles.fontSizeNormalDisableColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 1,
                        color: ThemeStyles.lineColor,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                width: 2, color: ThemeStyles.lineColor)),
                        height: 35,
                        child: Text(
                          "OR",
                          style: ThemeStyles.fontSizeNormalDisableColor,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 1,
                        color: ThemeStyles.lineColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconContainer(
                      borderColor: ThemeStyles.redColor,
                      icon: FontAwesomeIcons.google,
                      iconColor: ThemeStyles.redColor,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    IconContainer(
                      borderColor: ThemeStyles.blueColor,
                      icon: FontAwesomeIcons.facebookF,
                      iconColor: ThemeStyles.blueColor,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    IconContainer(
                      borderColor: ThemeStyles.blueColor,
                      icon: FontAwesomeIcons.linkedinIn,
                      iconColor: ThemeStyles.blueColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Need an account?",
                      style: ThemeStyles.fontSizeNormalBlack,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "SIGN UP",
                      style: ThemeStyles.fontSizeNormalBlackWithUnderline,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  snackBarFunction() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Processing Data')),
    );
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const DashBoard()));
    getModelList();
  }

  valueSave() async {
    // ignore: avoid_print
    print("function call");
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString("email", emailController.text);
    sharedPreferences.setString("password", passwordController.text);
  }

  Future<List<Time>> getModelList() async {
    timeList = _modalListBloc.fetchList();
    return await timeList;
  }
}
