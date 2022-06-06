class Chat {
  final String photo;
  final String name;
  final String lastMessage;
  final String time;

  Chat({
    required this.photo,
    required this.lastMessage,
    required this.name,
    required this.time,
  });
}

List<Chat> chatsList = [
  Chat(
    name: 'Nikolai Ostrovoi',
    lastMessage: 'Ok but I must explain to you how all…',
    photo:
    "assets/Thumb.png",
    time: '1 min',
  ),
  Chat(
    name: 'Ryan Putnam',
    lastMessage: 'Ok but I must explain to you how all…',
    photo:
    "assets/Thumb1.png",
    time: '12 min',
  ),
  Chat(
    name: 'Nikolai Ostrovoi',
    lastMessage: 'Ok but I must explain to you how all…',
    photo:
    "assets/Thumb.png",
    time: '3 hr ',
  ),
  Chat(
    name: 'Ryan Putnam',
    lastMessage: 'Ok but I must explain to you how all…',
    photo:
    "assets/Thumb1.png",
    time: '17 hr ',
  ),
  Chat(
    name: 'George Bokhua',
    lastMessage: 'Ok but I must explain to you how all…',
    photo:
    "assets/Thumb2.png",
    time: '2 day',
  ),
];
