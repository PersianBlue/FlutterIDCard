import "package:flutter/material.dart";
import 'package:flutter_apps/pages/choose_location.dart';
import 'package:flutter_apps/pages/home.dart';
import 'package:flutter_apps/pages/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
      },
    ));
