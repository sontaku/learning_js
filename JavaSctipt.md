# JavaSctipt

> java와 javaScript는 완전히 다른 언어이다.
>
> 마치 인도와 인도네시아처럼..

- 모바일 app 개발
  - facebook에서 리액트 라이브러리를 만들고, 기기 자체에 접할 수 있도록 네이티브 기능을 붙여 개발한 프레임워크가 리액트 네이티브이다.
  - 모바일 app의 종류
    - 네이티브 앱 : 성능은 빠르지만 소요 작업시간이 길다.
      - 아이폰 : Objective-C
      - 안드로이드 : 자바 프로그래밍
    - 모바일 웹 앱 : 웹사이트 화면을 app을 감싸기만해서 보여줌
    - 하이브리드 앱
      - 쿠팡, 위메프
    - **리액트 네이티브**
      - 하나의 프로그램을 만들어서 여러 프로그램으로 만들어주는 엔진 또는 프레임워크
      - 페이스북, 인스타그램, 핀터레스트, 디스코드, 스카이프 등
- 데스크탑 ap 개발
- DB 관리





## JavaScript의 종류

- 1990년대 중반부터 자바스크립트가 많은 곳에서 사용되자 유럽컴퓨터제조협회(ECMA)는 자바스크립트를 ECMAScript라는 이름으로 표준화
- 2000년대 중반부터 자바스크립트가 많은 곳에서 널리 사용되며, 자바스크립트의 문법이 급속도로 발전

ECMA ES6 = ECMA 2015는 같은 버전을 뜻한다.





## 기본 문법

```javascript
<head>
    <script>
        let a = 10, b = 20;
    </script>
</head>
<body>
    // 예전 방식
	// alert("a+b=" +(a+b))
        
	// 요즘 방식
	alert(`${a}+${b} = ${a+b}`)
</body>
```



### tip.

> ; (세미콜론)
>
> JavaScript에서의 세미콜론은 기본적으로 쓰이지 않는다.
>
> 쓰이는 경우는 여러개를 한 줄에 쓸 때 사용한다.
>
> 하지만, 이것도 역시 여러 줄로 나누어 쓰면 세미콜론을 작성할 필요가 없다.



## 오류 확인법

> 자바는 강력한 타입 기반 언어이다. 
>
> 정의할때마다 데이터 타입을 정의해야 한다. 
>
> 하지만 자바스크립트는 타입 기반 언어가 아니다. 
>
> 타입을 정의하지 않고 선언하여 사용하며, 선언하지 않은 변수를 활용시 오류가 난다.

```javascript
<script>
	let a = 10, b = 20;
	alert(`${c}`) // 에러
	let c = a + b
    alert(`${c}`) // 확인 가능
</script>
```

- 언어 정의시 타입을 쓰지 않으며, gui 기반으로 사용된다.

  즉, 글자 기반으로 변수를 선언할 수 있다.

- 변수의 타입은 정의하지만, 해당 타입에 매핑은 불가하다.



### 문자열 자료형

```javascript
'Hello World' // "Hello World"
"Hello World" // "Hello World"
```

- 선언시 동일한 값을 보유하지만 프로젝트 내에선 하나의 방법을 사용하는것을 권장한다.



```javascript
"abc\!de" // "abc!de"
```

- 특수문자를 문자열에 포함시 해당 특수문자 앞에 이스케이프 문자(백 슬래시)를 추가한다.



## for문

### 문법

```javascript
a = "Hello"

for(i = 0; i < a.length; i++) {
    console.log(`${i} = ${a}`)
}

for(i = 0; i < a.length; i++) {
    console.log(`${i} = ${a[i]}`)
}
```

### 결과 창

```javascript
0 = H
1 = e
2 = l
3 = l
4 = o
0 = Hello
1 = Hello
2 = Hello
3 = Hello
4 = Hello
```



#### for in, for of

