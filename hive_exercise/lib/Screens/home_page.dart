import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_exercise/Screens/retrieving_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> userList = [];
  List<String> firstnameList = [];
  List<String> lastnameList = [];
  List<String> addressList = [];
  TextEditingController userController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController addressController = TextEditingController();


  final _myBox = Hive.box('mybox');

  void writeData (){
    userList.add(userController.text);
    firstnameList.add(firstnameController.text);
    lastnameList.add(lastnameController.text);
    addressList.add(addressController.text);

    _myBox.put(1, userList.last);
    _myBox.put(2, firstnameList.last);
    _myBox.put(3, lastnameList.last);
    _myBox.put(4, addressList.last);

    userController.clear();
    firstnameController.clear();
    lastnameController.clear();
    addressController.clear();


 print(_myBox.get(1));
 print(_myBox.get(2));
 print(_myBox.get(3));
 print(_myBox.get(4));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive Session'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: writeData,
              icon: const Icon(Icons.save_alt_rounded)),
        ],
      ),
      body: Center(
      child: SafeArea(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 8,),
        TextField(
          controller: userController,
          decoration: InputDecoration(
              hintText: 'Username :',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
          ),
        ),
        const SizedBox(height: 8,),
        TextField(
          controller: firstnameController,
          decoration: InputDecoration(
              hintText: 'Firstname :',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
          ),
        ),
        const SizedBox(height: 8,),
        TextField(
          controller: lastnameController,
          decoration: InputDecoration(
              hintText: 'Lastname :',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
          ),
        ),
        const SizedBox(height: 8,),
        TextField(
          controller: addressController,
          decoration: InputDecoration(
              hintText: 'Address',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
          ),
        ),
        ElevatedButton(onPressed: (){
          Navigator.push(context, CupertinoPageRoute(builder:
              (context)=> const retrieving_page(),
          ),
          );
        },
                child: const Text('Next Page')
        ),
        ],
      ),
    ),
      ),
    );
  }
}
