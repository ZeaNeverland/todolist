import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todoapp/pages/login_page.dart'; // Pastikan path ini sesuai

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inisialisasi Supabase
  await Supabase.initialize(
    url: 'https://vhvkezazubghmwotnwcx.supabase.co',  // GANTI dengan URL Supabase kamu
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZodmtlemF6dWJnaG13b3Rud2N4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDk5MDIwOTYsImV4cCI6MjA2NTQ3ODA5Nn0.ZU6_F1wrieRl9WBw8SVPdQ2AKLI_C6RsTn-L1p700OY',             // GANTI dengan anon key Supabase kamu
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
