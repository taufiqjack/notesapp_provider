import 'package:flutter/material.dart';
import 'package:notesapp_provider/models/notes_operation.dart';
import 'package:provider/provider.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? titleText;
    String? descriptionText;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Task Manager'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 80,
          top: 15,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Judul',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              onChanged: (value) {
                titleText = value;
              },
            ),
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Deskripsi',
                    fillColor: Colors.white,
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                onChanged: (value) {
                  descriptionText = value;
                },
              ),
            ),
            TextButton(
                onPressed: () {
                  Provider.of<NotesOperation>(context, listen: false)
                      .addNewNote(titleText!, descriptionText!);
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(
                        bottom: 10, left: 30, right: 30, top: 10),
                    backgroundColor: Colors.white),
                child: const Text(
                  'Tambahkan Catatan ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ))
          ],
        ),
      ),
    );
  }
}
