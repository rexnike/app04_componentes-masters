import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Input Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: "Noombre Completo",
                hintStyle: TextStyle(
                 color: Colors.blue,
                ),
                label: Text("Nombre Completo"),
                icon: Icon(Icons.check_box_rounded),
                suffixIcon: Icon(Icons.local_activity_rounded),
                prefixIcon: Icon(Icons.abc),
            ),
            style: TextStyle(
              color: Colors.red,
              fontSize: 24.0,
            ),
            maxLines: 3,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10,),

          TextField(
            decoration: InputDecoration(
              hintText: "Buscar productos",
              prefixIcon: Icon(Icons.search),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.deepPurple,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 5.0,
                ),
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    offset: Offset(4, 4),
                    blurRadius: 12.0,
                  ),
                ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Buscar Producto",
                hintStyle: GoogleFonts.poppins(
                  fontSize: 14.0,
                  color: Colors.black38,
                ),
                fillColor: Colors.white,
                filled: true,
                suffix: Icon(
                  Icons.search,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                    width: 0,
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
        ),
      ),
    );
  }
}