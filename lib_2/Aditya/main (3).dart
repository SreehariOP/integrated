// import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:meals/report.dart';
// // import 'package:meals/screens/transactions.dart';
// import 'package:meals/transaction_alt.dart';


// final theme = ThemeData(
//   useMaterial3: true,
//   colorScheme: ColorScheme.fromSeed(
//     brightness: Brightness.dark,
//     seedColor: const Color.fromARGB(255, 131, 57, 0),
//   ),
//   textTheme: GoogleFonts.latoTextTheme(),
// );


// void main() {
//   runApp(const MyApp());
// }

 

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MBA Screens for transactions and report',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: const ButtonScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

 

// class ButtonScreen extends StatelessWidget {
//   const ButtonScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('MBA Screens'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,


//           children: [
//             ElevatedButton(
//               child: const Text('Transaction'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Screen1()),
//                 );
//               },
//             ),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               child: const Text('Report generation'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Screen2()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

 


//  class Screen1 extends StatelessWidget {
//   const Screen1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
   
//       body: Center(
//         child: CustomerTransactionScreen(),//Text('Trabsaction screen'),
//       ),
//     );
//   }
// }

// class Screen2 extends StatelessWidget {
//   const Screen2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
        
//         child: OrderDetailsScreen(),
//       ),
//     );
//   }
// }





