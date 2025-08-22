let list = ["a", "bc", "d", "efg", "hi"];
let x = {};
console.log(x);

for (const element of list) {
  // console.log(element);
  let value = x[element.length];
  if (value == undefined) {
    x[element.length] = 1;
  } else {
    x[element.length] = value + 1;
  }
}

let z = list.reduce((prev, curr) => {
  let value = prev[curr.length];
  if (value == undefined) {
    prev[curr.length] = 1;
  } else {
    prev[curr.length] = value + 1;
  }

  return prev;
}, {});

let max = 0;
for (const element in z) {
  if (max < z[element]) {
    max = z[element];
  }
}

console.log(max);
// console.log(Math.max(...x));

// console.log(
//   ["a", "b"].map(function (v) {
//     for (let i = 0; i < 5; i++) {
//       v += 4;
//     }
//     return v;
//   })
// );

// console.log(+true); // 1
// console.log(+false); // 0
// console.log(Boolean(3 % 2));
// console.log(Boolean(2 % 2));

// let x = new Map();
// x.set(300, 56);

// console.log(true || "asdf");
// console.log(true && "asdf");
// console.log("asdf" || true);
// console.log("asdf" && true);
// console.log("====================");
// console.log(false || "qwer");
// console.log(false && "qwer");
// console.log("qwer" || false);
// console.log("qwer" && false);

// console.log(true && 1);
// console.log(2 && true);
// console.log(-1 && 3);
// console.log(4 && -1);
// // 한개가 -1이라면, 비교없이 반대쪽 수의 법칙대로
// // 둘다 -1이면 []
// //
