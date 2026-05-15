// 1. 클래스 정의
import 'dart:convert';

class Log {
  final String id;
  // 정해지지 않은 "나머지" 데이터들을 담을 바구니 (Map)
  final Map<String, dynamic> extra;

  Log({required this.id, required this.extra});

  // JSON 데이터를 클래스로 변환하는 로직
  factory Log.fromJson(Map<String, dynamic> json) {
    // 1. 확실히 아는 값(_id)을 먼저 뺍니다.
    String id = json['_id'];

    // 2. 전체 데이터에서 이미 알고 있는 값(_id)만 지웁니다.
    // 그러면 빨간색 표시했던 '나머지 모든 것'들만 남게 됩니다.
    Map<String, dynamic> remainingData = Map<String, dynamic>.from(json);
    remainingData.remove('_id');

    return Log(
      id: id,
      extra: remainingData, // 나머지 데이터들을 통째로 저장
    );
  }
}

void main() {
  // 서버에서 아래와 같은 JSON이 왔다고 가정해봅시다.
  // '_id' 외에 'somethingNew', 'userTag' 같은 듣도 보도 못한 키가 섞여 있습니다.
  String jsonString = '''
  {
    "_id": "log_123",
    "somethingNew": "이건 클래스에 정의 안 된 값이야",
    "userTag": 999
  }
  ''';

  Map<String, dynamic> userMap = jsonDecode(jsonString);
  Log myLog = Log.fromJson(userMap);

  print("확실한 아이디: ${myLog.id}"); // 출력: log_123

  // 빨간색 표시 부분([key: string]: any)에 해당하는 데이터 접근법
  print("정의되지 않은 데이터1: ${myLog.extra['somethingNew']}");
  print("정의되지 않은 데이터2: ${myLog.extra['userTag']}");
}
