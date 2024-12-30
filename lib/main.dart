import 'package:flutter/material.dart';
import 'users/authentication/login_screen.dart'; // Pastikan path sudah benar
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Inisialisasi widget binding
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Menggunakan GetMaterialApp untuk GetX
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(), // Halaman utama adalah LoginScreen
      debugShowCheckedModeBanner: false, // Menghapus debug banner
    );
  }
}
