// import 'package:flutter/material.dart';
// // ignore: unnecessary_import
// import 'package:flutter/widgets.dart';
// import 'package:sdlc/pages/pos_pricing.dart';

// import '../main.dart';
// import '../pages/pos_pricing.dart';

// class DrawerWidget extends StatelessWidget {
//   const DrawerWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     //final isCollapsed = true;

//     // ignore: sized_box_for_whitespace
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.2,
//       child: Drawer(
//         child: Container(
//           color: const Color.fromARGB(255, 255, 39, 39),
//           child: ListView(
//             children: [
//               const DrawerHeader(
//                 child: Center(
//                   child: Text(
//                     "MAC Tools",
//                     style: TextStyle(fontSize: 24),
//                   ),
//                 ),
//               ),
//               ListTile(
//                 title: const Text(
//                   "Home",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 leading: const Icon(Icons.home),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => const POSPricing(),
//                     ),
//                   );
//                 },
//               ),
//               ListTile(
//                 title: const Text(
//                   "Logout",
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 leading: const Icon(Icons.logout),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) =>
//                           const MyHomePage(title: 'Flutter Demo Home Page'),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
