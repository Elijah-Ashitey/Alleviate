class Chat {
  final String image;
  final String person;
  final String time;
  final String chat;
  final int messages;
  final String messImage;
  Chat(
      {this.image,
      this.person,
      this.time,
      this.chat,
      this.messages,
      this.messImage});
}

final Chat current = Chat(
  image: 'assets/images/image.jpg',
  person: "Elijah",
  time: "just Now",
  chat: "push yourself becasue no one is going to do it for you",
  messages: 5,
  messImage: null,
);
final Chat first = Chat(
  image: 'assets/images/image.jpg',
  person: "Japan",
  time: "Today: 5:30",
  chat: "ronaldo",
  messages: 1,
  messImage: 'assets/images/messageIM.jpg',
);
final Chat second = Chat(
  image: 'assets/images/image.jpg',
  person: "Tokyo",
  time: "yesterday",
  chat: "Success doesnt just find you, you have to go out and find it",
  messages: 5,
  messImage: null,
);
final Chat third = Chat(
  image: 'assets/images/image.jpg',
  person: "Elijah",
  time: "just Now",
  chat: "push yourself becasue no one is going to do it for you",
  messages: 5,
  messImage: 'assets/images/messageIM.jpg',
);
final Chat fourth = Chat(
  image: 'assets/images/image.jpg',
  person: "Elijah",
  time: "just Now",
  chat: "push yourself becasue no one is going to do it for you",
  messages: 5,
  messImage: 'assets/images/messageIM.jpg',
);
final Chat fifth = Chat(
  image: 'assets/images/image.jpg',
  person: "Elijah",
  time: "just Now",
  chat: "push yourself becasue no one is going to do it for you",
  messages: 5,
  messImage: 'assets/images/messageIM.jpg',
);

List<Chat> chats = [current, first, second, third, fourth, fifth];
