import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:unsplash_project_new/galary.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Galary> galary = [];

  Future getPhotos() async {
    var response = await http.get(
      Uri.https(
        'api.unsplash.com',
        '/photos',
        {
          'client_id':
              '896d4f52c589547b2134bd75ed48742db637fa51810b49b607e37e46ab2c0043'
        },
      ),
    );

    var data = jsonDecode(response.body);

    for (var eachPhoto in data) {
      print(eachPhoto['links']['self']);
      var photo = Galary(
        id: eachPhoto['user']['name'],
        smallImageUrl: eachPhoto['urls']['small'],
      );
      galary.add(photo);
    }
  }

  @override
  Widget build(BuildContext context) {
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
                    leading: Image.network(galary[index].smallImageUrl),
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
