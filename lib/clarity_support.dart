
import 'clarity_support_platform_interface.dart';

class ClaritySupport {
  Future<String?> getPlatformVersion() {
    return ClaritySupportPlatform.instance.getPlatformVersion();
  }
  Future init({required String projectID}){
    return ClaritySupportPlatform.instance.init(projectID: projectID);
  }
}
