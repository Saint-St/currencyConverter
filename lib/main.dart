// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
// //types of widgets
// //stateless
// //statefull
// //inherited

// //stateless widget --

// //state
// //material design---google
// //curprtino design ---apple
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('hello brandon'),
//         ),
//       )
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/currency_converter_material_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterMaterialPage()
    );
  }
}
