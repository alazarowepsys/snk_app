import 'package:flutter/material.dart';
import 'package:snk_app/widgets/sidebar.dart';
import 'package:snk_app/widgets/topbar.dart';

class AboutScreen extends StatelessWidget {

  const AboutScreen({super.key});

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar(
        title: "Shingeki No Kyojin App"
      ),
      drawer: Sidebar(),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 32
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Text("Acerca de SNK",
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Shingeki No Kyojin (進撃の巨人) cuyo nombre literalmente significa 'Titan de Ataque', es una serie de manga japonesa escrita e ilustrada por Hajime Isayama. El manga se publicó por primera vez en septiembre de 2009 en la revista Bessatsu Shonen Magazine hasta abril de 2021, con un total de 139 capítulos. El anime se emitió por primera vez en 2013, y terminó 10 años después, en 2023. Esta serie consta de 4 temporadas, con un total de 87 episodios + 8 episodios extra (OVAs).",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset("assets/images/snk.png"),
                SizedBox(
                  height: 15,
                ),
                Text("Su autor",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Hajime Isayama, cuyo nombre en japonés es '諫山 創 Isayama Hajime', es un mangaka japonés. Nació el 29 de agosto de 1986, en la Prefectura de Oita. Su primera serie, Attack on Titan se convirtió en una de las series de manga más vendidas de todos los tiempos, con 110 millones de copias en circulación hasta septiembre de 2022.", 
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset("assets/images/Isayama.jpg", 
                  height: 200,
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}