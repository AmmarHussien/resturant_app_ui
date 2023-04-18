import 'package:flutter/material.dart';

BoxShadow boxShadoow() {
  return BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 2,
    blurRadius: 10,
    offset: const Offset(0, 3),
  );
}
