import 'package:flutter/material.dart';
import 'mahasiswa/mahasiswa_get.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Home Drawer"),
        ),
        drawer: Drawer(
          child:
          ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("images/image.jpg"),
                    backgroundColor: Colors.green,
                  ),
                  accountName: Text("Jojo"),
                  accountEmail: Text("jojo100@gmail.com")),

              ListTile(
                title: const Text('My Account'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Top-Up'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Mahasiswa'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Mahasiswa_get()));
                },
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            buildContainer(),
            buildContainer(),
            buildContainer(),
            buildCard()
          ],
        ),
      );
  }
  Card buildCard(){
       return Card(
              elevation: 8,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.add_to_photos_rounded),
                    title: Text("Tiket To Mesir"),
                    subtitle: Text("Just Need your Blood")
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Text("Buy")),
                      TextButton(
                          onPressed: (){},
                          child: Text("View")),
                      TextButton(
                          onPressed: (){},
                          child: Text("Close"))
                    ],
                  )
                ],
              ),
            );
  }
      Container buildContainer() {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(width: 5
            ),
          ),
          child: Text("Mitologi Mesir adalah himpunan mitos-mitos dari Mesir kuno, yang melukiskan tindakan-tindakan para dewa Mesir sebagai sarana untuk memahami dunia. Keyakinan-keyakinan yang terkandung dalam mitos-mitos ini merupakan bagian penting dalam agama Mesir kuno. Mitos-mitos sering muncul dalam sastra dan Seni Mesir Kuno, terutama dalam cerita-cerita pendek dan materi keagamaan seperti nyanyian pujian, teks ritual, teks pemakaman, dan dekorasi kuil. Sumber-sumber ini jarang berisi versi lengkap sebuah mitos dan kebanyakan hanya mengandung bagian penggambaran singkatnya saja."),
          padding: EdgeInsets.all(10.0),
        );
      }
}