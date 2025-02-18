// ignore_for_file: constant_identifier_names

enum CategoryType { LISTING, EXPLORE }

enum SnackBarType { Success, Warning, Error }

enum MessageType { QUESTION, ANSWER }

enum InputType { OPTIONS, TEXTFIELD, DATEPICKER }

enum QuestionType { NAME, AGE, LANGUAGE, GENDER }

enum SenderType { User, Character }

enum Gender { MALE, FEMALE }

extension GenderName on String {
  Gender toGenderType() {
    switch (this) {
      case "MALE":
        return Gender.MALE;
      case "FEMALE":
        return Gender.FEMALE;
      default:
        return Gender.MALE;
    }
  }
}

extension SenderTypeToString on SenderType {
  String toChatTypeString() {
    switch (this) {
      case SenderType.User:
        return 'USER';
      case SenderType.Character:
        return 'CHARACTER';
      }
  }
}

extension StringToSenderType on String {
  SenderType toSenderType() {
    switch (toUpperCase()) {
      case 'USER':
        return SenderType.User;
      case 'CHARACTER':
        return SenderType.Character;
      default:
        return SenderType.User;
    }
  }
}

enum ChatType { ChatTypeText }

extension ChatTypeToString on ChatType {
  String toChatTypeString() {
    switch (this) {
      case ChatType.ChatTypeText:
        return 'TEXT';
      }
  }
}

extension StringToChatType on String {
  ChatType toChatType() {
    switch (this) {
      case 'TEXT':
        return ChatType.ChatTypeText;
      default:
        return ChatType.ChatTypeText;
    }
  }
}

enum ChatTabFilter {
  ALL,
}

extension ChatTabFilterName on ChatTabFilter {
  String get chatTabFilterName {
    switch (this) {
      case ChatTabFilter.ALL:
        return 'All Chats';
      }
  }
}

enum PlanType { WEEKLY, MONTHLY }

extension PlanTypeConversion on String {
  PlanType? toPlanType() {
    switch (this) {
      case "WEEKLY":
        return PlanType.WEEKLY;
      case "MONTHLY":
        return PlanType.MONTHLY;
    }
    return null;
  }
}

enum EventName {
  splashScreen,
  landingScreen,
  onboardingChatScreen,
  submitUserData,
  locationAccessScreen,
  onboardingCharacterScreen,
  chooseOnboardingCharacter,
  loginBottomSheet,
  loginNumberAdded,
  otpScreen,
  otpVerified,
  otpFailed,
  resentOTP,
  onboardingCompleted,
  chatScreen,
  chatSuccessDemand,
  chatFailedDemand,
  chatScreenExit,
  lowBalanceAlert,
  addBalanceInitiated,
  addBalanceSuccess,
  addBalanceFailed,
  chatAttachmentBottomSheet,
  askSelfie,
  askVoiceMessage,
  accountScreen,
  logout,
  receivedDeeplink,
}
