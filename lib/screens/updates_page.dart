import 'package:flutter/material.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

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
        centerTitle: true,
        title: const Text(
          "Updates",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          title: const Text('Update Title '),
          subtitle: const Text('Description'),
          leading: CircleAvatar(
            child: Center(
              child: Text("${index + 1}"),
            ),
          ),
        ),
      ),
    );
  }
}
