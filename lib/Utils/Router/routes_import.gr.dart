// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:amigo/View/authScreen/accountType/account.type.screen.dart'
    as _i1;
import 'package:amigo/View/authScreen/otpScreen/otp.screen.dart' as _i3;
import 'package:amigo/View/authScreen/profileDetaileScreen/profile.detaile.screen.dart'
    as _i4;
import 'package:amigo/View/authScreen/registrationScreen/registration.screen.dart'
    as _i5;
import 'package:amigo/View/chatHomeListScreen/chat.home.list.screen.dart'
    as _i2;
import 'package:amigo/View/splashScreen/splash.screen.dart' as _i6;
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AccountTypeScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountTypeScreen(),
      );
    },
    ChatHomeListScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatHomeListScreen(),
      );
    },
    OTPScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OTPScreen(),
      );
    },
    ProfileDetailScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfileDetailScreen(),
      );
    },
    RegistrationScreenRoute.name: (routeData) {
      final args = routeData.argsAs<RegistrationScreenRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.RegistrationScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountTypeScreen]
class AccountTypeScreenRoute extends _i7.PageRouteInfo<void> {
  const AccountTypeScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AccountTypeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountTypeScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatHomeListScreen]
class ChatHomeListScreenRoute extends _i7.PageRouteInfo<void> {
  const ChatHomeListScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ChatHomeListScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatHomeListScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OTPScreen]
class OTPScreenRoute extends _i7.PageRouteInfo<void> {
  const OTPScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          OTPScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'OTPScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProfileDetailScreen]
class ProfileDetailScreenRoute extends _i7.PageRouteInfo<void> {
  const ProfileDetailScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileDetailScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileDetailScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RegistrationScreen]
class RegistrationScreenRoute
    extends _i7.PageRouteInfo<RegistrationScreenRouteArgs> {
  RegistrationScreenRoute({
    _i8.Key? key,
    required String title,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          RegistrationScreenRoute.name,
          args: RegistrationScreenRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'RegistrationScreenRoute';

  static const _i7.PageInfo<RegistrationScreenRouteArgs> page =
      _i7.PageInfo<RegistrationScreenRouteArgs>(name);
}

class RegistrationScreenRouteArgs {
  const RegistrationScreenRouteArgs({
    this.key,
    required this.title,
  });

  final _i8.Key? key;

  final String title;

  @override
  String toString() {
    return 'RegistrationScreenRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i6.SplashScreen]
class SplashScreenRoute extends _i7.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
