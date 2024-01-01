import 'package:chatapp/user_model.dart';
import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<usermodel> users = [
      usermodel(
          image: "assets/chatapp.jpg",
          title: "Ahmed",
          subtitle: "Hello hau bro",
          time: "2:00"),
      usermodel(
          image: "assets/chatapp1.jpg",
          title: "Selem",
          subtitle: "Hello dear hau",
          time: "2:00"),
      usermodel(
          image: "assets/chatapp2.png",
          title: "Mazen",
          subtitle: "Hello hau bro",
          time: "2:00"),
      usermodel(
          image: "assets/chatapp.jpg",
          title: "Fares",
          subtitle: "Hello hau bro",
          time: "2:00"),
      usermodel(
          image: "assets/chatapp1.jpg",
          title: "Abdou",
          subtitle: "Hello hau bro",
          time: "2:00"),
      usermodel(
          image: "assets/chatapp2.png",
          title: "Kareem",
          subtitle: "Hello hau bro",
          time: "2:00"),
      usermodel(
          image: "assets/chatapp.jpg",
          title: "Abdalla",
          subtitle: "Hello hau bro",
          time: "2:00"),
      usermodel(
          image: "assets/chatapp2.png",
          title: "Tarek",
          subtitle: "Hello hau bro",
          time: "2:00"),
      usermodel(
          image: "assets/chatapp1.jpg",
          title: "Mohamed",
          subtitle: "Hello hau bro",
          time: "2:00"),
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff4632ff),
        foregroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      backgroundColor: const Color(0xff4632ff),
      appBar: AppBar(
        title: const Text(
          "Chats",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color(0xff4632ff),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Favourite Contact",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(users[index].image),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        users[index].title,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: users.length),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ListTile(
                        leading: SizedBox(
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(users[index].image),
                          ),
                        ),
                        title: Text(
                          users[index].title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        subtitle: Text(
                          users[index].subtitle,
                          style: const TextStyle(fontSize: 15),
                        ),
                        trailing: Text(
                          users[index].time,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 5,
                    );
                  },
                  itemCount: users.length),
            ),
          )
        ],
      ),
    );
  }
}
