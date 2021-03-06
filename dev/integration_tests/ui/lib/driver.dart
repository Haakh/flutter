// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_driver/driver_extension.dart';

void main() {
  enableFlutterDriverExtension();
  runApp(new DriverTestApp());
}

class DriverTestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DriverTestAppState();
  }
}

class DriverTestAppState extends State<DriverTestApp> {
  bool present = true;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('FlutterDriver test'),
        ),
        body: new ListView(
          padding: const EdgeInsets.all(5.0),
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new Text(present ? 'present' : 'absent'),
                ),
                new RaisedButton(
                  child: const Text(
                    'toggle',
                    key: const ValueKey<String>('togglePresent'),
                  ),
                  onPressed: () {
                    setState(() {
                      present = !present;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
