let count = 0;
let tempArray = [];

const words = ["spray", "elite", "exuberant", "destruction", "present"];
const numbers = [-3, 0, 1, 2, 3];
// const numbers = [-3, -2, -1, 0, 1, 2, 3];

function xx(givenArray, resultArray) {
  if (resultArray.length == 3) {
    // console.log(">>", resultArray);
    if (resultArray.reduce((acc, curr) => acc + curr, 0) == 0) count++;
    tempArray.length = 0;
    return;
  }

  let givenArray2 = [];
  let resultArray2 = [];
  givenArray.forEach((e) => givenArray2.push(e));
  resultArray.forEach((e) => resultArray2.push(e));

  for (let i = 0; i < givenArray.length; i++) {
    resultArray2.push(givenArray[i]);
    // givenArray에서 i번째 원소를 빼고 newGivenArray를 만든다
    let newGivenArray = givenArray2.filter((e, id) => id != i);
    console.log("aa", givenArray2);
    console.log("bb", newGivenArray);
    console.log("================cc", resultArray2);
    
    if (resultArray2.length <= 3) {
      xx(newGivenArray, resultArray2);
    } else {
      return;
    }
  }
}
console.log("=========================");
xx(numbers, tempArray);
console.log("count:", count);
