console.log(solution("baconlettucetomato"));
// console.log(Array.from("baconlettucetomato"));

// console.log(solution("cabab"));
function solution(myStr) {
  // a, b, c로 split
  // 비면 ["EMPTY"] 리턴
  // [''] 이런거 없게
  // let list = [];
  // let result = Array.from(myStr).reduce(function (prev, curr, i, array) {
  //   if(i ==0){

  //   }

  // },0);

  // return result.length == 0 ? ["EMPTY"] : result;

  // ===============================================
  let xx = Array.from(myStr)
    .map(function (v) {
      if (v == "a" || v == "b" || v == "c") {
        return " ";
      }
      return v;
    })
    .join("")
    .split(" ")
    .filter((v) => v.length > 0);

  return xx.length == 0 ? ["EMPTY"] : xx;
}

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
