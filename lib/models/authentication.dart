import 'dart:convert';

import 'package:http/http.dart' as http;

class Authentication {
  Future<void> signUp(String email, String password) async
  {
    const url = 'https://identitytoolkit.googleapis.com/v1/accounts:signInWithCustomToken?key=[AIzaSyA6qxQ8GP1bvVrywwEhOUuf841_uSS0WME]';

    final response = await http.post(url, body: json.encode(
      {
        "email" : email,
        "password" : password,
        "returnSecureToken" : true,


      }
    ));
    final responseDate = json.decode(response.body);
    print(responseDate);

  }
}