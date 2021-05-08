import 'package:flutter/material.dart';

import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  // var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();

    getData() async {
      // http.Response res = await http.get(url);
      var res = await http.get(Uri.parse(url));
      // print(res.body);
      data = jsonDecode(res.body);
      print(data);
      setState(() {});
    }

    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: data != null
            // ? GridView.builder(
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2),
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Text(data[index]["title"]),
            //         subtitle: Text(
            //             "ID: ${data[index]["id"]}"), //string interpolation used here to convert int to string
            //         leading: Image.network(data[index]["url"]),
            //       );
            //     },
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text(
                        "ID: ${data[index]["id"]}"), //string interpolation used here to convert int to string
                    leading: Image.network(data[index]["url"]),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
        mini: true,
      ),
    );
  }
}
