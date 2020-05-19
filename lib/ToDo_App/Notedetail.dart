import 'package:flutter/material.dart';

class Notedetails extends StatefulWidget {
  String appBarTitle;
  Notedetails(this.appBarTitle);

  @override
  _NotedetailsState createState() => _NotedetailsState(this.appBarTitle);
}

class _NotedetailsState extends State<Notedetails> {
  String appBarTitle;

  _NotedetailsState(this.appBarTitle);

  static var _priorities = ['High', 'Low'];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
      },
      child: Scaffold(
          appBar: AppBar(
              title: Text('$appBarTitle'),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
          body: ListView(
            children: <Widget>[
              ListTile(
                title: DropdownButton(
                  items: _priorities.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  value: 'Low',
                  onChanged: (valueSelectedByUser) {
                    setState(() {
                      print('$valueSelectedByUser');
                    });
                  },
                ),
              ),

              //Second Item
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    print('$value');
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {
                    print('$value');
                  },
                ),
              ),

              //Buttons Row

              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        child: Text('Save'),
                        onPressed: () {
                          setState(() {});
                        },
                      ),
                    ),
                    Expanded(
                      child: RaisedButton(
                        child: Text('Delete'),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