```javascript
let foods = ["탕수육", "짜장", "짬뽕"]

// for in
for( let i in foods ) {
	// 인덱스로 넘겨받음
    console.log("for in " + foods[i])
}

// for of
for( let f of foods ) {
	// 값으로 넘겨받음
    console.log("for of " + f)
}

> 탕수육
> 짜장
> 짬뽕
```

- for of는 순서를 알 수 없다.
  - 인덱스를 거치지 않기때문에 효율성 측면에서는 더 좋다.
  - 배열 하나로 for문 사용시 유리하다
- for in은 인덱스로 넘겨받기 때문에 몇번째 값인지 알 수 있다.
  - 여러 개의 같은 형태의 배열 비교(관리)시 유리하다.



#### forEach

```javascript
function food_fn(value, index, array) {
	console.log("forEach " + value + " : " + index )
}
foods.forEach(food_fn)

> forEach 탕수육 : 0
> forEach 짜장 : 1
> forEach 짬뽕 : 2
```







## 연산자

### 비교 연산자

```javascript
"20" == 20
// true
// 자동 형변환이 적용됐다 (String to int)
"20" === 20
// false
```

- '==' 의 경우 값이 같은지 비교한다.
- '==='은 값이 같은지, 데이터 타입이 같은지 2가지 조건을 비교한다.
- 보통 단순 값의 비교를 위해 '==' 을 많이 사용한다.



### 불 논리합/논리곱 연산자

- && : 논리곱 (양쪽이 모두 참이어야 참)
- || : 논리합 (양쪽이 모두 거짓이어야 거짓)



### 자료형 검사

- typeof 연산자

  ```javascript
  typeof('문자열')
  "string"
  typeof('273')
  "number"
  typeof('true')
  "boolean"
  ```

  



### ==, !=

```javascript
1 == "1" // true
false == "0" // true
"" == [] // true
0 == [] // true
```





## 상수와 변수

### 상수 constant

> '항상 같은 수'를 의미하며, 값에 이름을 한 번 붙이면 값을 수정할 수 없다.

```javascript
const pi = 3.141592
```



### 변수 let

```javascript
let 이름 = 값
```



### undefined 자료형

undefined는 값이 없는 자료형이다. 자바의 null과는 다른 의미를 갖고 있다.

- js는 기본적으로 실행한 라인의 반환 값을 출력하는 기능이 있다.
- 반환 할 값이 없으면 'undefined'를 출력한다.
- null은 값이 비어있음을 의미하여, undefined과는 의미가 갖지 않다.



## 자료형 변환

### 문자열 입력

```javascript
prompt(메시지 문자열, 기본입력 문자열)
```

- 위의 기본입력 문자열의 경우 html input태그의 placeholder와 같은 역할을 한다.



#### 문자열내 숫자 추출

```javascript
ans = prompt("태어난해를 입력하세요")
> "2021년2021"
parseInt(ans)
> 2021
```

- 문자열의 숫자로 시작할 경우 숫자로 이루어진 값만 가져온다
- 해당 문자열이 숫자가 아닌 글자로 시작될 경우 NaN



#### String to int

```javascript
100 + ""
> "100"

String(100)
> "100"
```



### [중요] 불 자료형 (boolean)

*false가 뜨는 5가지 경우* ★★★★★

- 0
- NaN
- '...' 또는 "..." : 빈 문자열
- null
- undefined





## if 조건문

```javascript
let r = Math.ceil(Math.random() * 100)
while (ans != r) {
	ans = prompt("1~100까지 사이 숫자를 입력해주세요.")
    if (ans == r) {
    	alert("정답!")
    } else if (ans > r) {
        alert("낮은 숫자를 입력하세요")
    } else if (ans < r) {
		alert("높은 숫자를 입력하세요")
    }
}
```



#### 삼항 연산자 버전

