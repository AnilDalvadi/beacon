
import 'package:flutter/material.dart';



class menu {
  String _name="";
  IconData? _iconData;
  String _path="";

  menu({String name="",iconData, String path=""}) {
      _name = name;
      _iconData=  iconData;
      _path=path;
    if (iconData != null) {
      _iconData =  iconData;
    }
  }

  String get name => _name;
  set name(String name) => _name = name;
  IconData? get  iconData=> _iconData;
  set  iconData( IconData?_iconData) => _iconData =   iconData;

  String get path => _path;
  set path(String name) =>_path= path;

  menu.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _iconData = json['  IconData'];
    _path=json[' path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = _name;
    data[' IconData'] = _iconData;
    data[' path'] = _path;
    return data;
  }
}

class Tap {
}
