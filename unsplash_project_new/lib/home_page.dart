import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:unsplash_project_new/galary.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Galary> galary = [];

  Future getPhotos() async {
    var response = await http.get(
      Uri.https('api.unsplash.com', '/photos', {
        'client_id':
            'ab3411e4ac868c2646c0ed488dfd919ef612b04c264f3374c97fff98ed253dc9'
      }),
    );
    var data = jsonDecode(response.body);

    for (var eachPhoto in data) {
      var photo = Galary(
        id: eachPhoto['id'],
        description: eachPhoto['alt_description'],
        smallImageUrl: eachPhoto['color'],
      );
      galary.add(photo);
    }
  }

  @override
  Widget build(BuildContext context) {
    getPhotos();
    return Scaffold(
      body: FutureBuilder(
        future: getPhotos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: galary.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                  ),
                  child: ListTile(
                    title: Text(galary[index].id),
                    subtitle: Text(galary[index].description),
                    leading: Image.network('https://picsum.photos/250?image=9'),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
