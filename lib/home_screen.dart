import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('GetX Languages')),
        backgroundColor: Colors.purple[400],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(const Locale('en','US'));
              }, child: const Text('English')),
              const SizedBox(
                width: 50,
              ),
              OutlinedButton(onPressed: (){
                Get.updateLocale(const Locale('ur','PK'));
              }, child: const Text('Urdu')),
            ],
          )
        ],
      )
    );
  }
}



/*GetX Alert, Bottom sheet, Dark and Light Themes*/
//import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text('GetX Alert')),
//         backgroundColor: Colors.teal[300],
//       ),
//       body: Column(
//         children: [
//           Card(
//             child: ListTile(
//               textColor: Colors.teal[300],
//               title: const Text('GetX Dialog Alert'),
//               subtitle: const Text('Alert Messages'),
//               //when we tap this must show alert box
//               onTap: (){
//                 Get.defaultDialog(
//                   backgroundColor: Colors.teal[200],
//                   title: 'Delete Chat',
//                   titlePadding: const EdgeInsets.only(top: 20),
//                   contentPadding: const EdgeInsets.all(20),
//                   //cannot be more than 3 lines so we have to use content
//                   middleText: 'Are you sure you want to delete this chat?',
//                   // textConfirm: 'Yes',
//                   // textCancel: 'No'
//                   confirm: TextButton(onPressed: (){
//                     //Navigator.pop(context);
//                     Get.back();
//                   }, child: const Text('ok')),
//                   cancel: TextButton(onPressed: (){
//                     Get.back();
//                   }, child: const Text('cancel')),
//                   // content: Column(
//                   //   children: [
//                   //     Text('Are you sure you want to delete this chat?'),
//                   //   ],
//                   // )
//                 );
//               },
//             ),
//           ),
//           Card(
//             child: ListTile(
//               textColor: Colors.teal[300],
//               title: const Text('GetX Bottom Sheet Alert'),
//               subtitle: const Text('Alert Messages'),
//               //when we tap this must show alert box
//               onTap: (){
//                 Get.bottomSheet( Container(
//                   decoration:BoxDecoration(
//                     color: Colors.teal[300],
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Column(
//                     children: [
//                       ListTile(
//                         leading: const Icon(Icons.light_mode_outlined),
//                         title: const Text('Light Mode'),
//                         onTap: (){
//                           Get.changeTheme(ThemeData.light());
//                           Get.back();
//                         },
//                       ),
//                        ListTile(
//                         leading: const Icon(Icons.dark_mode_outlined),
//                         title: const Text('Dark Mode'),
//                          onTap: (){
//                           Get.changeTheme(ThemeData.dark());
//                           Get.back();
//                          },
//                       )
//                     ],
//                   ),
//                 ));
//               },
//             ),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: (){
//       },
//       backgroundColor: Colors.teal[300],
//       child: const Icon(Icons.add),),
//
//     );
//   }
// }