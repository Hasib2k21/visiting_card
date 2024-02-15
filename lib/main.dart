import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visiting_card/pages/contract_page.dart';
import 'package:visiting_card/pages/form_page.dart';
import 'package:visiting_card/pages/home_pages.dart';
import 'package:visiting_card/pages/scan.dart';
import 'package:visiting_card/provides/contract_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=>ContractProvider() ,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName:(context)=> const HomePage(),
        ScanPage.routeName:(context)=> const ScanPage(),
        FormPage.routeName:(context)=> const FormPage(),
        ContractDetailsPage.routeName:(context)=> const ContractDetailsPage(),
      },
    );
  }
}

