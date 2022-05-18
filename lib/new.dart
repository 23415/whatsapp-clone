import 'package:flutter/material.dart';

void main(){
  runApp(const NewApp());
}


class NewApp extends StatefulWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppTitle(),
        );
  }
}

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child :Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          elevation: 6,
          backgroundColor: Colors.teal[500],
          child: Icon(Icons.message),

        ),
    appBar: AppBar(
    backgroundColor: Colors.teal[500],
    title: const Text('WhatsApp'),
    actions: [
    IconButton(onPressed: (){}, icon:const Icon(Icons.search)),
    //IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert)),
      PopupMenuButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        itemBuilder: (context){
          return[
            const PopupMenuItem(child: Text('New group')),
            const PopupMenuItem(child: Text('New Broadcast')),
            const PopupMenuItem(child: Text('Linked devices')),
            const PopupMenuItem(child: Text('Starred messages')),
            const PopupMenuItem(child: Text('Payment')),
            const PopupMenuItem(child: Text('Settings')),
          ];
        },
      )
    ],
      bottom:const TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            iconMargin:EdgeInsets.all(100),
            child: Icon(
              Icons.camera_alt_rounded,
            ),
          ),
          Tab(child: Text('CHATS', style: TextStyle(color: Colors.white),),),
          Tab(child: Text('STATUS', style: TextStyle(color: Colors.white),),),
          Tab(child: Text('CALLS', style: TextStyle(color: Colors.white),),),
        ],
      ),
    ),
    ),
    );
  }
}

class ChatButton extends StatefulWidget {
  const ChatButton({Key? key}) : super(key: key);

  @override
  State<ChatButton> createState() => _ChatButtonState();
}

class _ChatButtonState extends State<ChatButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          ElevatedButton(onPressed: (){}, child: Text('Chats'),
          style: OutlinedButton.styleFrom(
            shape: CircleBorder()
          ),)
        ],
      )
    );
  }
}

