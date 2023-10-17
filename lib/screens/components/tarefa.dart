import 'package:flutter/material.dart';

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