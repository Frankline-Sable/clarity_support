import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'clarity_support_platform_interface.dart';

/// An implementation of [ClaritySupportPlatform] that uses method channels.
class MethodChannelClaritySupport extends ClaritySupportPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('clarity_support');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
