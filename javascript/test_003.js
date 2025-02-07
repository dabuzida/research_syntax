var _result = "";
var str1 = "wxyz";
var str2 = "pqrs";

for (let i = 0; i < str1.length; i++) {
  _result += str1[i];
  _result += str2[i];
}

// console.log(result);
[...str1].map((x, idx) => console.log(idx));
[...str1].map((x, idx) => x + str2[idx]).join("");

var list = ["a", "b", "c"];
var _result = list.reduce((x, y) => x + y);
console.log(_result);

function solution(my_string, k) {
  var answer = "";
  for (let i = 0; i < k; i++) {
    answer += my_string;
  }
  return answer;
}

var list2 = [1, 2, 3, 4, 5];

// console.log(Number("05505"));
console.log(list2.sort((x, y) => -1));

// 6 423

// 5
// 50 55
// 500 505 550 555
