import 'package:flutter/material.dart';
import 'package:math_courses/presentation/my_courses_sessions_page/my_courses_sessions_page.dart';
import 'package:math_courses/presentation/profile_finished_courses_page/profile_finished_courses_page.dart';
import 'package:math_courses/presentation/splash_screen/splash_screen.dart';
import 'package:math_courses/presentation/welcome_screen/welcome_screen.dart';
import 'package:math_courses/presentation/login_screen/login_screen.dart';
import 'package:math_courses/presentation/my_courses_parts_screen/my_courses_parts_screen.dart';
import 'package:math_courses/presentation/video_page_one_screen/video_page_one_screen.dart';
import 'package:math_courses/presentation/mock_exam_screen/mock_exam_screen.dart';
import 'package:math_courses/presentation/live_session_screen/live_session_screen.dart';
import 'package:math_courses/presentation/video_page_two_screen/video_page_two_screen.dart';
import 'package:math_courses/presentation/quiz_screen/quiz_screen.dart';
import 'package:math_courses/presentation/profile_contacts_screen/profile_contacts_screen.dart';
import 'package:math_courses/presentation/home_screen/home_screen.dart';
import 'package:math_courses/presentation/my_courses_screen/my_courses_screen.dart';
import 'package:math_courses/presentation/notifications_requests_screen/notifications_requests_screen.dart';
import 'package:math_courses/presentation/headquarter_chat_screen/headquarter_chat_screen.dart';
import 'package:math_courses/presentation/new_message_screen/new_message_screen.dart';
import 'package:math_courses/presentation/payment_success_screen/payment_success_screen.dart';
import 'package:math_courses/presentation/invoice_total_screen/invoice_total_screen.dart';
import 'package:math_courses/presentation/invoice_payment_method_screen/invoice_payment_method_screen.dart';
import 'package:math_courses/presentation/invoice_card_screen/invoice_card_screen.dart';
import 'package:math_courses/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String myCoursesPartsScreen = '/my_courses_parts_screen';

  static const String videoPageOneScreen = '/video_page_one_screen';

  static const String mockExamScreen = '/mock_exam_screen';

  static const String liveSessionScreen = '/live_session_screen';

  static const String videoPageTwoScreen = '/video_page_two_screen';

  static const String quizScreen = '/quiz_screen';

  static const String profileFinishedCoursesPage =
      '/profile_finished_courses_page';

  static const String profilePaymentsPage = '/profile_payments_page';

  static const String profileContactsScreen = '/profile_contacts_screen';

  static const String homeScreen = '/home_screen';

  static const String myCoursesScreen = '/my_courses_screen';

  static const String myCoursesSessionsPage = '/my_courses_sessions_page';

  static const String notificationsPage = '/notifications_page';

  static const String notificationsRequestsScreen =
      '/notifications_requests_screen';

  static const String headquarterChatScreen = '/headquarter_chat_screen';

  static const String newMessageScreen = '/new_message_screen';

  static const String paymentSuccessScreen = '/payment_success_screen';

  static const String invoiceTotalScreen = '/invoice_total_screen';

  static const String invoicePaymentMethodScreen =
      '/invoice_payment_method_screen';

  static const String invoiceCardScreen = '/invoice_card_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        profileFinishedCoursesPage: ProfileFinishedCoursesPage.builder,
        welcomeScreen: WelcomeScreen.builder,
        loginScreen: LoginScreen.builder,
        myCoursesPartsScreen: MyCoursesPartsScreen.builder,
        videoPageOneScreen: VideoPageOneScreen.builder,
        mockExamScreen: MockExamScreen.builder,
        liveSessionScreen: LiveSessionScreen.builder,
        videoPageTwoScreen: VideoPageTwoScreen.builder,
        quizScreen: QuizScreen.builder,
        profileContactsScreen: ProfileContactsScreen.builder,
        homeScreen: HomeScreen.builder,
        myCoursesScreen: MyCoursesScreen.builder,
        myCoursesSessionsPage: MyCoursesSessionsPage.builder,
        notificationsRequestsScreen: NotificationsRequestsScreen.builder,
        headquarterChatScreen: HeadquarterChatScreen.builder,
        newMessageScreen: NewMessageScreen.builder,
        paymentSuccessScreen: PaymentSuccessScreen.builder,
        invoiceTotalScreen: InvoiceTotalScreen.builder,
        invoicePaymentMethodScreen: InvoicePaymentMethodScreen.builder,
        invoiceCardScreen: InvoiceCardScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
