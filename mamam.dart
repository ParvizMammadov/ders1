import 'dart:io';

void main() {
  Map<int, String> map1 = {1: 'a'};
  Map<int, String> map2 = {1: 'a'};

  bool isMapsEqualByKeys(Map map1, Map map2) {
    if (map1.length != map2.length) {
      return false;
    }
    print('no');
    for (var key in map1.keys) {
      if (!map2.containsKey(key)) {
        return false;
      }
      print('yes');
    }
    return true;
  }
}
