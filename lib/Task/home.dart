import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/Task/services.dart';

import 'model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HttpServices httpServices = HttpServices();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: httpServices.getData(),
          builder: (context, snapshot) {
            Model? posts = snapshot.data as Model?;
            if (snapshot.hasData) {
              return ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: posts!.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 10,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(posts.data[index].avatar),
                          radius: 60,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              posts.data[index].firstName,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              posts.data[index].lastName,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              posts.data[index].email,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
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
      ),
    );
  }
}
