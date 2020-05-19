import 'package:dicee/ToDo_App/Notedetail.dart';
import 'package:dicee/models/note.dart';
import 'package:dicee/utils/note_helper.dart';
import 'package:flutter/material.dart';

class Notelist extends StatefulWidget {
  DatabaseHelper helper = DatabaseHelper();
  List<Note> noteList;

  int count = 0;

  @override
  _NotelistState createState() => _NotelistState();
}

class _NotelistState extends State<Notelist> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Note Keeper'),
      ),
      body: getNotelist(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          NavigateToDetail('Add New Note');
        },
      ),
    );
  }

  ListView getNotelist() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.priority_high),
              trailing: Icon(Icons.delete),
              title: Text('Test Data'),
              onTap: () {
                NavigateToDetail('Edit Note');
              },
            ),
          );
        });
  }

  void NavigateToDetail(String title) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Notedetails(title);
    }));
  }
}
