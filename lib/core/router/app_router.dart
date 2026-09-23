import 'package:go_router/go_router.dart';
import 'package:km_portfolio/features/career/presentation/career_screen.dart';
import 'package:km_portfolio/features/contact/presentation/contact_screen.dart';
import 'package:km_portfolio/features/home/presentation/home_screen.dart';
import 'package:km_portfolio/features/profile/presentation/profile_screen.dart';
import 'package:km_portfolio/features/skills/presentation/skills_screen.dart';
import 'package:km_portfolio/features/works/presentation/works_screen.dart';

class AppRoute {
  static const String root = '/';
  static const String profile = '/profile';
  static const String career = '/career';
  static const String works = '/works';
  static const String skills = '/skills';
  static const String contact = '/contact';
}

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoute.root,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoute.root,
      builder: (_, __) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoute.profile,
      builder: (_, __) => const ProfileScreen(),
    ),
    GoRoute(
      path: AppRoute.career,
      builder: (_, __) => const CareerScreen(),
    ),
    GoRoute(
      path: AppRoute.works,
      builder: (_, __) => const WorksScreen(),
    ),
    GoRoute(
      path: AppRoute.skills,
      builder: (_, __) => const SkillsScreen(),
    ),
    GoRoute(
      path: AppRoute.contact,
      builder: (_, __) => const ContactScreen(),
    ),
  ],
);
