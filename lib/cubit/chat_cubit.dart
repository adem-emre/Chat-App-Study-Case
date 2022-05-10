import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:study_case/models/message_model.dart';
import 'package:study_case/models/user_model.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super( const ChatState());
  TextEditingController textEditingController = TextEditingController();


  sendMessage(Message message) {
    if (message.message.isNotEmpty) {
    emit(state.copyWith(chatMessages: [...state.chatMessages, message]));
    clearTextField();
    }
    }

    setSelectedUser(Results result){
      clearTextField();
      emit(state.copyWith(selectedUser: result,chatMessages: [...baseMessages]));
    }

    clearTextField(){
      textEditingController.clear();
    }
}
