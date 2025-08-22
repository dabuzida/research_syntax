function solution(code) {
  const list = code.split("");
  var mode = true;
  let result = list.reduce(function (accumulator, currentValue, i) {
    if (currentValue == "1") {
      mode = !mode;
    } else {
      if (mode && i % 2 == 0) {
        accumulator += currentValue;
      } else if (mode && i % 2 != 0) {
        accumulator += currentValue;
      }
    }

    return accumulator;
  }, "");

  return result.length == 0 ? "EMPTY" : result;
}

console.log(solution("abc1abc1abc"));
