import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,

        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyan,
          // ···
          brightness: Brightness.light,
        ),

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: MyHomePage(),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String secilenSayfa = '';

  void SecilenSayfa(String sayfaAdi) {
    setState(() {
      secilenSayfa = sayfaAdi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deneme"),
      ),
      drawer: Menu(),
      bottomNavigationBar: AltMenu(),
      body: Center(
        child: Text('Page: $secilenSayfa'),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Messages'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Message()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Profile'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
        ],
      ),
    );
  }
}

class AltMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
      onTap: (value) => () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => School()));
      },
    );
  }
}

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mesaj Sayfası"),
      ),
      drawer: Menu(),
      bottomNavigationBar: AltMenu(),
      body: const Center(
        child: Text("Mesaj sayfasına hoşgeldiniz."),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Sayfası"),
      ),
      drawer: Menu(),
      // bottomNavigationBar: AltMenu(),
      body: const Center(
        child: Text("Profile sayfasına hoşgeldiniz."),
      ),
    );
  }
}

class School extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("School Sayfası"),
      ),
      drawer: Menu(),
      bottomNavigationBar: AltMenu(),
      body: const Center(
        child: Text("School sayfasına hoşgeldiniz."),
      ),
    );
  }
}
