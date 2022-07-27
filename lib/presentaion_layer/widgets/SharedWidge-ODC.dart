import 'package:flutter/material.dart';

Widget defaultButton({
  double wid = double.infinity,
  double r = 10.0,
  required String text,
  bool isUpper = true,
  Color back = Colors.blue,
  required Function function,
}) =>
    Container(
      width: wid,
      decoration: BoxDecoration(
        color: back,
        borderRadius: BorderRadius.circular(
          r,
        ),
      ),
      child: FlatButton(
        onPressed: function(),
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultFormField({
  //Validation is not correct
   //Function validate,
  required controller,
  required label,
   prefix,
  required type,
  suffix,
  suffixPressed,
  hint = '',
  onTap,
  onSubmit,
  onChange,
  isPassword = false,
}) =>
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: TextFormField(
        cursorColor: Colors.teal,
        //Validation is not correct
        //validator:validate ,
        onFieldSubmitted: onSubmit,
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        onChanged: onChange,
        onTap: onTap,
        decoration: InputDecoration(
          label: Text(label),
          prefixIcon: Icon(prefix),
          hintText: hint,
          border: InputBorder.none,
        ),
      ),
    );

void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

Widget buildSeparator() => Container(
  height: 1.0,
  width: double.infinity,
  color: Colors.grey[300],
);

Widget buildTaskItem({
  required time,
  required date,
  required title,
}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 40.0,
          child: Text("$time"),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$title'),
            Text('$date'),
          ],
        )
      ],
    ),
  );
}
