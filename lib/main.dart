import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Responsivo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(146, 243, 0, 239)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Responsividade'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            color: const Color.fromARGB(255, 255, 3, 3),
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16.0),
                color: const Color.fromARGB(255, 255, 7, 189),
                child: const Text(
                  'Layout Superior',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Primeiro Container dentro da Row
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(16.0),
                      color: const Color.fromARGB(148, 182, 74, 255),
                      child: const Text(
                        'Primeira Coluna',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 250, 249, 249)),
                      ),
                    ),
                  ),
                  // Segundo texto dentro da Row
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(16.0),
                      color: const Color.fromARGB(169, 197, 6, 245),
                      child: const Text(
                        'Segunda Coluna',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 247, 240, 240)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(16.0),
                      color: const Color.fromARGB(169, 210, 84, 241),
                      child: const Text(
                        'Terceira Coluna',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 247, 240, 240)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16.0),
                color: const Color.fromARGB(255, 255, 7, 189),
                child: const Text(
                  'Layout Inferior',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        focusColor: const Color.fromARGB(255, 253, 253, 253),
        onPressed: () {},
        tooltip: 'Curtir',
        backgroundColor: const Color.fromARGB(59, 175, 3, 255),
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}
