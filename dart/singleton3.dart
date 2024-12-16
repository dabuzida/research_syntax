void main() {
  //
  final ee = DiagnosisModel._internal();
  final ee2 = DiagnosisModel();
  print(ee.hashCode);
  print(ee2.hashCode);
}

class DiagnosisModel {
  factory DiagnosisModel() => _instance;
  DiagnosisModel._internal(); // TODO : 클래스 내에서만 사용가능한 생성자가 맞나??
  DiagnosisModel.internal(); // TODO : 클래스 내에서만 사용가능한 생성자가 맞나??
  static final DiagnosisModel _instance = DiagnosisModel._internal();
}
