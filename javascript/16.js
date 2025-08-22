// console.log(false * 4);
// console.log(true * 4);

// console.log(eval("2 + 5"));
// console.log(typeof "2");
// console.log(+true);
// console.log(+false);
// const ops = {
//   "+": (a, b) => a + b,
//   "-": (a, b) => a - b,
//   "*": (a, b) => a * b,
// };

// // console.log(solution("40000 * 40000"));
// function solution(binomial) {
//   const [a, op, b] = binomial.split(" ");
//   console.log(a);
//   console.log(op);
//   console.log(b);
//   return ops[op](+a, +b);
// }

// const aa = [1, 2, 3, 3, 4, 4, 4, 1, 1, 1];
// let x = Array.from(4231);
// let x2 = aa.fill(0, 2, 4);
// let x3 = Array(5);
// console.log(x);
// console.log(x2);
// console.log(x3);

let makeArraySize = Array(12);
makeArraySize.fill(9); // fill(채우려는 숫자, start id, end id)
// ww.fill(7, 5, 11);
// console.log(ww);
// console.log(solution2([5, 1, 4]));
function solution2(arr) {
  return arr.reduce((prev, curr) => [...prev, ...Array(curr).fill(curr)], []);
}

//
console.log(solution([3, 2, 4, 1, 3], [true, false, true, false, false]));
function solution(arr, flag) {
  var answer = [];

  flag.reduce(function (prev, curr, i) {
    if (curr) {
      return [...prev, ...Array(arr[i] * 2).fill(arr[i])];
    }
    return prev;
  }, []);
  return answer;
}
