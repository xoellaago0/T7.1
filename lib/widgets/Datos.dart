import 'package:flutter/material.dart';

class Datos extends StatelessWidget {
  final String titulo;
  final List<Widget> contenido;

  const Datos({
    super.key,
    required this.titulo,
    this.contenido = const [],
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 235;

        return Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 50),
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1,
                    vertical: 12),
                color: Color(0xFF113377),
                child: Text(
                  titulo,
                  style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Color(0xFF113377)),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
              ),
              const SizedBox(height: 15),
              if (!isNarrow) ...contenido, 
              if (isNarrow)
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: Text(titulo),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: contenido,
                                ),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    child: Text('Cerrar'))
                              ],
                            ));
                  },
                  child: Text(titulo),
                ),
            ],
          ),
        );
      },
    );
  }
}
