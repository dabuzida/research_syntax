function solution(board, k) {
  let result = 0;
  for (i = 0; i < board.length; i++) {
    for (j = 0; j < board[i].length; j++) {
      if (i + j <= k) {
        result += board[i][j];
      }
    }
  }
  return result;
}

console.log(
  solution(
    [
      [0, 1, 2],
      [1, 2, 3],
      [2, 3, 4],
      [3, 4, 5],
    ],
    2
  )
);
