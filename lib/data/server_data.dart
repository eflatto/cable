import 'package:cable/models/channel.dart';
import 'package:cable/models/message.dart';
import 'package:cable/models/server.dart';

const serverData = [
  Server(serverName: "shellhacks", channels: [
    Channel(channelName: "general", messages: [
      Message(content: "Hey how is everybody :D", user: "Yash"),
      Message(content: "Good how are you?", user: "Edwin"),
      Message(content: "Chicken Wings!", user: "Kevin"),
    ]),
    Channel(channelName: "random", messages: [
      Message(content: "Who started the fire?", user: "Samir"),
      Message(
          content: "inserts donald glover flaming pizza GIF here",
          user: "FifthGuy"),
    ])
  ], members: [
    "Yash",
    "Edwin",
    "Samir",
    "Kevin",
    "FifthGuy"
  ]),
  Server(serverName: "billionaires", channels: [
    Channel(channelName: "general", messages: [
      Message(content: "Im the richest", user: "Elon"),
      Message(content: "No, me (insert angryface)", user: "Jeff"),
      Message(content: "I just commited tax fraud hehe", user: "Bill"),
      Message(content: "hissssssssssssssss", user: "Mark")
    ]),
    Channel(channelName: "illuminati", messages: [
      Message(content: "newborn baby sacrifice today?", user: "Jay"),
      Message(content: "sounds good, see you at 7", user: "Warren"),
    ])
  ], members: [
    "Elon",
    "Donald",
    "Jeff",
    "Jay",
    "Warren",
    "Mark"
  ])
];
