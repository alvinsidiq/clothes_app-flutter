import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Warna latar belakang hitam
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight, // Tinggi minimum sama dengan tinggi maksimum layar
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Header dengan gambar
                  SizedBox(
                    width: MediaQuery.of(context).size.width, // Lebar sesuai layar
                    height: 285, // Tinggi tetap
                    child: Image.asset(
                      'images/login.png', // Gambar header (Pastikan gambar sudah ada di folder images)
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Teks "Welcome Back!"
                  const Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        // Input email
                        TextField(
                          style: const TextStyle(color: Colors.white),
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
                        const SizedBox(height: 20),
                        // Input password
                        TextField(
                          obscureText: true,
                          style: const TextStyle(color: Colors.white),
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
                        const SizedBox(height: 20),
                        // Tombol login
                        ElevatedButton(
                          onPressed: () {
                            // Aksi login
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: const Text('Login'),
                        ),
                        const SizedBox(height: 10),
                        // Tombol untuk sign up
                        TextButton(
                          onPressed: () {
                            // Navigasi ke halaman pendaftaran
                          },
                          child: const Text(
                            "Don't have an account? Sign up here",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