```javascript
let r = Math.ceil(Math.random() * 100)
while (ans != r) {
	ans = prompt("1~100까지 사이 숫자를 입력해주세요.")
           
    result = (ans == r) ? alert("정답!")
    	:(ans > r) ? alert("낮은 숫자를 입력하세요") 
    	: alert("높은 숫자를 입력하세요")
	if(ans == r) {
    	break
    }
}
```





## 반복문

#### 배열

> JavaScript의 배열은 가변길이의 자료 구조이다.



#### 배열에 값 추가

```javascript
function make_lotto() {
	let lotto = Math.ceil(Math.random() * 45)
    return lotto
}
lottoNums = [] // 빈 배열
lottoNums.push(make_lotto())
lottoNums.push(make_lotto())
lottoNums.push(make_lotto())
lottoNums.push(make_lotto())
lottoNums.push(make_lotto())
lottoNums.push(make_lotto())
console.log(lottoNums);
```



#### 배열의 값 삭제

```javascript
lottoNums.splice(2,1) // 2번 인덱스부터 1개 제거
```



#### 배열의 값으로 요소 제거

```javascript
const 인덱스 = 배열.indexof(요소)
배열.splice(인덱스, 1)
```

- 배열의 값 삭제에는 결국 splice()를 활용한다.



#### for 반복문과 배열

```javascript
const fluit = ['애플', '바나나', '포도']

for(const i in fluit) {
    console.log(`${i}번째 과일 : ${fluit[i]}`)
}

for(let i = 0; i < 반복횟수; i++) {
    문장
}
```

- for문 안의 변수 'i' 와 'let i' 의 차이는 전역 변수와 지역 변수의 차이로 자바의 형태와 같다.
- 하지만 자바와 달리 미리 선언한 전역 변수가 아니어도 for문 안에서 사용가능 하지만 아무데서나 접근이 가능하여 관리가 힘들어질 수 있다.





## 함수

### 익명함수

익명함수는 자바릐 람다 항수와 같은 성격이다.



### 선언적 함수

- 선언적 함수는 이름을 붙여 생성

  function 함수() {

  }

- 선언적 함수는 다음 코드와 같은 기능을 수행 (SEC)

  let 함수 = function( ) { };
  
- function의 함수 이름은 곧 변수명이 된다.

  JavaScript에서는 함수도 실행 가능한 *객체*이기 때문에 자동적으로 함수의 이름은 변수명이 된다.

  ```javascript
  function hello() {
  	return "hello"
  }
  
  a = hello
  ƒ hello() {
  	return "hello"
  }
  
  a()
  > "hello"
  ```

  



### 매개 변수와 리턴값

- 자바와 다른 점
  1. 기본 값이 있다.
  2. 오버로딩을 할 수 없다(js는 덮어 쓰는 방식)



### 나머지 매개변수

매개변수의 개수가 고정적이지 않은 함수를 ***가변 매개변수 함수***라고 부른다.

```javascript
function sample(...items) { // 여기서 ...items는 배열
	console.log(items)
}
// 호이스팅(hoisting)
sample(1,2,3)
sample(1,2,3,4,5,6)
```



#### 호이스팅(hoisting)

함수, 변수의 선언부를 맨 앞으로 이동.

선언부를 맨 앞으로 이동시키게 되면 컴파일과 똑같은 효과를 가진다. 그래서 자바스크립트는 기본적으로 블록 단위로 자바스크립트와 스크립트 사이를 먼저 읽는다. 읽어서 구조를 먼저 추출한 후 선언된 정보를 먼저 추출한다. 이것을 호이스팅이라한다.



```javascript
function sample(items) { 
	console.log(items)
}

sample(1,2,3)
sample(1,2,3,4,5,6)
> 1
> 1
```

'...'을 제거하니 첫번째 값만 불러온다.





#### 나머지 매개변수와 일반 매개변수 조합

나머지 매개변수는 이름 그대로 나머지이다. 

```javascript
function 함수 이름 { 매개변수, 매개변수,... 매개변수}
```



