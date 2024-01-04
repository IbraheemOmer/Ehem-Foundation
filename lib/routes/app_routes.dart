import 'package:flutter/material.dart';
import 'package:ehem_foundation_project/presentation/get_started_two_screen/get_started_two_screen.dart';
import 'package:ehem_foundation_project/presentation/type_of_user_user_screen/type_of_user_user_screen.dart';
import 'package:ehem_foundation_project/presentation/type_of_user_lawyer_screen/type_of_user_lawyer_screen.dart';
import 'package:ehem_foundation_project/presentation/login_one_screen/login_one_screen.dart';
import 'package:ehem_foundation_project/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:ehem_foundation_project/presentation/forget_password_one_screen/forget_password_one_screen.dart';
import 'package:ehem_foundation_project/presentation/forget_passwordtwo_one_screen/forget_passwordtwo_one_screen.dart';
import 'package:ehem_foundation_project/presentation/login_screen/login_screen.dart';
import 'package:ehem_foundation_project/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:ehem_foundation_project/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:ehem_foundation_project/presentation/forget_passwordtwo_screen/forget_passwordtwo_screen.dart';
import 'package:ehem_foundation_project/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:ehem_foundation_project/presentation/home_container_screen/home_container_screen.dart';
import 'package:ehem_foundation_project/presentation/services_financail_aid_screen/services_financail_aid_screen.dart';
import 'package:ehem_foundation_project/presentation/lawyer_page_screen/lawyer_page_screen.dart';
import 'package:ehem_foundation_project/presentation/home_one_screen/home_one_screen.dart';
import 'package:ehem_foundation_project/presentation/search_one_screen/search_one_screen.dart';
import 'package:ehem_foundation_project/presentation/chats_screen/chats_screen.dart';
import 'package:ehem_foundation_project/presentation/profile_two_tab_container_screen/profile_two_tab_container_screen.dart';
import 'package:ehem_foundation_project/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:ehem_foundation_project/presentation/chat_page_one_screen/chat_page_one_screen.dart';
import 'package:ehem_foundation_project/presentation/post_page_one_screen/post_page_one_screen.dart';
import 'package:ehem_foundation_project/presentation/post_page_two_screen/post_page_two_screen.dart';
import 'package:ehem_foundation_project/presentation/add_a_post_one_screen/add_a_post_one_screen.dart';
import 'package:ehem_foundation_project/presentation/request_payment_one_screen/request_payment_one_screen.dart';
import 'package:ehem_foundation_project/presentation/sending_a_message_screen/sending_a_message_screen.dart';
import 'package:ehem_foundation_project/presentation/chat_page_screen/chat_page_screen.dart';
import 'package:ehem_foundation_project/presentation/accpet_request_screen/accpet_request_screen.dart';
import 'package:ehem_foundation_project/presentation/services_pending_financail_aid_screen/services_pending_financail_aid_screen.dart';
import 'package:ehem_foundation_project/presentation/card_info_screen/card_info_screen.dart';
import 'package:ehem_foundation_project/presentation/wtite_a_comment_screen/wtite_a_comment_screen.dart';
import 'package:ehem_foundation_project/presentation/add_a_post_two_screen/add_a_post_two_screen.dart';
import 'package:ehem_foundation_project/presentation/all_attachments_delete_screen/all_attachments_delete_screen.dart';
import 'package:ehem_foundation_project/presentation/wtite_a_comment_one_screen/wtite_a_comment_one_screen.dart';
import 'package:ehem_foundation_project/presentation/request_payment_two_screen/request_payment_two_screen.dart';
import 'package:ehem_foundation_project/presentation/sending_a_message_one_screen/sending_a_message_one_screen.dart';
import 'package:ehem_foundation_project/presentation/answer_payment_one_screen/answer_payment_one_screen.dart';
import 'package:ehem_foundation_project/presentation/services_accepted_financail_aid_screen/services_accepted_financail_aid_screen.dart';
import 'package:ehem_foundation_project/presentation/sending_attachments_one_screen/sending_attachments_one_screen.dart';
import 'package:ehem_foundation_project/presentation/add_a_post_three_screen/add_a_post_three_screen.dart';
import 'package:ehem_foundation_project/presentation/sending_attachments_screen/sending_attachments_screen.dart';
import 'package:ehem_foundation_project/presentation/answer_payment_two_screen/answer_payment_two_screen.dart';
import 'package:ehem_foundation_project/presentation/services_accepted_financail_aid_one_screen/services_accepted_financail_aid_one_screen.dart';
import 'package:ehem_foundation_project/presentation/chat_page_three_screen/chat_page_three_screen.dart';
import 'package:ehem_foundation_project/presentation/all_attachments_delete_one_screen/all_attachments_delete_one_screen.dart';
import 'package:ehem_foundation_project/presentation/answer_payment_three_screen/answer_payment_three_screen.dart';
import 'package:ehem_foundation_project/presentation/chat_page_two_screen/chat_page_two_screen.dart';
import 'package:ehem_foundation_project/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String getStartedTwoScreen = '/get_started_two_screen';

  static const String typeOfUserUserScreen = '/type_of_user_user_screen';

  static const String typeOfUserLawyerScreen = '/type_of_user_lawyer_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgetPasswordOneScreen = '/forget_password_one_screen';

  static const String forgetPasswordtwoOneScreen =
      '/forget_passwordtwo_one_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String forgetPasswordtwoScreen = '/forget_passwordtwo_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchPage = '/search_page';

  static const String chatsOnePage = '/chats_one_page';

  static const String servicesSearchForLawyerPage =
      '/services_search_for_lawyer_page';

  static const String servicesSearchForLawyerTabContainerPage =
      '/services_search_for_lawyer_tab_container_page';

  static const String servicesFinancailAidScreen =
      '/services_financail_aid_screen';

  static const String profilePage = '/profile_page';

  static const String lawyerPageScreen = '/lawyer_page_screen';

  static const String homeOneScreen = '/home_one_screen';

  static const String searchOneScreen = '/search_one_screen';

  static const String chatsScreen = '/chats_screen';

  static const String profileTwoPage = '/profile_two_page';

  static const String profileTwoTabContainerScreen =
      '/profile_two_tab_container_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String chatPageOneScreen = '/chat_page_one_screen';

  static const String postPageOneScreen = '/post_page_one_screen';

  static const String postPageTwoScreen = '/post_page_two_screen';

  static const String addAPostOneScreen = '/add_a_post_one_screen';

  static const String requestPaymentOneScreen = '/request_payment_one_screen';

  static const String sendingAMessageScreen = '/sending_a_message_screen';

  static const String chatPageScreen = '/chat_page_screen';

  static const String accpetRequestScreen = '/accpet_request_screen';

  static const String servicesPendingFinancailAidScreen =
      '/services_pending_financail_aid_screen';

  static const String cardInfoScreen = '/card_info_screen';

  static const String wtiteACommentScreen = '/wtite_a_comment_screen';

  static const String addAPostTwoScreen = '/add_a_post_two_screen';

  static const String allAttachmentsDeleteScreen =
      '/all_attachments_delete_screen';

  static const String wtiteACommentOneScreen = '/wtite_a_comment_one_screen';

  static const String requestPaymentTwoScreen = '/request_payment_two_screen';

  static const String sendingAMessageOneScreen =
      '/sending_a_message_one_screen';

  static const String answerPaymentOneScreen = '/answer_payment_one_screen';

  static const String servicesAcceptedFinancailAidScreen =
      '/services_accepted_financail_aid_screen';

  static const String sendingAttachmentsOneScreen =
      '/sending_attachments_one_screen';

  static const String addAPostThreeScreen = '/add_a_post_three_screen';

  static const String sendingAttachmentsScreen = '/sending_attachments_screen';

  static const String answerPaymentTwoScreen = '/answer_payment_two_screen';

  static const String servicesAcceptedFinancailAidOneScreen =
      '/services_accepted_financail_aid_one_screen';

  static const String chatPageThreeScreen = '/chat_page_three_screen';

  static const String allAttachmentsDeleteOneScreen =
      '/all_attachments_delete_one_screen';

  static const String answerPaymentThreeScreen = '/answer_payment_three_screen';

  static const String chatPageTwoScreen = '/chat_page_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    // getStartedTwoScreen: (context) => GetStartedTwoScreen(),
    typeOfUserUserScreen: (context) => TypeOfUserUserScreen(),
    typeOfUserLawyerScreen: (context) => TypeOfUserLawyerScreen(),
    loginOneScreen: (context) => LoginOneScreen(),
    signUpScreen: (context) => SignUpScreen(),
    forgetPasswordOneScreen: (context) => ForgetPasswordOneScreen(),
    forgetPasswordtwoOneScreen: (context) => ForgetPasswordtwoOneScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpOneScreen: (context) => SignUpOneScreen(),
    forgetPasswordScreen: (context) => ForgetPasswordScreen(),
    forgetPasswordtwoScreen: (context) => ForgetPasswordtwoScreen(),
    signUpTwoScreen: (context) => SignUpTwoScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    servicesFinancailAidScreen: (context) => ServicesFinancailAidScreen(),
    lawyerPageScreen: (context) => LawyerPageScreen(),
    homeOneScreen: (context) => HomeOneScreen(),
    searchOneScreen: (context) => SearchOneScreen(),
    chatsScreen: (context) => ChatsScreen(),
    profileTwoTabContainerScreen: (context) => ProfileTwoTabContainerScreen(),
    profileOneScreen: (context) => ProfileOneScreen(),
    chatPageOneScreen: (context) => ChatPageOneScreen(),
    postPageOneScreen: (context) => PostPageOneScreen(),
    postPageTwoScreen: (context) => PostPageTwoScreen(),
    addAPostOneScreen: (context) => AddAPostOneScreen(),
    requestPaymentOneScreen: (context) => RequestPaymentOneScreen(),
    sendingAMessageScreen: (context) => SendingAMessageScreen(),
    chatPageScreen: (context) => ChatPageScreen(),
    accpetRequestScreen: (context) => AccpetRequestScreen(),
    servicesPendingFinancailAidScreen: (context) =>
        ServicesPendingFinancailAidScreen(),
    cardInfoScreen: (context) => CardInfoScreen(),
    wtiteACommentScreen: (context) => WtiteACommentScreen(),
    addAPostTwoScreen: (context) => AddAPostTwoScreen(),
    // allAttachmentsDeleteScreen: (context) => AllAttachmentsDeleteScreen(),
    wtiteACommentOneScreen: (context) => WtiteACommentOneScreen(),
    requestPaymentTwoScreen: (context) => RequestPaymentTwoScreen(),
    sendingAMessageOneScreen: (context) => SendingAMessageOneScreen(),
    answerPaymentOneScreen: (context) => AnswerPaymentOneScreen(),
    servicesAcceptedFinancailAidScreen: (context) =>
        ServicesAcceptedFinancailAidScreen(),
    sendingAttachmentsOneScreen: (context) => SendingAttachmentsOneScreen(),
    addAPostThreeScreen: (context) => AddAPostThreeScreen(),
    sendingAttachmentsScreen: (context) => SendingAttachmentsScreen(),
    answerPaymentTwoScreen: (context) => AnswerPaymentTwoScreen(),
    servicesAcceptedFinancailAidOneScreen: (context) =>
        ServicesAcceptedFinancailAidOneScreen(),
    chatPageThreeScreen: (context) => ChatPageThreeScreen(),
    // allAttachmentsDeleteOneScreen: (context) => AllAttachmentsDeleteOneScreen(),
    answerPaymentThreeScreen: (context) => AnswerPaymentThreeScreen(),
    chatPageTwoScreen: (context) => ChatPageTwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
