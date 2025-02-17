function solution(a, b, c, d) {
  var list = [a, b, c, d];
  var map = new Map();
  list.forEach(function (e) {
    if (map.get(e) == undefined) {
      map.set(e, 1);
    } else {
      map.set(e, map.get(e) + 1);
    }
  });

  console.log(map);

  var answer;

  switch (map.size) {
    case 1:
      answer = 1111 * a;
      break;
    case 2:
      var my_entry = map.entries();
      var entry1 = my_entry.next().value;
      var entry2 = my_entry.next().value; // number: count

      console.log(entry1, entry2);

      if (entry1[1] == entry2[1]) {
        answer = (entry1[0] + entry2[0]) * Math.abs(entry1[0] - entry2[0]);
      } else if (entry1[1] == 3) {
        answer = Math.pow(10 * entry1[0] + entry2[0], 2);
      } else {
        answer = Math.pow(10 * entry2[0] + entry1[0], 2);
      }

      break;
    case 3:
      answer = 1;
      for (const element of map.entries()) {
        if (element[1] == 1) {
          answer *= element[0];
        }
      }

      break;
    case 4:
      answer = Math.min(...list);
      break;
  }

  return answer;
}
var ss = solution(2, 2, 4, 4);
// var ss = solution(2, 5, 6, 2);
// var ss = solution(1, 3, 6, 1);
// var ss = solution(1, 1, 1, 1);
console.log(ss);
