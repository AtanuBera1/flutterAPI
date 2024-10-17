import "package:flutter/material.dart";
import 'package:layout/widget/api_services.dart';
import 'package:layout/widget/model.dart';
import '../widget/drawer.dart';
//new line here

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "asset/image/home.png",
            fit: BoxFit.contain,
            height: 32.0,
            width: 32.0,
          ),
          SizedBox(width: 10.0),
          Text("Home Page")
        ]),
      ),
      body: FutureBuilder(
        future: getPost(),
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            List<PostsModel> product = snapshot.data;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: product.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      onTap: () {},
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          product[index].avatar,
                          fit: BoxFit.cover,
                          height: 45.0,
                          width: 45.0,
                        ),
                      ),
                      title: Text(product[index].firstName +
                          " " +
                          product[index].lastName),
                      subtitle: Text(product[index].email),
                      trailing: Icon(Icons.edit),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
