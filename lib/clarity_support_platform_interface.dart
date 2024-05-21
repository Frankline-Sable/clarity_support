import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'clarity_support_method_channel.dart';

abstract class ClaritySupportPlatform extends PlatformInterface {
  /// Constructs a ClaritySupportPlatform.
  ClaritySupportPlatform() : super(token: _token);

  static final Object _token = Object();

  static ClaritySupportPlatform _instance = MethodChannelClaritySupport();

  /// The default instance of [ClaritySupportPlatform] to use.
  ///
  /// Defaults to [MethodChannelClaritySupport].
  static ClaritySupportPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ClaritySupportPlatform] when
  /// they register themselves.
  static set instance(ClaritySupportPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future init({required String projectID}) {
    throw UnimplementedError('clarity initialisation has not been implemented.');
  }
}
