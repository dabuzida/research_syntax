function solution(num_list) {
  // num_list.map;

  let s = Array.from("asdf")
    .map((_, i) => _)
    .sort();
  console.log(s);
}
// console.log(solution([12, 4, 15, 46, 38, -2, 15]));
// console.log(null || true);

function solution2(my_string, is_suffix) {
  const array = [];
  for (let i = 0; i < my_string.length; i++) {
    array.push(my_string.slice(i));
  }
  return array.includes(is_suffix);
  //   return my_string
  //     .reduce((prev, curr, idx, array) => prev.push(), [])
  //     .includes(is_suffix);
}

// console.log(solution2("banana", "ana"));
// const arr = Array(5, 1);
// console.log(arr);

// function solution3(my_string, is_prefix) {
//   const array = [];
//   for (let i = 0; i < my_string.length; i++) {
//     array.push(my_string.slice(0, i + 1));
//   }
//   console.log(array);
//   return array.includes(is_prefix) ? 1 : 0;
// }
// console.log(typeof +true);
// console.log(typeof +false);

console.log(solution9([1, 2, 1, 2, 1, 10, 2, 1]));
function solution9(arr) {
  let firstIndex = arr.indexOf(2);
  let lastIndex = arr.lastIndexOf(2);
  if (firstIndex == -1 && lastIndex == -1) {
    return -1;
  }

  if (firstIndex == -1 || lastIndex == -1) {
    return [2];
  }
  return arr.slice(firstIndex, lastIndex + 1);
}
