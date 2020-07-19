import 'package:custom_painter/src/routes/Routes.dart';
import 'package:custom_painter/src/theme/ThemeChanger.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LaunchesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dise;os en flutter"),
      ),
      body: _ListaOpciones(),
      drawer: _MenuPrincipal(),
    );
  }
}

class _ListaOpciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // pageRoutes
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      separatorBuilder: (context,i)=>Divider(
        color: Colors.blue,
      ),
      itemCount: pageRoutes.length,
      itemBuilder: (context, i) => ListTile(
        leading: FaIcon(pageRoutes[i].icon, color: Colors.blue,),
        title: Text(pageRoutes[i].titulo),
        trailing: Icon(Icons.chevron_right,color: Colors.blue,),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>pageRoutes[i].page));
        },
      ),
      
    );
  }
}


class _MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final appTheme = Provider.of<ThemeChanger>(context);

    return Drawer(
      child: Container(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                padding: EdgeInsets.all(20.0),
                width: double.infinity,
                height: 200.0,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("FM", style: TextStyle(fontSize: 50.0),),
                ),
              ),
            ),

            Expanded(
              child: _ListaOpciones()
            ),

            ListTile(
              leading: Icon(Icons.lightbulb_outline,color: Colors.blue,),
              title: Text("Dark mode"),
              trailing: Switch.adaptive(
                  value: appTheme.darktheme, 
                  onChanged: (value){
                    appTheme.darktheme = value;

                  },
                  activeColor: Colors.green,
                ),
            ),

            SafeArea(
              bottom: true,
              top: false,
              left: false,
              right: false,
              child: ListTile(
                leading: Icon(Icons.add_to_home_screen,color: Colors.blue,),
                title: Text("Custom theme"),
                trailing: Switch.adaptive(
                    value: appTheme.customtheme, 
                    onChanged: (value){
                      appTheme.customtheme = value;
                    },
                    activeColor: Colors.green,
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}