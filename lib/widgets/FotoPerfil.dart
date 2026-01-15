import 'package:flutter/material.dart';

class BotonPerfil extends StatefulWidget {
  final List<String> imagePath;
  final double size; 

  const BotonPerfil({
    super.key,
    required this.imagePath,
    this.size = 100,
  });

  @override
  BotonPerfilState createState() => BotonPerfilState();
}

class BotonPerfilState extends State<BotonPerfil> {
  int idexActual = 0;

  void cambiarFoto() {
    setState(() {
      idexActual = (idexActual + 1) % widget.imagePath.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double size = widget.size;
        if (constraints.maxWidth < 235) {
          size = widget.size * 0.4; 
        } else if (constraints.maxWidth < 500) {
          size = widget.size * 0.8; 
        }

        return ElevatedButton(
          onPressed: cambiarFoto,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: CircleBorder(),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipOval(
                child: Image(
                  width: size,
                  height: size,
                  fit: BoxFit.cover,
                  image: AssetImage(widget.imagePath[idexActual]),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
