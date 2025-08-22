enum ManagerPurpose {
  general_score_based(
    customerBirthdayTypeInput: true,
    dashboard: true,
    settingsDocumentUpload: false,
    settingsIncomingWebhook: false,
    settingsWebhook: false,
    c99483: false,
    kiosk: false,
  ),
  general_cognitive_age(
    customerBirthdayTypeInput: false,
    dashboard: false,
    settingsDocumentUpload: true,
    settingsIncomingWebhook: true,
    settingsWebhook: true,
    c99483: false,
    kiosk: false,
  ),
  general_medical(
    customerBirthdayTypeInput: false,
    dashboard: false,
    settingsDocumentUpload: false,
    settingsIncomingWebhook: false,
    settingsWebhook: false,
    c99483: true,
    kiosk: true,
  ),
  medical_kor_medical(
    customerBirthdayTypeInput: false,
    dashboard: false,
    settingsDocumentUpload: false,
    settingsIncomingWebhook: false,
    settingsWebhook: false,
    c99483: false,
    kiosk: false,
  ),
  ;

  const ManagerPurpose({
    required this.customerBirthdayTypeInput,
    required this.dashboard,
    required this.settingsDocumentUpload,
    required this.settingsIncomingWebhook,
    required this.settingsWebhook,
    required this.c99483,
    required this.kiosk,
  });

  final bool customerBirthdayTypeInput;
  final bool dashboard;
  final bool settingsDocumentUpload;
  final bool settingsIncomingWebhook;
  final bool settingsWebhook;
  final bool c99483;
  final bool kiosk;
}

void main() {
  //
}
