function ss() {
  var x = [1, 2, 3];
  var y = [...x];

  console.log(x);
  console.log(y);

  x.push(4);
  y.push(5);
  console.log(x);
  console.log(y);
}

function printSpecialCharacter() {
  // 기호 출력: !@#$%^&*(\'"<>?:;
  let str2 = "!@#$%^&*(\\'\"<>?:;";
  let str3 = `!@#$%^&*(\\'"<>?:;`;

  console.log(str2);
  console.log(str3);
}

function interpolation() {
  // interpolation
  // `(backtick) 과 ${} 사용
  var my_var = 100;
  console.log(`abc ${my_var} ddd`);
}
function mapPracticalUse() {
  // map의 활용
  const operations = {
    ">=": (x, y) => x >= y,
    "<=": (x, y) => x <= y,
    ">!": (x, y) => x > y,
    "<!": (x, y) => x < y,
  };
}

function solution(ineq, eq, n, m) {
  const op = operations[ineq + eq];
  return Number(op(n, m));
}
var result_map = solution(">", "=", 33, 11);
console.log(result_map);

function arraFrom() {
  // Array.from
  var x_arrayfrom_1 = Array.from("mountain");
  var x_arrayfrom_2 = Array.from(
    "mountain",
    (element, index) => element + index
  );
  var x_arrayfrom_3 = Array.from({ length: 5 }, (_, i) => i + 1);
  console.log(x_arrayfrom_1);
  console.log(x_arrayfrom_2);
  console.log(x_arrayfrom_3);
}
