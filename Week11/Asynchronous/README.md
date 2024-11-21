# Week 11 - Pemrograman Asynchronous
---

## Practicum 1 - Downloading Data from Web Services (API)
---

### Step 1: Create a New Project

Create a new flutter project named books in the src folder of week-11 of your GitHub repository.
Then add http dependency by typing the following command in the terminal.

```shell
flutter pub add http
```

### Step 2: Check the pubspec.yaml file

If the plugin is successfully installed, make sure the http plugin is in this pubspec file as
follows.

```shell
dependencies:
  flutter:
    sdk: flutter
    
  cupertino_icons: ^1.0.8
  http: ^1.2.2
```

### Step 3: Open the main.dart file

Type the code as follows.

1. Question 1
   Add your nickname to the app title as an identity for your work.

```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naufal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: const Text('Go')),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
```

### Step 4: Add the getData() method

Add this method to the _FuturePageState class which is useful for retrieving data from the Google
Books API.

```dart
Future<Response> getData() async {
  const authority = 'www.googleapis.com';
  const path = '/books/v1/volumes/pBQsygEACAAJ';

  Uri url = Uri.https(authority, path);
  return http.get(url);
}
```
2. Question 2

* Find your favorite book title on Google Books, then replace the book ID in the path variable in
  the code. The method is to take it from your browser URL as shown in the following image.
* Then try to access the complete URI in the browser like this. If it displays JSON data, then you
  have succeeded. Capture yours and write it in the README on the lab report. Then commit with the
  message "W11: Question 2".

![question 2](img.png)
