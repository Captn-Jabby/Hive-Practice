import 'package:flutter/material.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Hive Session'),
          centerTitle: true,
        actions: [
          IconButton(onPressed: (){

          },
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
                  decoration: InputDecoration(
                    hintText: 'Username :',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
                const SizedBox(height: 8,),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Firstname :',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                const SizedBox(height: 8,),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Lastname :',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                const SizedBox(height: 8,),
                 TextField(
                  decoration: InputDecoration(
                  hintText: 'Address',
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  )
                ),
               ),




               // ElevatedButton(onPressed: (){},
               //     style: ElevatedButton.styleFrom(
               //         shape: RoundedRectangleBorder(
               //             borderRadius: BorderRadius.circular(20)
               //         )
               //     ),
               //      child: const Text('Write')),
               //
               //  const SizedBox(width: 12,),
               //
               //   ElevatedButton(onPressed: (){},
               //       style: ElevatedButton.styleFrom(
               //           shape: RoundedRectangleBorder(
               //               borderRadius: BorderRadius.circular(20)
               //           )
               //       ),
               //        child: const Text('Enter')),
               //
               //  const SizedBox(width: 12,),
               //
               //     ElevatedButton(onPressed: (){},
               //         style: ElevatedButton.styleFrom(
               //           shape: RoundedRectangleBorder(
               //             borderRadius: BorderRadius.circular(20)
               //           )
               //         ),
               //        child: const Text('Delete')),
                

              ],
            ),
          ),
      ),
    );
  }
}
