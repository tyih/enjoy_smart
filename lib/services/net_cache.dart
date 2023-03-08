import "dart:collection";
import 'package:dio/dio.dart';

import '../common/global.dart';

class CacheObject {
  Response response;
  int timeStamp;

  CacheObject(this.response)
      : timeStamp = DateTime.now().millisecondsSinceEpoch;

  @override
  bool operator ==(other) {
    return response.hashCode == other.hashCode;
  }

  @override
  int get hashCode => response.realUri.hashCode;
}

class NetCache extends Interceptor {
  var cache = LinkedHashMap<String, CacheObject>();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // if (!Global.profile.cache.enable) { // 是否开启缓存
    //   return handler.next(options);
    // }

    // refresh标记是否是"下拉刷新"
    bool refresh = options.extra['refresh'] == true;
    if (refresh) { // 如果下拉刷新
      if (options.extra['list'] == true) {
        
      } else {
        
      }
    }
    super.onRequest(options, handler);
  }
}
