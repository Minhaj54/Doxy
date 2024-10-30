import 'package:flutter/material.dart';

class AllDocumentsPage extends StatelessWidget {
  // Sample list of documents
  final List<Map<String, String>> documents = [
    {'title': 'Document 1', 'subtitle': 'Subtitle 1'},
    {'title': 'Document 2', 'subtitle': 'Subtitle 2'},
    {'title': 'Document 3', 'subtitle': 'Subtitle 3'},
    {'title': 'Document 4', 'subtitle': 'Subtitle 4'},
    {'title': 'Document 5', 'subtitle': 'Subtitle 5'},
    {'title': 'Document 6', 'subtitle': 'Subtitle 6'},
    {'title': 'Document 7', 'subtitle': 'Subtitle 7'},
    {'title': 'Document 8', 'subtitle': 'Subtitle 8'},
    {'title': 'Document 9', 'subtitle': 'Subtitle 9'},
  ];

  AllDocumentsPage({super.key});

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
          "Documents",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 3 / 2,
          ),
          itemCount: documents.length,
          itemBuilder: (context, index) {
            return DocumentCard(
              title: documents[index]['title']!,
              subtitle: documents[index]['subtitle']!,
            );
          },
        ),
      ),
    );
  }
}

class DocumentCard extends StatelessWidget {
  final String title;
  final String subtitle;

  DocumentCard({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurpleAccent,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
