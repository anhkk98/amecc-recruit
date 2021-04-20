import 'package:provider/provider.dart';


List<SingleChildCloneableWidget> providers = [
  ...independentProvider,
  ...dependentProviders
];

List<SingleChildCloneableWidget> independentProvider = [
  // Provider<AuthenService>(
  //   create: (_) => AuthenService(),
  //   dispose: (_, authService) => authService.dispose(),
  // ),
  // Provider<BusinessService>(
  //   create: (_) => BusinessService(),
  //   dispose: (_, businessService) => businessService.dispose(),
  // ),
];

List<SingleChildCloneableWidget> dependentProviders = [
  // ChangeNotifierProxyProvider<BusinessService, SliderNotifier>(
  //   create: (_) => null,
  //   update: (_, businessService, __) {
  //     return SliderNotifier(businessService);
  //   },
  // ),
];
