# PlaygroundPhoenix

To start your Phoenix server:

- Run `mix setup` to install and setup dependencies
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: <https://www.phoenixframework.org/>
- Guides: <https://hexdocs.pm/phoenix/overview.html>
- Docs: <https://hexdocs.pm/phoenix>
- Forum: <https://elixirforum.com/c/phoenix-forum>
- Source: <https://github.com/phoenixframework/phoenix>

## TODO

- [x] 로컬에 띄우기 (로컬 DB)
- [x] fly.io 에 띄우기 (<https://small-paper-5798.fly.dev/>) 관리창: <https://fly.io/dashboard> (fly.io DB)
- [ ] Elixir 속성 공부
- [ ] 회원가입 + 로그인. 별 다른 기능 없이 닉네임만 입력하면 바로 로그인될 수 있도록 함. (로그인 버튼을 눌러야 로그인이 됨) (사용자 DB 모델링. 데이터 CREATE 만)
- [ ] 세션이 나가지면 바로 로그아웃. (쿠키 같은 건 없도록 함)
- [ ] 위 내용까지 fly.io 에 배포. (+ DB 마이그레이션)
- [ ] 1차 블로그 작업
- [ ] 같은 닉네임으로 다른 사람이 로그인되어 있을 때 로그인 불가. (다른 탭으로 확인 가능)
- [ ] 로그인 불가는 입력창에 닉네임을 입력하면서 실시간으로 알 수 있어야 함.
- [ ] 2차 블로그 작업
- [ ] TODO 기능 추가 (DB 모델링, 간단한 CRUD)
- [ ] 비밀 TODO 기능 추가 (해당 닉네임으로 로그인되어 있는 상태여야 볼 수 있음)
- [ ] 3차 블로그 작업
- [ ] fly.io 의 스토리지 사용하여 TODO에 간단한 이미지 업로드할 수 있도록 하기.
- [ ] 4차 블로그 작업
- [ ] 쿠키 등을 이용하여 세션 유지하기.
- [ ] 구글 로그인 붙이기
- [ ] 5차 블로그 작업
- [ ] ci/cd 붙이기 (푸쉬하면 fly.io 에 자동으로 배포되도록)
- [ ] 6차 블로그 작업

## 기록

### 2023-10-08

- [개발자 부족의 시대, Elixir가 특효약이 될 수 있는 이유 (youtube)](https://www.youtube.com/watch?v=lAaD-6OQSHE)
- [Keynote: The Road To LiveView 1.0 by Chris McCord | ElixirConf EU 2023 (youtube)](https://www.youtube.com/watch?v=FADQAnq0RpA)

위 두가지 영상을 흥미롭게 봤습니다. 핵심은 상태가 서버에 존재한다는 거에요. React, Vue, Svelte 등등에서는 상태를 클라이언트에 저장하죠. 너무나도 당연해 보입니다. 저희같은 웹 개발자에게는 익숙한 풍경입니다. 조금 더 깊이 생각한다 하더라도 상태를 서버에서 관리한다면 서버 쪽의 과부하가 엄청나게 크게 일어날 것입니다! 클라이언트에서 상태관리 하는 게 네트워크 요청을 타지 않으니 더 즉각적인 UX 로 사용자 경험이 좋아지기도 하구요. 그러나 아래 두 가지 조건에 의해서 서버사이드 상태 관리가 현실적으로 가능하다 합니다.

- 웹소켓 기능을 적극 활용합니다. 클라이언트와 서버 간 연결을 지속합니다.
- 서버사이드는 경량 동시성 모델을 가진 (동시성 환경에 특화된) Elixir 기반입니다. 병렬 처리를 극대화할 수 있습니다.

이렇게 되면 장점이 아주 많이 생깁니다.

- 클라이언트 쪽 코드가 굉장히 심플해집니다. 모든 비즈니스 로직이 서버에 집중되며, 클라이언트는 데이터를 받아서 렌더링만 해주면 됩니다. (템플릿 엔진에 의해.)
- 클라이언트와 서버가 특별하게 소통할 일이 없으므로 API 또한 설계할 필요가 없습니다.
- 상태가 변경되었을 때 많은 클라이언트에게 실시간으로 변경사항을 전달할 수 있습니다. (웹소켓을 통해) 즉 클라이언트 간 동기화가 아주 쉬워집니다.
- Dynamic form 검사 같은 것도 로직을 서버 쪽으로 한 곳에 몰아넣을 수 있습니다.

이정도만 살펴봤을 때 정말 대단하다고 느꼈어요. 스케일러블한 앱을 쉽게 만들 수 있다고도 하는데, 대규모 시스템 운영은 아직 경험도 없고 잘 모르므로 패스하겠습니다. 발목잡는 건 역시 새로운 Elixir 이라는 언어와 새로운 환경입니다. 학습을 해야 하는 것입니다! 학습이 그렇게 오래 걸릴 것 같지는 않지만, 지금 다른 일도 너무 많으므로... 지금 공부한다고 해서 그게 영양가가 있는 공부일지는 미지수입니다. 그러므로 나중으로... 언젠가... 미루겠습니다. 지금은 그냥 얕은 일탈로 즐겼다!
