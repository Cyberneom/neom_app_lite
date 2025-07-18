import 'package:get/get.dart';


class RootBinding extends Binding {

  @override
  List<Bind> dependencies() {
    return [
      // Bind.put(UserController(), permanent: true),
      // Bind.put(LoginController(), permanent: true),
      // Bind.lazyPut<LoginService>(() => Get.find<LoginController>(), fenix: true),
      //
      // Bind.lazyPut(() => HomeController(), fenix: true),
      // Bind.lazyPut<HomeService>(() => Get.find<HomeController>(), fenix: true),
      //
      // Bind.lazyPut(() => TimelineController(), fenix: true),
      // Bind.lazyPut<TimelineService>(() => Get.find<TimelineController>(), fenix: true),
      //
      // Bind.lazyPut(() => AudioPlayerInvoker()),
      // Bind.lazyPut(() => MiniPlayerController()),
      // Bind.lazyPut(() => AudioPlayerHomeController()),
      //
      // Bind.lazyPut<EventDetailsService?>(() => Get.isRegistered<EventDetailsController>() ? Get.find<EventDetailsController>() : null, fenix: true),
      //
      // Bind.lazyPut(() => ItemlistController(), fenix: true),
      // Bind.lazyPut<ItemlistService>(() => Get.find<ItemlistController>(), fenix: true),
      //
      // Bind.lazyPut(() => PostUploadController(), fenix: true),
      // Bind.lazyPut<PostUploadService>(() => Get.find<PostUploadController>(), fenix: true),
      //
      // Bind.lazyPut(() => AppCameraController(), fenix: true),
      // Bind.lazyPut<AppCameraService>(() => Get.put(AppCameraController()), fenix: true),
      //
      // Bind.lazyPut(() => SearchController(), fenix: true),
      // Bind.lazyPut<SearchService>(() => Get.find<AppSearchController>(), fenix: true),
      //
      // Bind.lazyPut<AnalyticsRepository>(() => AnalyticsFirestore()),
      // Bind.lazyPut<JobRepository>(() => JobFirestore()),
      //
      // Bind.lazyPut(() => ImageEditorController(), fenix: true),
      // Bind.lazyPut<ImageEditorService>(() => Get.find<ImageEditorController>(), fenix: true),
      //
      // Bind.lazyPut(() => MediaUploadController(), fenix: true),
      // Bind.lazyPut<MediaUploadService>(() => Get.find<MediaUploadController>(), fenix: true),
      //
      // Bind.lazyPut(() => MediaPlayerController(), fenix: true),
      // Bind.lazyPut<MediaPlayerService>(() => Get.find<MediaPlayerController>(), fenix: true),
      //
      // Bind.lazyPut(() => PushNotificationInvoker(), fenix: true),
      // Bind.lazyPut<NotificationService>(() => Get.find<PushNotificationInvoker>(), fenix: true),
      //
      // Bind.lazyPut(() => ProfileController(), fenix: true),
      // Bind.lazyPut<ProfileService>(() => Get.find<ProfileController>(), fenix: true),
      //
      // Bind.lazyPut(() => BankController(), fenix: true),
      // Bind.lazyPut<BankService>(() => Get.find<BankController>(), fenix: true),
      //
      // Bind.lazyPut(() => BandController(), fenix: true),
      // Bind.lazyPut<BandService>(() => Get.find<BandController>(), fenix: true),
      //
      // Bind.lazyPut(() => WooMediaAPI(), fenix: true),
      // Bind.lazyPut<WooMediaService>(() => Get.find<WooMediaAPI>(), fenix: true),

    ];
  }

}