# 2017.11.16 9일차

## RESTful CRUD

1. route
   - resources :posts
2. controller
   - rails g controller posts index new create show edit update destroy
   - routes 파일에 찌꺼기 지우기
3. model
   - rails g model post image_url, story
4. 조건
   1. 모든 form -> form_tag
   2. 모든 link -> link_to (url은 전부 prefix를 사용) - rake routes활용



## params[] : 배열, 해쉬 모두 담을 수 있음.

- 데이터를 주고 받을 떄(HTTP는 Stateless)
  1. URL
  2. form
- params hash
  - symbol과 string 둘 다 사용이 가능.

1. 배열담기

   ```html
   <input type="text" name="list[]">
   <input type="text" name="list[]">
   <input type="text" name="list[]">
   params:list[0]
   ```

2. 해시담기

   ```html
   <input type="text" name="list[title]">
   <input type="text" name="list[content]">
   <input type="text" name="list[name]">
   params:list[0]
   ```

### 참고자료 퍼펙트 루비 온 레일즈

p354 : params hash

p 436 : RESTful 정의 & 라우팅

p116 : form_tag & form_for