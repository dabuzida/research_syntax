import 'dart:math';

void main() {
  List<String> inputs = [
    'admin/bogunso/package/template/list',
    'admin/bogunso/package/template/count',
    'admin/bogunso/package/template/get',
    'admin/bogunso/package/instance/list',
    'admin/bogunso/package/instance/count',
    'admin/bogunso/package/instance/get',
    'admin/bogunso/survey/form/list',
    'admin/bogunso/survey/form/count',
    'admin/bogunso/survey/form/get',
    'admin/bogunso/survey/response/list',
    'admin/bogunso/survey/response/count',
    'admin/bogunso/survey/response/get',
    'admin/bogunso/end_of_life_checklist/list',
    'admin/bogunso/end_of_life_checklist/count',
    'admin/bogunso/end_of_life_checklist/get',
    'admin/bogunso/phq2/list',
    'admin/bogunso/phq2/count',
    'admin/bogunso/phq2/get',
    'admin/bogunso/phq9/list',
    'admin/bogunso/phq9/count',
    'admin/bogunso/phq9/get',
    'admin/bogunso/safety_assessment_caregiver/list',
    'admin/bogunso/safety_assessment_caregiver/count',
    'admin/bogunso/safety_assessment_caregiver/get',
    'admin/bogunso/caregiver_profile/list',
    'admin/bogunso/caregiver_profile/count',
    'admin/bogunso/caregiver_profile/get',
    'admin/bogunso/iadl/list',
    'admin/bogunso/iadl/count',
    'admin/bogunso/iadl/get',
    'admin/bogunso/safety_assessment/list',
    'admin/bogunso/safety_assessment/count',
    'admin/bogunso/safety_assessment/get',
  ];

  List<String> camelCaseList = inputs.map((str) {
    List<String> parts = str.split('/');

    return parts.asMap().entries.map((entry) {
      int index = entry.key;
      String word = entry.value;

      if (index == 0) {
        // 첫 번째 단어는 그대로 소문자
        return word.toLowerCase();
      } else {
        // 두 번째 단어부터는 첫 글자만 대문자로
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      }
    }).join('');
  }).toList();
  for (var element in camelCaseList) {
    print(element);
  }
}
