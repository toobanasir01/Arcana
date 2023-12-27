import 'package:demoproject/provider/results.dart';
import 'package:demoproject/screen/dropdown.dart';
import 'package:demoproject/screen/first_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context)=>ResultProvider(),

      ),
        ChangeNotifierProvider(create: (context)=>DropDownProvider())
      ],

      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyApp',
        home: DropDown_Menu(),
      ),
    );
  }
}
