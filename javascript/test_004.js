var x = 6;
var y = 423;
var answer = [];

function _isValid(number) {
  return x <= number && number <= y;
}

function _xx() {
  _xx();
}

var result = answer.length == 0 ? -1 : answer;

function _make5And0(length) {
  // 2 >> 00, 05, 50, 55
}

console.log(Math.pow(2, 4));
console.log(_xx(4)); // 2, 4
console.log(_xx(5)); // 1, 3, 5

function _xx(number) {
  var result = 0;
  if (number % 2 == 0) {
    // number이하 짝수 제곱의합
    for (let i = 1; i <= number; i++) {
      if (i % 2 != 0) {
        continue;
      }
      result += Math.pow(i, 2);
    }
  } else {
    // number이하 홀수 합
    for (let i = 1; i <= number; i++) {
      if (i % 2 == 0) {
        continue;
      }
      result += i;
    }
  }
  return result;
}
