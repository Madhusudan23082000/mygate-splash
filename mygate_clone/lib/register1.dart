import 'package:flutter/material.dart';
import 'package:mygate_clone/AppBarDesign.dart';

class Register1 extends StatefulWidget {
  @override
  _Register1State createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDesign(context, "Get Started"),
    );
  }
}
