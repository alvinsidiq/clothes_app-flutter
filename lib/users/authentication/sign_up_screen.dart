import 'package:get/get.dart'; // Impor GetX
import 'package:flutter/material.dart';
import 'login_screen.dart'; // Pastikan LoginScreen diimpor

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Jika validasi berhasil
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Sign Up Successful')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Tema latar belakang hitam
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Header gambar
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Image.asset(
                    'images/signup.jpg', // Pastikan path gambar sudah benar
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16), // Jarak antar elemen
                // Form sign up
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Field nama
                      TextFormField(
                        controller: nameController,
                        style: const TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[800],
                          hintText: 'Name',
                          hintStyle: const TextStyle(color: Colors.white54),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16), // Jarak antar elemen
                      // Field email
                      TextFormField(
                        controller: emailController,
                        style: const TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please write email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[800],
                          hintText: 'Email',
                          hintStyle: const TextStyle(color: Colors.white54),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16), // Jarak antar elemen
                      // Field password
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please write password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[800],
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.white54),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30), // Jarak antar elemen
                      // Tombol sign up (warna hijau)
                      Material(
                        color: Colors.green, // Warna tombol hijau
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: _submitForm,
                          splashColor: Colors.green[700], // Efek splash hijau
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 10,
                            ),
                            alignment: Alignment.center,
                            width: double.infinity,
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16), // Jarak antar elemen
                      // Teks tambahan: Already have an account?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigasi ke halaman Login menggunakan GetX
                              Get.to(() => const LoginScreen());
                            },
                            child: const Text(
                              "Login here",
                              style: TextStyle(color: Colors.green), // Tombol hijau
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16), // Jarak antar elemen
                      // Teks OR sebagai pemisah
                      const Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 16), // Jarak antar elemen
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
