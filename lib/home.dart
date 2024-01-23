import 'package:apis_app/app_button.dart';
import 'package:apis_app/base_client.dart';
import 'package:apis_app/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String stringResponse;
  late Map mapResponse;
  late Map dataResponse;
  late List listResponse;

  Future apiCall() async {
    http.Response response;
    response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    if (response.statusCode == 200) {
      setState(() {
        // stringResponse = response.body;
        mapResponse = json.decode(response.body);
        listResponse = mapResponse['data'];
      });
    }
  }

  @override
  void initState() {
    apiCall();
    stringResponse = '';
    mapResponse = {};
    dataResponse = {};
    listResponse = [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            children: [
              Image.network(listResponse[index]['avatar']),
              Text(listResponse[index]['id'].toString()),
              Text(listResponse[index]['email'].toString()),
              Text(listResponse[index]['first_name'].toString()),
              Text(listResponse[index]['last_name'].toString()),
            ],
          ),
        );
      },
      itemCount: listResponse == null ? 0 : listResponse.length,
    ));
  }
}
