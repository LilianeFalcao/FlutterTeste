import 'package:flutter/material.dart';
import 'package:minicurso_flutter/model/tarefa.dart';
import 'package:minicurso_flutter/screens/controllers/homeScreenController.dart';

import 'components/tarefa.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  HomeScreenController controller = HomeScreenController(

  );

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
        
            Expanded(
              child: ListView.builder(
                itemCount: controller.tarefas.length,
                itemBuilder: (context, i)=>TarefasTitle(controller.tarefas[i].titulo),
                ),
            ),
          ],
            ),
        ),
        
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.assignment_rounded),
          onPressed: (){
            TextEditingController titulo = TextEditingController();

          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  TextField(
                    controller: titulo,
                  ),
                  TextButton(
                    onPressed: () {
                      Tarefas novaTarefa = Tarefas(titulo.text);

                      controller.adicionarTarefa(novaTarefa);

                      Navigator.pop(context);
                      setState(() {
                        
                      });
                    }, 
                    child: const Text("Adicionar Tarefa"),
                    )
                ],
              ),
            ),
            );
        }, ),
        );

  }
}
