import 'package:flutter/material.dart';

import '../widgets/doc_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.deepPurpleAccent,
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.info,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                accountName: Text(
                  "Minhaj Raza",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("minhajraza@shandynotes.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "M",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Docs '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Docs '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), //Drawer,
      body: ListView(
        children: const [
          // Recent Docs
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Recent Docs",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DocCardWidget(
                    cardTitle: '10th MarkSheet',
                    cardHeight: 100,
                  ),
                  DocCardWidget(
                    cardTitle: '10th MarkSheet',
                    cardHeight: 100,
                  ),
                  DocCardWidget(
                    cardTitle: '12th MarkSheet',
                    cardHeight: 100,
                  ),
                  DocCardWidget(
                    cardTitle: '10th MarkSheet',
                    cardHeight: 100,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),

          // Board Docs
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Boards Docs",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DocCardWidget(
                    cardTitle: '10th MarkSheet',
                    cardHeight: 200,
                  ),
                  DocCardWidget(
                    cardTitle: '10th MarkSheet',
                    cardHeight: 200,
                  ),
                  DocCardWidget(
                    cardTitle: '12th MarkSheet',
                    cardHeight: 200,
                  ),
                  DocCardWidget(
                    cardTitle: '10th MarkSheet',
                    cardHeight: 200,
                  ),
                ],
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),

          // Online Certificates
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  " Online Certificates",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DocCardWidget(
                    cardTitle: 'Python Course',
                    cardHeight: 150,
                  ),
                  DocCardWidget(
                    cardTitle: 'Python Course',
                    cardHeight: 150,
                  ),
                  DocCardWidget(
                    cardTitle: 'Python Course',
                    cardHeight: 150,
                  ),
                  DocCardWidget(
                    cardTitle: 'Python Course',
                    cardHeight: 150,
                  ),
                ],
              ),
            ],
          ),

          // Degrees
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  " Degrees",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DocCardWidget(
                    cardTitle: 'B.Tech',
                    cardHeight: 100,
                  ),
                  DocCardWidget(
                    cardTitle: 'B.Tech',
                    cardHeight: 100,
                  ),
                  DocCardWidget(
                    cardTitle: 'B.Tech',
                    cardHeight: 100,
                  ),
                  DocCardWidget(
                    cardTitle: 'B.Tech',
                    cardHeight: 100,
                  ),
                ],
              ),
            ],
          ),
          // Online Certificates
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  " Online Certificates",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DocCardWidget(
                    cardTitle: 'Python Course',
                    cardHeight: 150,
                  ),
                  DocCardWidget(
                    cardTitle: 'Python Course',
                    cardHeight: 150,
                  ),
                  DocCardWidget(
                    cardTitle: 'Python Course',
                    cardHeight: 150,
                  ),
                  DocCardWidget(
                    cardTitle: 'Python Course',
                    cardHeight: 150,
                  ),
                ],
              ),
            ],
          ),

          // Degrees
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  " Degrees",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DocCardWidget(
                    cardTitle: 'B.Tech',
                    cardHeight: 100,
                  ),
                  DocCardWidget(
                    cardTitle: 'B.Tech',
                    cardHeight: 100,
                  ),
                  DocCardWidget(
                    cardTitle: 'B.Tech',
                    cardHeight: 100,
                  ),
                  DocCardWidget(
                    cardTitle: 'B.Tech',
                    cardHeight: 100,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
