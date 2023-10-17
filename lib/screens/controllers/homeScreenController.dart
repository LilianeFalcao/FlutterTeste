import 'package:minicurso_flutter/model/tarefa.dart';

class HomeScreenController{
  List<Tarefas>tarefas = [];

  void adicionarTarefa(Tarefas tarefa){
    tarefas.add(tarefa);
  }

  void removeTarefa(Tarefas tarefa){
    tarefas.remove(tarefa);
  }
}
