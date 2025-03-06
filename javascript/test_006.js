function Counter() {
  // 카운트를 유지하기 위한 자유 변수
  var counter = 0; // 변수
  this.counter2 = 1; // 함수 Counter에 바인딩된 프로퍼티

  // 클로저
  this.increase = function () {
    return ++counter;
  };

  // 클로저
  this.decrease = function () {
    return --counter;
  };
}

const my_counter = new Counter();

console.log(my_counter.increase()); // 1
console.log(my_counter.decrease()); // 0
console.log(my_counter.counter); // 프로퍼티가 아니라 접근 불가
console.log(my_counter.counter2); //
