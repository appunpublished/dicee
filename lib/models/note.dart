class Note {
  int _id;
  int _priority;
  String _title;
  String _description;
  String _date;

  Note(this._id, this._priority, this._title, this._date, [this._description]);
  Note.withId(this._priority, this._title, this._date, [this._description]);

  //Map Object

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;

    if (id != null) map['id'] = _id;
  }

  //extract note object from map object
  Note.fromMapObject(Map<String, dynamic> map) {
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
    this._id = map['id'];
  }

  //Getter and Setter
  String get date => _date;

  set date(String value) {
    _date = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  int get priority => _priority;

  set priority(int value) {
    if (value >= 1 && value <= 2) _priority = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
