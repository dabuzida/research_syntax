enum AckError {
  error('AckErrorError', 'error'), // 처리된 에러. 나중에 재시도
  unauthorized('AckErrorUnauthorized', 'unauthorized'), // 인증 실패
  duplicate('AckErrorDuplicate', 'duplicate', name: '@@'), // 중복
  not_found('AckErrorNotFound', 'not_found'), // 못찾음
  invalid('AckErrorInvalid', 'invalid'), // 값 에러
  server_error('AckErrorServerError', 'server_error'), // 서버 미처리 에러
  over_limit('AckErrorOverLimit', 'over_limit'), // 초과
  expired('AckErrorExpired', 'expired'), // 유효기간 만료
  insufficient('AckErrorInsufficient', 'insufficient'), // (잔액)부족
  forbidden('AckErrorForbidden', 'forbidden'), // 인증은 했으나 권한 없음
  unknown('AckErrorUnknown', 'unknown'), // 알 수 없음. 위에 해당되는게 없을때
  ;

  const AckError(this.translationKey, this.serverValue, {this.name = '##'});

  final String translationKey;
  final String serverValue;
  final String name;

  static AckError make(String errorString) {
    for (final AckError ackError in AckError.values) {
      if (ackError.serverValue == errorString.toLowerCase()) {
        return ackError;
      }
    }

    return AckError.unknown;
  }
}

void main() {
  AckError ww = AckError.duplicate;
  print(ww.name);
}
