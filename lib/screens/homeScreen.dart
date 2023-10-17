import 'package:flutter/material.dart';

import 'components/tarefa.dart';

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
