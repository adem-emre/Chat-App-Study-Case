import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/user_model.dart';

class UserService {
  final _baseUrl = 'https://randomuser.me/api/';

  Future<List<Results>?> getUsers(int count) async {
    final response = await http.get(Uri.parse('$_baseUrl?results=$count'));
    if (response.statusCode == 200) {
      final json = await jsonDecode(response.body);
      final users = User.fromJson(json).results;      
      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }
}
