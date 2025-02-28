import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {

  const Sidebar({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 49, 41, 41),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 49, 41, 41)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 50,
                  color: Colors.white,
                ),
                SizedBox(height: 10),
                Text('Attack on Titan App',
                  style: TextStyle(
                    fontFamily: "Ditty",
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 5),
                Text('Hecha por Ariel Lazaro',
                  style: TextStyle(
                    fontFamily: "Ditty",
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.home_rounded, 
                color: Colors.white,
              ),
              title: Text('Portada',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              onTap: () {
                if (ModalRoute.of(context)!.settings.name != "/front") {
                  Navigator.pushReplacementNamed(context, "/front");
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
          ),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.person_3_rounded,
                color: Colors.white,
              ),
              title: Text('Personajes',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              onTap: () {
                if (ModalRoute.of(context)!.settings.name != "/characters") {
                  Navigator.pushReplacementNamed(context, "/characters");
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
          ),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.access_time_filled_rounded,
                color: Colors.white, 
              ),
              title: Text('Momentos',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              onTap: () {
                if (ModalRoute.of(context)!.settings.name != "/moments") {
                  Navigator.pushReplacementNamed(context, "/moments");
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
          ),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.info,
                color: Colors.white, 
              ),
              title: Text('Acerca de',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              onTap: () {
                if (ModalRoute.of(context)!.settings.name != "/about") {
                  Navigator.pushReplacementNamed(context, "/about");
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
          ),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.account_circle_rounded,
                color: Colors.white, 
              ),
              title: Text('En mi vida',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              onTap: () {
                if (ModalRoute.of(context)!.settings.name != "/in-my-life") {
                  Navigator.pushReplacementNamed(context, "/in-my-life");
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
          ),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.work,
                color: Colors.white, 
              ),
              title: Text('Contrátame',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              onTap: () {
                if (ModalRoute.of(context)!.settings.name != "/hire-me") {
                  Navigator.pushReplacementNamed(context, "/hire-me");
                } else {
                  Navigator.of(context).pop();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}