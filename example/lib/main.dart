import 'package:flutter/material.dart';
import 'package:tiny_alert/tiny_alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiny Alert Demo'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                TinyAlert.success(
                  context,
                  title: "Success!",
                  message: "This is a success message!",
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: const Text('Success!'),
            ),
            ElevatedButton(
              onPressed: () {
                TinyAlert.info(
                  context,
                  title: "Info!",
                  message: "This is a info message!",
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text('Info!'),
            ),
            ElevatedButton(
              onPressed: () {
                TinyAlert.warning(
                  context,
                  title: "Warning!",
                  message: "This is a warning message!",
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber[700],
                foregroundColor: Colors.white,
              ),
              child: const Text('warning!'),
            ),
            ElevatedButton(
              onPressed: () {
                TinyAlert.error(
                  context,
                  title: "Error!",
                  message: "This is a error message!",
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text('error!'),
            ),
            ElevatedButton(
              onPressed: () {
                TinyAlert.confirm(
                  context,
                  title: "Confrimation?",
                  message: "This is a confirmation message!",
                  onConfirm: () {
                    Navigator.pop(context);
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.tealAccent[700],
                foregroundColor: Colors.white,
              ),
              child: const Text('Confirm!'),
            ),
            ElevatedButton(
              onPressed: () {
                TinyAlert.progress(context, label: "Loading...", barrierDismissible: true);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text('Loading!'),
            ),
            ElevatedButton(
              onPressed: () {
                TinyAlert.snackbar(
                  context,
                  "This is snackbar message!",
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[400],
                foregroundColor: Colors.white,
              ),
              child: const Text('Snackbar!'),
            ),
          ],
        ),
      ),
    );
  }
}
