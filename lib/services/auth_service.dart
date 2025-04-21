import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthService {
  static const baseUrl = 'http://10.0.2.2:8000/api'; // Ganti sesuai IP backend

  static Future<bool> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      body: {'email': email, 'password': password},
    );
    return response.statusCode == 200;
  }

  static Future<bool> register(
      String name, String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      body: {'nama_lengkap': name, 'email': email, 'password': password},
    );
    return response.statusCode == 200;
  }
}
