import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 40,
                left: 15,
              ),
              
              child: const Text(
                "Tarefas",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 3, 58, 80),
                ),
                ),
            ),
        
            const TarefasTitle("comparar ração"),
            const TarefasTitle("levar a Lilo pra passear"),
          ],
            ),
        ));
  }
}

class TarefasTitle extends StatelessWidget {
  final String titulo;
  const TarefasTitle(
    this.titulo,
  { 
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(
        color: Colors.indigo,
        width: 5,
        ),

        borderRadius: BorderRadius.circular(12)
      ),
      child:Container(
        height: 55,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(
          left: 12,
        ),
        child: Text(
          this.titulo,
          style: TextStyle(
            fontSize: 20,
          ),
          ),
      ),
    );
  }
}
