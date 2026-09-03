function solution(date1, date2) {
  let a = date1.join("");
  let b = date2.join("");

  return a > b ? 0 : 1;
}

console.log(solution([2021, 12, 28], [2021, 12, 29]));
