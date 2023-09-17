import 'package:cable/models/channel.dart';

class Server {
  const Server(
      {required this.serverName,
      required this.channels,
      required this.members});

  final String serverName;
  final List<Channel> channels;
  final List<String> members;
}
