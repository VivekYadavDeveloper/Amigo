part of 'routes_import.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashScreenRoute.page,
          path: "/",
          initial: true,
        ),
        AutoRoute(page: RegistrationScreenRoute.page),
        AutoRoute(page: OTPScreenRoute.page),
        AutoRoute(page: ProfileDetailScreenRoute.page),
        AutoRoute(page: AccountTypeScreenRoute.page),
        AutoRoute(page: ChatHomeListScreenRoute.page),
      ];
}
