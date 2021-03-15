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