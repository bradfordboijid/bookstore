import 'package:bookstore/presentation/screens/book_info_screen.dart';
import 'package:bookstore/presentation/screens/checkout_screen.dart';
import 'package:bookstore/presentation/screens/home_screen.dart';
import 'package:bookstore/presentation/screens/landing_screen.dart';
import 'package:bookstore/presentation/screens/login_screen.dart';
import 'package:bookstore/presentation/screens/payment_received.dart';
import 'package:bookstore/presentation/screens/register_screen.dart';
import 'package:bookstore/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart' hide CarouselController;

class RouteService {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LandingScreen.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const LandingScreen(),
        );

      case LoginScreen.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const LoginScreen(),
        );

      case RegisterScreen.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const RegisterScreen(),
        );

      case HomeScreen.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const HomeScreen(),
        );

      case CheckoutScreen.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const CheckoutScreen(),
        );

      case PaymentReceivedScreen.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const PaymentReceivedScreen(),
        );

      case BookInfoScreen.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const BookInfoScreen(),
        );

      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const SplashScreen(),
        );
    }
  }
}
