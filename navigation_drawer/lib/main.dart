import 'package:flutter/material.dart';
import 'pages/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Navigation drawer'),
        elevation: 15.0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPictureSize: Size(60, 60),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('D'),
              ),
              accountName: Text("D.code"), 
              accountEmail: Text("dcode@gmail.com")
            ),
            ListTile(
              title: const Text('Page one'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const secondpage( title: 'page one')
                  )
                );
              },
            ),
            ListTile(
              title: const Text('Page two'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const secondpage( title: 'page two')
                  )
                );
              },
            ),
            ListTile(
              title: const Text('Page three'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const secondpage( title: 'page three')
                  )
                );
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: Text('Home'),
        ),
      )
        
    );
  }
}
