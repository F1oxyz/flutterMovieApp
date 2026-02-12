import 'package:flutter/material.dart';
import 'package:mi_primer_crud/screens/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ypljhlzrdxxzllmuympp.supabase.co',
    anonKey: 'sb_publishable_duVryH8rgdSpcmTPfx42CQ_4_jh7hjB',
  );
  
  runApp(const MainApp());
}

final supabase = Supabase.instance.client;

class MainApp extends StatelessWidget {
  
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginScreen()
    );
  }
}
