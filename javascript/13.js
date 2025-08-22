// 배열에서 index의 중복없이 원소 2개 추출

const origin = [1, 2, 3, 4, 5];
const answer = [];

for (let i = 0; i < origin.length - 1; i++) {
  let newOrigin = origin.filter((e, id) => id > i);
  newOrigin.forEach((e) => answer.push([origin[i], e]));
}

console.log(answer.length, answer);
 