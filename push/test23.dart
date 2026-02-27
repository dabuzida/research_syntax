import 'dart:math';

void main() {
  List<String> inputs = [
    'is_still_driving',
    'is_good_driver',
    'any_accidents',
    'concerns_about_passenger',
    'take_any_medications',
    'how_is_with_medications',
    'confidence_in_taking_as_prescribed',
    'ever_notice_missing_medications',
    'comfortable_leaving_home_alone',
    'any_burned_pans',
    'concerns_about_cooking_or_eating_habits',
    'any_smoke_detectors',
    'concernts_about_harming',
    'ever_come_home_late',
    'ever_try_to_leave_to_home',
    'ever_lost',
    'firearams_in_home',
    'unsteady_on_feet',
    'fallen',
    'limited_outings',
    'thought_about_no_longer_living_alone',
    'concernts_about_living_alone',
    'confident_eating_regulary',
    'confident_getting_to_appointments',
    'confident_managing_finance',
    'confident_shop_clean_meal',
    'do_you_have_support_services_that_comes_into_home',
  ];

  List<String> camelCaseList = inputs.map((str) {
    List<String> parts = str.split('_');

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
