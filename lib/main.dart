
import 'package:flutter/material.dart';
import 'widgets/FotoPerfil.dart';
import 'widgets/Datos.dart';

void main() {
  runApp(const CVApp());
}

class CVApp extends StatelessWidget {
  const CVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV de Xoel',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const CVHomePage(),
    );
  }
}

class CVHomePage extends StatelessWidget {
  const CVHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Currículum'),
        centerTitle: true,
        titleTextStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
        ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
  flex: 1,
  child: ConstrainedBox(
    constraints: BoxConstraints(minWidth: 250, maxWidth: 400),
    child: LayoutBuilder(
      builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 235;
        return Container(
          color: Color(0xFF113377),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BotonPerfil(
                  imagePath: [
                    "assets/istockphoto-1495088043-612x612.jpg",
                    "assets/fotoperfil.png",
                    "assets/images.jpg"
                  ],
                  size: 100),
              Expanded(
                child: ListView(
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        color: Colors.white,
                        child: Text('Sobre Mi',
                            style: TextStyle(
                                color: Colors.black,
                                backgroundColor: Colors.white),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true)),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                            'Me considero una persona que sabe como trabajar tanto individualmente como en grupos, trabajo bien bajo presión y soy responsable, atento y educado con las personas que me rodean. Me gustan los deportes y el baile tradicional y la pandereta.',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                            textAlign: TextAlign.left)),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        color: Colors.white,
                        child: Text('Contacto',
                            style: TextStyle(
                                color: Colors.black,
                                backgroundColor: Colors.white),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true)),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.phone, size: 20, color: Colors.grey),
                                Padding(padding: EdgeInsets.only(right: 5)),
                                if (!isNarrow)
                                  Text('123456789',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true),
                                if (isNarrow)
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                                title: Text('Teléfono',style: TextStyle(color: Colors.white),),
                                                content: Text('123456789',style: TextStyle(color: Colors.white)),
                                                backgroundColor: Color(0xFF113377),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(context),
                                                      child: Text('Cerrar',style: TextStyle(color: Colors.white),))
                                                ],
                                              ));
                                    },
                                    child: Icon(Icons.info,
                                    size: 20,
                                        color: Colors.white),
                                  ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.mail, size: 20, color: Colors.grey),
                                Padding(padding: EdgeInsets.only(right: 5)),
                                if (!isNarrow)
                                  Text('ejemplo@gmail.com',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true),
                                if (isNarrow)
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            backgroundColor: Color(0xFF113377),
                                                title: Text('Email',style: TextStyle(color: Colors.white)),
                                                content:
                                                    Text('ejemplo@gmail.com',style: TextStyle(color: Colors.white)),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(context),
                                                      child: Text('Cerrar',style: TextStyle(color: Colors.white)))
                                                ],
                                              ));
                                    },
                                    child: Icon(Icons.info,
                                    size: 20,
                                        color: Colors.white),
                                  ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_city,
                                    size: 20, color: Colors.grey),
                                Padding(padding: EdgeInsets.only(right: 5)),
                                if (!isNarrow)
                                  Text('A Coruña',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true),
                                if (isNarrow)
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            backgroundColor: Color(0xFF113377),
                                                title: Text('Ubicación',style: TextStyle(color: Colors.white)),
                                                content: Text('A Coruña',style: TextStyle(color: Colors.white)),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(context),
                                                      child: Text('Cerrar',style: TextStyle(color: Colors.white)))
                                                ],
                                              ));
                                    },
                                    child: Icon(Icons.info,
                                    size: 20,
                                        color: Colors.white),
                                  ),
                              ],
                            ),
                          ],
                        )),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        color: Colors.white,
                        child: Text('Herramientas',
                            style: TextStyle(
                                color: Colors.black, backgroundColor: Colors.white),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true)),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Text('Informática',
                                style: TextStyle(color: Colors.white, fontSize: 10),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true),
                            Text('Doblaje',
                                style: TextStyle(color: Colors.white, fontSize: 10),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true),
                          ],
                        )),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        color: Colors.white,
                        child: Text('Idiomas',
                            style: TextStyle(
                                color: Colors.black, backgroundColor: Colors.white),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true)),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          children: [
                            Text('Inglés B2',
                                style: TextStyle(color: Colors.white, fontSize: 10),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true),
                            Text('Gallego nativo',
                                style: TextStyle(color: Colors.white, fontSize: 10),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true),
                            Text('Español nativo',
                                style: TextStyle(color: Colors.white, fontSize: 10),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ),
  ),
),
           Expanded(
           flex: 2,
           child: Container(
            child: ListView(

              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 25)),
                Text('XOEL LAGO HERMIDA',style: TextStyle(fontSize: 35,fontFamily: 'Roboto'),overflow: TextOverflow.ellipsis,softWrap: true,textAlign: TextAlign.center,),
                Padding(padding: EdgeInsets.all( 25),
                  child: Datos(titulo: 'EXPERIENCIA',contenido: [
                  Text("ACTOR",style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,softWrap: true),
                  Text("22 Ángeles - TV movie TVE - 2016",style: TextStyle(color: Colors.black, fontSize: 15),textAlign: TextAlign.start,),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text("Sendeiro - Cortometraje de Lucía Estévez. Protagonista - 2018",style: TextStyle(color: Colors.black, fontSize: 15),textAlign: TextAlign.start,)
                ],)),
                Padding(padding: EdgeInsetsGeometry.all(25),
                child: Datos(titulo: 'FORMACIÓN',contenido: [
                  Text("BAILE TRADICIONAL Y PERCUSIÓN",style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                  Text("AC Donaire 2011-Actualidade",style: TextStyle(color: Colors.black, fontSize: 15),textAlign: TextAlign.start,),
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Text("ESO y BACHILLER",style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                  Text("IES Monte das Moas 2016-Actualidade",style: TextStyle(color: Colors.black, fontSize: 15),textAlign: TextAlign.start,),
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Text("ODAM",style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                  Text("IES Fernando Wirtz 2023-Actualidade",style: TextStyle(color: Colors.black, fontSize: 15),textAlign: TextAlign.start,),
                  
                ],))
            ],
           ))
           )
        ],
        
      ),
    );
  }
}
