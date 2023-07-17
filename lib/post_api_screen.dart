/*
import 'dart:convert'; // Post API Successfully Post Data And Return Response.

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class PostApiScreen extends StatefulWidget {
  const PostApiScreen({super.key});

  @override
  State<PostApiScreen> createState() => _PostApiScreenState();
}

class _PostApiScreenState extends State<PostApiScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API New Example On 14-07-2023'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'name',
              ),
            ),
            TextField(
              controller: jobController,
              decoration: InputDecoration(
                hintText: 'job',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  registerUser();
                },
                child: Text("Register")),
          ],
        ),
      ),
    );
  }

  void registerUser() async {
    var url = "https://reqres.in/api/users";
    var data = {
      "name": nameController.text,
      "job": jobController.text,
    };

    var body = jsonEncode(data);

    var urlParse = Uri.parse(url);

    Response response = await http.post(urlParse,
        body: body, headers: {"Content-Type": "application/json"});

    var data1 = jsonDecode(response.body);
    print(data1);
  }
}

*/

/*
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostApiScreen extends StatefulWidget {
  const PostApiScreen({Key? key}) : super(key: key);

  @override
  State<PostApiScreen> createState() => _PostApiScreenState();
}

class _PostApiScreenState extends State<PostApiScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('POST API'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'Name:'),
            ),
            TextFormField(
              controller: jobController,
              decoration: InputDecoration(hintText: 'Job:'),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  userRegister();
                },
                child: Text(
                  'Register Here',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }

  void userRegister() async {
    var url = 'https://reqres.in/api/users';

    var data = {
      'name': nameController.text,
      'job': jobController.text,
    };

    var body = jsonEncode(data);

    var urlParse = Uri.parse(url);

    final response = await http.post(urlParse,
        body: body, headers: {"Content-Type": "application/json"});

    var data1 = jsonDecode(response.body);
    print(data1);
  }
}

*/

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class PostApiScreen extends StatefulWidget {
//   const PostApiScreen({Key? key}) : super(key: key);

//   @override
//   State<PostApiScreen> createState() => _PostApiScreenState();
// }

// class _PostApiScreenState extends State<PostApiScreen> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController jobController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('POST API EXAMPLE'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TextFormField(
//               controller: nameController,
//               decoration: InputDecoration(hintText: 'Name:'),
//             ),
//             TextFormField(
//               controller: jobController,
//               decoration: InputDecoration(hintText: 'Job:'),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 registerUser();
//               },
//               child: Center(
//                 child: Text(
//                   'Register Here',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   void registerUser() async {
//     var url = 'https://reqres.in/api/users';

//     var data = {
//       'name': nameController.text,
//       'job': jobController.text,
//     };

//     var body = jsonEncode(data);

//     var urlParse = Uri.parse(url);

//     var response = await http.post(urlParse,
//         body: body, headers: {"Content-Type": "application/json"});

//     var data1 = jsonDecode(response.body);
//     print(data1);
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class PostApiScreen extends StatefulWidget {
  const PostApiScreen({Key? key}) : super(key: key);

  @override
  State<PostApiScreen> createState() => _PostApiScreenState();
}

class _PostApiScreenState extends State<PostApiScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email, password) async {
    try {
      Response response = await http.post(
        Uri.parse('https://reqres.in/api/register'),
        body: {
          'email': email,
          'password': password,
        },
      );
      if (response.statusCode == 200) {
        var data = jsonEncode(response.body);
        //print(data);
        print(response.body.toString());
        var data1 = jsonDecode(data);
        print(data1);
        print('Acoount Created Successfull!');
      } else {
        print('Failed😥');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('POST API'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'Email:'),
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(hintText: 'Password:'),
            ),
            SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () {
                login(emailController.text, passwordController.text);
              },
              child: Container(
                height: 50,
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(15)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