```javascript
function sample(a, b, ...c) { 
	console.log(a, b, c)
}

sample(1,2,3)
sample(1,2,3,4,5,6)
```

앞에서 부터 할당하며 남는 값은 맨끝의 'c'의 배열로 들어간다.



#### 전개 연산자





### 기본 매개변수

> JavaScript는 오버로딩을 지원하지 않기 때문에 **기본 매개변수**를 지원한다

```javascript
function(name, age=25, grade=3) {
    console.log(`# ${name} 님의 정보`)
    console.log(`- 나이: ${age}`)
    console.log(`- 학년: ${grade}`)
    console.log('')
}
```

Node.js 이용시 자바처럼 활용하는데 그때 기본 매개변수를 통한 연결을 한다.



-------------------

## 구 버전 자바 스크립트에서 가변 매개변수 함수 구현하기

콜백함수에 요구되는 방식이다.

콜백 : 필요할때 호출하기 위해 미리 등록하는 형태

​	함수를 특정 조건이 되면 등록 실행.



## 함수 고급

### [중요] 콜백 함수

> 자바스크립트는 함수도 하나의 자료형이므로 매개변수로 전달할 수 있다. 
>
> 이렇게 매개변수로 전달하는 함수를 ***콜백함수***라고 한다.
>
> 자주 쓰이므로 익혀두도록 하자.
>
> 이거 모르면 js 코딩 못한다 - 김영환 강사님 -



```javascript
function callThreeTimes(callback) {
	for(let i = 0; i < 3; i++)
    	callback(i);
}
        
function print(i) {
	console.log(`${i}번째 함수 호출`)
}

callThreeTimes(print)

// 아래와 같은 형태로 사용시 undefined가 넘어간다.
// 실행하는 것이 아닌 print 함수의 레퍼런스, 주소 값이 넘어가는 형태이다.
// callThreeTimes(print())


> 0번째 함수 호출
> 1번째 함수 호출
> 2번째 함수 호출
```



#### 이중 콜백

```javascript
function print(i) {
	console.log(`${i}번째 함수 호출`);
	checkCount(i);
}

function callThreeTimes(callback) {
	for(let i = 0; i < 3; i++)
	callback(i)
}

function checkCount(callback2) {
	console.log(callback2)
}

callThreeTimes(print)

> 0번째 함수 호출
> 0
> 1번째 함수 호출
> 1
> 2번째 함수 호출
> 2
```



#### 콜백 함수 with forEach()

```javascript
function food_fn(value, index, array) {
	console.log("forEach " + value + " : " + index )
}
foods.forEach(food_fn)
```



#### 콜백 함수 with map()

```javascript
let foods = ["탕수육", "짜장", "짬뽕"]

function foods_map(value) {
	return "중화요리 : " + value
}
// console.log(foods.map(foods_map))
let foods2 = foods.map(foods_map)
console.log("foods2 : " + foods2)

> foods2 : 중화요리 : 탕수육,중화요리 : 짜장,중화요리 : 짬뽕
```

- map() : 콜백 함수에서 리턴한 값들을 가지고 새로운 배열을 생성한다



#### 콜백 함수 with filter()

```javascript
let foods2 = foods.map(foods_map)
console.log("foods2 : " + foods2)

function foods_filter(value) {
	return value.length == 2
}
let foods3 = foods.filter(foods_filter)
console.log("foods3 : " + foods3)

> foods3 : 짜장,짬뽕
```

- filter() : 특정 조건으로 필터링하여 처리한다.



### 화살표 함수 (Lambda)

```javascript
let foods = ["탕수육", "짜장", "짬뽕"]
        
let foods4 = foods.filter( (value) =>  {
	return value.length == 3
})

console.log(foods4)

> Array(1)
	0: "탕수육"
	length: 1
```

- {} 사용시 return 값이 필요하다.



```javascript
let foods = ["탕수육", "짜장", "짬뽕"]
        
