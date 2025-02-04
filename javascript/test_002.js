var str = "abc";
const strList = str.split("");
console.log("x:", strList);

// for (let i = 0; i < strList.length; i++) {
//   console.log(strList[i]);
// }

console.log("x2:", [...str]);
[...str].forEach((c) => console.log(c));

for (const element of str) {
  console.log(element);
}

for (const key in str) {
  console.log(key);
}

//
// var student = {
//   name: "Lee",
//   score: 90,
// };

// console.dir(student);
// console.log(student);
