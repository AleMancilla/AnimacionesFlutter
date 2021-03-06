import 'package:custom_painter/src/Models/layoutModel.dart';
import 'package:custom_painter/src/pages/SlidesShowPage.dart';
import 'package:custom_painter/src/routes/Routes.dart';
import 'package:custom_painter/src/theme/ThemeChanger.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LaunchesTabletPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    final layoutPage  = Provider.of<LayoutPage>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Dise;os en flutter  - tablet"),
      ),
      drawer: _MenuPrincipal(),
      body: Row(
        children: [
          Container(
            width: 300.0,
            height: double.infinity,
            child: _ListaOpciones(),
          ),

          Container(
            width: 2.0,
            height: double.infinity,
            color: Colors.orange,

          ),

          Expanded(child: layoutPage.currentPage)
        ],
      ),
      // body: _ListaOpciones(),
    );
  }
}

class _ListaOpciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final appTheme = Provider .of<ThemeChanger>(context).currentTheme;

    // pageRoutes
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      separatorBuilder: (context,i)=>Divider(
        color: appTheme.primaryColorLight,
      ),
      itemCount: pageRoutes.length,
      itemBuilder: (context, i) => ListTile(
        leading: FaIcon(pageRoutes[i].icon, color: appTheme.accentColor,),
        title: Text(pageRoutes[i].titulo),
        trailing: Icon(Icons.chevron_right,color: appTheme.accentColor,),
        onTap: (){
          final layoutPage  = Provider.of<LayoutPage>(context,listen: false);
          layoutPage.currentPage = pageRoutes[i].page;
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>pageRoutes[i].page));
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
                  backgroundColor: appTheme.currentTheme.accentColor,
                  child: Text("FM", style: TextStyle(fontSize: 50.0),),
                ),
              ),
            ),

            Expanded(
              child: _ListaOpciones()
            ),

            ListTile(
              leading: Icon(Icons.lightbulb_outline,color: appTheme.currentTheme.accentColor,),
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
                leading: Icon(Icons.add_to_home_screen,color: appTheme.currentTheme.accentColor,),
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