let foods5 = foods.filter( (value) =>
	value.length == 3
)

console.log(foods4)

> Array(1)
	0: "탕수육"
	length: 1
```



### 타이머 함수

- setTimeout(함수, 시간) : 특정 함수를 특정 시간이 지난 후 한 번만 실행
- setInterval(함수, 시간) : 특정 함수를 특정 시간마다 실행
- clearTimeout(타이머_ID) : setTimeout() 함수로 설정한 타이머 제거
- clearInterval(타이머_ID) : setInterval() 함수로 설정한 타이머 제거

위의 시간 단위는 기본적으로 0.001초(*millisecond*)이다.



##### setInterval()

```javascript
function myfn(){
    console.log("100")
}
setInterval( myfn, 500 )
setInterval( "console.log('200')", 500 )
```

- 함수 대신 문자열로 지정한 값을 넣어도 된다.





## 문서 객체 모델

### DOM (Document Object Model)



![](http://learn.javascript.ru/article/browser-environment/windowObjects@2x.png)

DOM은 HTML body 안쪽을 지칭하며 눈에 보이는 브라우저의 영역의 태그들을 객체로 만들어 놓은 것이다.



![](https://s3.ap-northeast-2.amazonaws.com/opentutorials-user-file/module/904/2242.png)





```javascript
<body>
    Hello, World
    <script>
        document.body.innerHTML = "<h1>Hello</h1>"
    </script>
</body>
```

위의 코드는 '*Hello, World*'가 출력되지 않고 h1태그의 *Hello*가 출력된다.





```javascript
<head>
	이벤트 연결
    document.body.innerHTML
</head>
```

스크립트를 head에서 선언할때와 body에서 선언할때의 차이는 body에서 사용시 로딩이 다 끝난 다음 자동으로 스크립트가 실행이 된다는 점이다.



#### innerHTML 호출 - 간편한 버전

```javascript
<script>
    document.onload = function() {
        document.innerHTML += 'load 이벤트 발생'
    }
    document.addEventListener('load', function() {
        document.innerHTML += 'load 이벤트 발생'
    })
</script>
```





### 문서 객체 가져오기





- textContent innerHTML 2개가 있습니다.
- 
- 차이점은 textContent 에 둘 다 글자를 넣으면 되는데 태그를 만약에 넣었다.
- 
- 태그를 넣었을 때 태그가 태그로서 동작을 하느냐? 이너 HTML.
- 
- 태그가 동작하지 않고 그대로 글자로 출력 된다, 텍스트 콘텐트.
- 
- HTML 태그가 태그로서 동작하는 건 이너 HTML.
- 
- 그래서 IMG 태그를 집어넣었을 때 그림이 보이는 건 이너 HTML, 
- 글자로 보이는 건 텍스트 콘텐트.
- 쉽게 이야기해서 텍스트 콘텐트는 모든 게 글자로 보입니다.





### 속성 조작

```javascript
<script>
    let h1 = document.querySelector("h1")
    h1.textContent = "DOM Exam"

    let lis = document.querySelectorAll("li")
	lis[1].innerHTML = "<img src='이미지파일.확장자'>"
</script>
```





### 스타일 조작

```javascript
let h1 = document.querySelector("h1")
h1.style.background = "yellow"
```





### 문서 객채 생성

> HTML 태그를 동적으로 만들어 끼워넣는 과정

```javascript
document.createElement(문서 객체 이름)
```



### 이벤트 설정

> 화면의 변화가 곧 이벤트 타입으로 정의된다.
>
> 한 픽셀의 움직임이나 버튼 누름, 뗌, 영역을 벗어나거나 들어올때 모두 이벤트라 할 수 있다.

```javascript
문서객체.addEventListener(이벤트 이름, 콜백 함수)
```

- 여기서 콜백 함수를 '이벤트 리스너' 또는 '이벤트 핸들러'라고 부른다.