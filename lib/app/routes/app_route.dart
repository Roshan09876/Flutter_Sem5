import 'package:secondapp/view/airthemetic_view.dart';
import 'package:secondapp/view/container_view.dart';
import 'package:secondapp/view/dashboard_view.dart';
import 'package:secondapp/view/displaystudent.dart';
import 'package:secondapp/view/expanded_flexible_view.dart';
import 'package:secondapp/view/rows_column.dart';
import 'package:secondapp/view/student_listview.dart';
import 'package:secondapp/view/image_view.dart';
import 'package:secondapp/view/output_view.dart';
import 'package:secondapp/view/random_view.dart';

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
      rowscolumnRoute: (context) => const RowsColumn()
    };
  }
}
