import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {

var name = "no name";
var wife = "";

create(){
  setState(() {
    name = "Ren"; 
  });
  }

delete(){
  setState(() {
    wife = "";
    name = "";
  });
}

transform(){
  setState(() {
    wife = "assets/my_wife.png";
  });
}

no_wife(){
  if (wife.isEmpty || wife == null)
  {
    return Text(name); 
  }
  else {
    return Image.asset(wife);
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text ("Hoodwink My Wife"),
        actions: [
          IconButton(
      onPressed: ()
      {
        create();
      },
       icon: Icon(Icons.account_balance_outlined)),
       IconButton(onPressed: (){
        delete();
       }, icon: Icon(Icons.delete)),
       IconButton(onPressed: (){
        transform();
       }, icon: Icon(Icons.severe_cold))
    ],
    
  ),
      
      body: Center(
       // child: wife.isEmpty || wife == null?  Text(name) : Image.asset(wife),
       child: no_wife(),
       ),
      
      );
  }
}