import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:trysomethingnew/Models/CreateManuallyModel.dart';

class PhotoApi extends StatefulWidget {
  const PhotoApi({super.key});

  @override
  State<PhotoApi> createState() => _PhotoApiState();
}

class _PhotoApiState extends State<PhotoApi> {
  List<Photo> photoList = [];

  Future<List<Photo>> getPostFormApi() async {
    final response =
    await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      photoList.clear();
      for (Map i in data) {
        Photo photo=Photo(i['title'], i['url']);
        photoList.add(photo);
      }
      return photoList;
    } else {
      return photoList;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Api"),
        backgroundColor: Colors.cyanAccent.shade200,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPostFormApi(),
                builder: (context,AsyncSnapshot<List<Photo>> snapsot){
              if(!snapsot.hasData){
                return const Center(child: CircularProgressIndicator(strokeWidth: 4, color: Colors.black,));
              }
              else{
                return ListView.builder(
                    itemCount: photoList.length,
                    itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                      leading:CircleAvatar(
                        backgroundImage:  NetworkImage(snapsot.data![index].url.toString()),
                      ),
                      title: Text(snapsot.data![index].title.toString()),

                    ),
                  );
                });
              }
            }),
          )
        ],
      ),
    );
  }
}
