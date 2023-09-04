import 'package:car_mark/repository/park_repository_impl.dart';
import 'package:car_mark/ui/my_home_screen.dart';
import 'package:car_mark/ui/view_model.dart';
import 'package:go_router/go_router.dart';

import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: '/main',
      builder: (context, state) {
        return ChangeNotifierProvider(
            create: (_) => MainViewModel(ParkRepositoryImpl()),
            child: const MyHomeScreen());
      },
    ),
  ],
);
