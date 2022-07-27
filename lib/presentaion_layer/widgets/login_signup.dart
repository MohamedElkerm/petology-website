import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:odc/presentaion_layer/widgets/SharedWidge-ODC.dart';

PreferredSizeWidget MyNavigationAppbar({required loginIsClick}){
  return  AppBar(
    title: Row(
      children: [
        SvgPicture.asset("assets/images/logo.svg"),
        const SizedBox(
          width: 200,
        ),
        const Text('About us'),
        const SizedBox(
          width: 50,
        ),
        const Text('Categories'),
        const SizedBox(
          width: 50,
        ),
        const Text('Services'),
        const SizedBox(
          width: 50,
        ),
        const Text('Reqquest'),
        const SizedBox(
          width: 370,
        ),
        loginAndSignUpButton(buttonName: 'Sign Up', isClick: !loginIsClick),
        appBarWidthBetweenLoginAndSignup(),
        loginAndSignUpButton(buttonName: 'Login', isClick: loginIsClick),
      ],
    ),
    backgroundColor: HexColor('#4A3126'),
  );
}

Widget appBarWidthBetweenLoginAndSignup() {
  return const SizedBox(
    width: 30,
  );
}

Widget loginAndSignUpButton({required String buttonName, required isClick, onpress}) {
  return OutlinedButton(
    onPressed: () {},
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.red),
      backgroundColor: isClick == true
          ? MaterialStateProperty.all(Colors.white)
          : MaterialStateProperty.all(HexColor('#4A3126')),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        buttonName,
        style: isClick
            ? const TextStyle(color: Colors.black)
            : const TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget login() {
  return Container(
    width: 600,
    height: 70,
    child: OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(HexColor('#4A3126')),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Login',
          style: TextStyle(color: HexColor('#FFE3C5'), fontSize: 20),
        ),
      ),
    ),
  );
}

Widget fieldsInLogin({required emailController, required passwordController}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(40, 40, 40, 20),
        child: defaultFormField(
          controller: emailController,
          label: 'Email',
          type: TextInputType.emailAddress,
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(40, 0, 40, 40),
        child: defaultFormField(
          controller: passwordController,
          label: 'Password',
          type: TextInputType.visiblePassword,
          isPassword: true,
        ),
      ),
    ],
  );
}

Widget authButton({required backgroundColor, required title, required logo,required textColor}) {
  return Container(
    width: 250,
    height: 50,
    child: OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset(logo),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(color: textColor, fontSize: 20),
              ),
            ],
          )),
    ),
  );
}

Widget loginCard({required emailController, required passwordController}) {
  return Padding(
    padding: const EdgeInsets.only(top: 100.0),
    child: Column(
      children: [
        SvgPicture.asset("assets/images/Dog paw-cuate.svg"),
        Container(
          width: 700,
          height: 625,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: HexColor('#4A3126'),
                width: 5,
              )),
          child: Column(
            children: [
              const Center(
                  child: Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              )),
              fieldsInLogin(emailController: emailController, passwordController: passwordController),
              login(),
              const SizedBox(
                height: 20,
              ),
              forgetPassword(),
              const SizedBox(
                height: 30,
              ),
              dividerWithOr(),
              authButtons(),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Row(children: [Text('Didn\'t have an account? '),InkWell(onTap: (){},child: Text('sign up',style: TextStyle(fontWeight: FontWeight.bold),))],),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget signUpCard({required emailController, required passwordController}) {
  return Padding(
    padding: const EdgeInsets.only(top: 100.0),
    child: Column(
      children: [
        SvgPicture.asset("assets/images/Dog paw-cuate.svg"),
        Container(
          width: 700,
          height: 625,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: HexColor('#4A3126'),
                width: 5,
              )),
          child: Column(
            children: [
              const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  )),
              fieldsInLogin(emailController: emailController, passwordController: passwordController),
              login(),
              const SizedBox(
                height: 20,
              ),
              forgetPassword(),
              const SizedBox(
                height: 30,
              ),
              dividerWithOr(),
              authButtons(),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Row(children: [Text('Didn\'t have an account? '),InkWell(onTap: (){},child: Text('sign up',style: TextStyle(fontWeight: FontWeight.bold),))],),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget authButtons() {
  return Row(
    children: [
      SizedBox(
        width: 60,
      ),
      authButton(
          logo: "assets/images/facebook_logo.svg",
          backgroundColor: HexColor('#2F4582'),
          title: 'Facebook', textColor: Colors.white),
      SizedBox(
        width: 85,
      ),
      authButton(
          backgroundColor: Colors.white,
          title: 'Google',
          logo: 'assets/images/google_logo.svg', textColor: Colors.black)
      // SizedBox(height: 50,),
      // Text('Didn\'t have an account?'),
    ],
  );
}

Widget dividerWithOr() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
    child: Row(children: [
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 50, right: 20.0),
            child: const Divider(
              color: Colors.black,
              height: 36,
            )),
      ),
      const Text("Or"),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 50.0),
            child: const Divider(
              color: Colors.black,
              height: 36,
            )),
      ),
    ]),
  );
}

Widget forgetPassword() {
  return Padding(
    padding: const EdgeInsets.only(left: 450),
    child: InkWell(
      onTap: () {},
      child: Text(
        'Forget Password? ',
        style: TextStyle(color: HexColor('#4A3126')),
      ),
    ),
  );
}

Widget footerInLogin() {
  return Container(
    height: 200,
    width: double.infinity,
    color: HexColor('#4A3126'),
  );
}
