import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Hello World'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
    backgroundImage: NetworkImage(
        "https://scontent.fcgh7-1.fna.fbcdn.net/v/t31.18172-8/12378069_1289784671036175_7708906337502297267_o.jpg?_nc_cat=106&ccb=1-7&_nc_sid=19026a&_nc_ohc=2qdtMKDShlIAX8GcE67&_nc_ht=scontent.fcgh7-1.fna&oh=00_AT_dMiEGfzsSADWblC3tGW8FQKkBetkoo8b-x0WgBcdQkg&oe=62C9CD20"),
    radius: 50,
  );

  final nome = const Text(
    "Eduardo N.Agusto",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  );

  final botaoTelefone = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.phone),
    onPressed: () {
      launchUrl(Uri(scheme: 'tel', path: '+5511998888888'));
    },
  );
  final botaoEmail = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.email),
    onPressed: () {
      launchUrl(Uri(scheme: 'mailto', path: 'eduna67@gmail.com'));
    },
  );
  final botaoSms = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.sms),
    onPressed: () {
      launchUrl(Uri(scheme: 'sms', path: 'eduna67@gmail.com'));
    },
  );

  @override
  Widget build(BuildContext context) {
    // This method is resused in the build method of subclasses
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        foto,
        nome,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          botaoTelefone,
          botaoEmail,
          botaoSms,
        ]),
      ],
    ));
  }
}
