import 'package:secondapp/view/airthemetic_view.dart';
import 'package:secondapp/view/calculator/calculator.dart';
import 'package:secondapp/view/container_view.dart';
import 'package:secondapp/view/dashboard_bottom_nav.dart';
import 'package:secondapp/view/dashboard_view.dart';
import 'package:secondapp/view/date_time_view.dart';
import 'package:secondapp/view/displaystudent.dart';
import 'package:secondapp/view/expanded_flexible_view.dart';
import 'package:secondapp/view/rows_column.dart';
import 'package:secondapp/view/splash_screen_view.dart';
import 'package:secondapp/view/stack_view.dart';
import 'package:secondapp/view/student_listview.dart';
import 'package:secondapp/view/image_view.dart';
import 'package:secondapp/view/output_view.dart';
import 'package:secondapp/view/random_view.dart';
import 'package:secondapp/view/tlutter_toaster.dart';

class AppRoute {
  //private Constructor
  AppRoute._();

  static const String dashboardRoute = '/';
  static const String airthemeticRoute = '/airthemetic';
  static const String outputRoute = '/output';
  static const String randomRoute = '/random';
  static const String containerRoute = '/container';
  static const String imageRoute = '/image';
  static const String student_listview = '/student_listview';
  static const String displaystudentRoute = '/displaystudentRoute';
  static const String expandedflexibleRoute = '/expandedflexibleRoute';
  static const String rowscolumnRoute = '/rowscolumnRoute';
  static const String fluttertasterRoute = '/fluttertasterRoute';
  static const String satckviewRoute = '/satckviewRoute';
  static const String dashboardbottomnavRoute = '/dashboardbottomnavRoute';
  static const String spalashscreenRoute = '/spalashscreenRoute';
  static const String datatimeRoute = '/datatimeRoute';
  static const String calculatorRoute = '/calculatorRoute';

  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashboardView(),
      airthemeticRoute: (context) => const AirthemeticView(),
      outputRoute: (context) => const OutputView(),
      randomRoute: (context) => const RandomNumberGenerator(),
      containerRoute: (context) => const ContainerView(),
      imageRoute: (context) => const ImageView(),
      student_listview: (context) => const Student_ListView(),
      displaystudentRoute: (context) => const DisplayStudents(),
      expandedflexibleRoute: (context) => const ExpanedFlexible(),
      rowscolumnRoute: (context) => const RowsColumn(),
      fluttertasterRoute: (context) => const FlutterToaster(),
      satckviewRoute: (context) => const StackView(),
      dashboardbottomnavRoute: (context) => const DashboardBottomNav(),
      spalashscreenRoute: (context) => const SpalashScreenView(),
      datatimeRoute: (context) => const DateTimeView(),
      calculatorRoute: (context) => const Calculator(),
    };
  }
}
