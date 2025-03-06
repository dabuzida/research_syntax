// function solution(arr, queries) {
//   var answer = [];
//   return queries.reduce(((acc,cur)=>{}),[]);
// }

function solution(arr, queries) {
  return queries.reduce((acc, cur) => {
    const numList = arr.filter(
      (e, i) => cur[0] <= i && i <= cur[1] && cur[2] < e
    );

    let result = Math.min(...numList);
    acc.push(result == Infinity ? -1 : result);

    return acc;
  }, []);
}

// 수열과 구간 쿼리2: map 사용법
function solution2(arr, queries) {
  return queries.map(
    ([s, e, k]) =>
      arr
        .slice(s, e + 1)
        .filter((n) => n > k)
        .sort((a, b) => a - b)[0] || -1
  );
}

console.log(
  solution(
    [0, 1, 2, 4, 3],
    [
      [0, 4, 2],
      [0, 3, 2],
      [0, 2, 2],
    ]
  )
);
