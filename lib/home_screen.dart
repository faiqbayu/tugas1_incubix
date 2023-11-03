import 'package:flutter/material.dart';
import 'package:tugas1/formulir_screen.dart';


class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas 1"),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Column(
        children: [
          // Elevated Button
          ElevatedButton(
            // style: ElevatedButton.styleFrom(
            //   backgroundColor: Colors.amber,
            //   padding: EdgeInsets.all(30)
            // ),
              onPressed: (){
                Navigator.pushNamed(context, '/formulir');
              },
              child: const Text (
                "Elevated Button")),
          const SizedBox(height: 10,),
          const ElevatedButton(
              onPressed: null,
              child: Text("Disable button")),

          //
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.amber
              )
            ),
              onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FormulirScreen()));
              },
              child: const Text(
                "Submit",
                style: TextStyle(
                    color: Colors.amber),
              )
            ),
          ],
      ),
    );
  }
}