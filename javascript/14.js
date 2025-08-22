// // 배열에서 index의 중복없이 원소 3개 추출

// // const origin = [1, 2, 3, 4];
// const origin = [1, 2, 3, 4, 5];
// const answer = [];
// // for (let i = 0; i < origin.length - 1; i++) {
// //   let newOrigin = origin.filter((e, id) => id > i);
// //   newOrigin.forEach((e) => answer.push([origin[i], e]));
// // }
// const elementCount = 3;
// function extractThreeElement(restOrigin, result) {
//   if (result.length == elementCount - 1) {
//     console.log(1);
//     restOrigin.forEach((e) => answer.push([...result, e]));
//     return;
//   }

//   for (let i = 0; i < restOrigin.length - (elementCount - 1); i++) {
//     let newOrigin = restOrigin.filter((e, id) => id > i);
//     console.log(newOrigin);
//     result.push[restOrigin[i]];
//     extractThreeElement(newOrigin, result);

//     // result.pop(); // 백트래킹
//   }
// }

// extractThreeElement(origin, []);
// console.log(answer.length, ":", answer);
