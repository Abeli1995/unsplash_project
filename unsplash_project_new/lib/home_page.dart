import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:unsplash_project_new/galary.dart';
import 'second_page.dart';

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
        regularImageUrl: eachPhoto['urls']['regular'],
      );
      galary.add(photo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 203, 163, 211),
      body: FutureBuilder(
        future: getPhotos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: galary.length,
              itemBuilder: (context, index) {
                return InkWell(
                  //???/////
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        //???/////
                        builder: (context) => ImageViewer(
                            imageUrl: galary[index].regularImageUrl),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      title: Text(
                        galary[index].id,
                        style: const TextStyle(
                          color: Colors.brown,
                          fontSize: 16,
                        ),
                      ),
                      leading: Hero(
                        tag: galary[index].smallImageUrl,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            galary[index].smallImageUrl,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
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
