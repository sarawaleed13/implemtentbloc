import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:learningbloconcounter/modules/home.dart';
import 'package:learningbloconcounter/shared/blocObserver.dart';

void main() {
  runApp(  const MyApp());
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home() ,
  );
  }
}