// set, list 2개 구하고 set에서 한개를 빼서 list에 몇개있는지 확인

// var ss = new Set([1, 2, 3]);
// console.log(ss);
// var q = ss.values();
// var e = Array.from(ss);
// var d = ss.entries();
// console.log(e);
// console.log(q);
// console.log(d);

var ss = { 1: 1001, asdf: 3, gw4g: 23, t24saf: 333 };
console.log(ss.size);
// console.log(ss.get(1));

// console.log(ss["asdf"]);
console.log(Boolean(0));

// 4개주사위
// -한종류: 1111*p
// -2종류 3개동일p 1개다름q: (10p + q)^2
// -2종류 2개씩 같음: (p+q) * |p-q|
// -3종류 2개 같고p 서로 다른 2개q,r: q*r
// -4종류. p>q>r>s 면  s
