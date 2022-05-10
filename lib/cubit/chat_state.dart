part of 'chat_cubit.dart';

const List<Message> baseMessages = [
  Message(message: "Hello", isFromMe: false),
  Message(message: "Hello", isFromMe: true),
  Message(message: "See you", isFromMe: false),
  Message(message: "Bye", isFromMe: true),
];

class ChatState extends Equatable {
  final Results? selectedUser;

  final List<Message> chatMessages;

  const ChatState({
    this.selectedUser,
    this.chatMessages = const [...baseMessages],
  });

  @override
  List<Object?> get props => [selectedUser, baseMessages, chatMessages];

  ChatState copyWith({
    Results? selectedUser,
    List<Message>? baseMessages,
    List<Message>? chatMessages,
  }) {
    return ChatState(
      selectedUser: selectedUser ?? this.selectedUser,
      chatMessages: chatMessages ?? this.chatMessages,
    );
  }
}
