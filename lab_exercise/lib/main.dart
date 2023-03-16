import 'package:flutter/material.dart';
import 'package:lab_exercise/Screens/MainScreen.dart';
import 'package:hive/hive.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const LabHive());
}
class LabHive extends StatelessWidget {
  const LabHive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
