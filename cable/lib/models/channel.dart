import 'package:cable/models/message.dart';

class Channel {
  const Channel({required this.channelName, required this.messages});

  final String channelName;
  final List<Message> messages;
}
