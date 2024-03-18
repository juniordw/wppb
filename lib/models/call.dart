import 'package:flutter/material.dart';

class Call {
  String name;
  String callDate;
  IconData icon;

  Call({required this.name, required this.callDate, required this.icon});
}

var callList = [
  Call(name: "Ayo", callDate: "Today, 08.00 PM", icon: Icons.call),
  Call(name: "Belajar", callDate: "Today, 09.00 PM", icon: Icons.call),
  Call(name: "Dart", callDate: "Today, 10.00 PM", icon: Icons.call),
  Call(name: "Flutter", callDate: "Today, 11.00 PM", icon: Icons.call),
];
