import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:odc/presentaion_layer/widgets/SharedWidge-ODC.dart';
import 'package:odc/presentaion_layer/widgets/login_signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  bool loginIsClick = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyNavigationAppbar(loginIsClick: loginIsClick),
      body: signUpPage(
          emailController: emailController,
          passwordController: passwordController),
    );
  }
}
