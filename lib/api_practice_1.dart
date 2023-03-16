import 'package:api_practice/api_store.dart';
import 'package:flutter/material.dart';

class ApiPracticeExample extends StatelessWidget {
  const ApiPracticeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Integration Future Builder'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<List<dynamic>>(
          future: ApiService.getPosts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data![index]['title']),
                      subtitle: Text(snapshot.data![index]['body']),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
