import 'package:flutter_test/flutter_test.dart';
import 'package:clarity_support/clarity_support.dart';
import 'package:clarity_support/clarity_support_platform_interface.dart';
import 'package:clarity_support/clarity_support_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockClaritySupportPlatform
    with MockPlatformInterfaceMixin
    implements ClaritySupportPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future init({required String projectID}) {
    // TODO: implement init
    throw UnimplementedError();
  }
}

void main() {
  final ClaritySupportPlatform initialPlatform =
      ClaritySupportPlatform.instance;

  test('$MethodChannelClaritySupport is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelClaritySupport>());
  });

  test('getPlatformVersion', () async {
    ClaritySupport claritySupportPlugin = ClaritySupport();
    MockClaritySupportPlatform fakePlatform = MockClaritySupportPlatform();
    ClaritySupportPlatform.instance = fakePlatform;

    expect(await claritySupportPlugin.getPlatformVersion(), '42');
  });
}
