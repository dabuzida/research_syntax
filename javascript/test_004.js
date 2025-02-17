var givenNumber = [3, 1, 2, 4];
// var result = givenNumber.reduce((prev, curr, i, array) => prev + curr);
var result = givenNumber.reduce(function (prev, curr, i, array) {
  console.log(prev, curr, i, array);
  return prev + curr;
});
console.log(result);
[1].includes;
// var result = givenNumber.filter((prev, curr, i, array) => prev + curr);
// console.log(result);
