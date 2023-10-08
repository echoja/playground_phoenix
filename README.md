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

- [x] 로컬에 띄우기
- [x] fly.io 에 띄우기 (<https://small-paper-5798.fly.dev/>) 관리창: <https://fly.io/dashboard>
- [ ] Elixir 속성 공부
- [ ] 회원가입 + 로그인. 별 다른 기능 없이 닉네임만 입력하면 바로 로그인될 수 있도록 함. (로그인 버튼을 눌러야 로그인이 됨) (사용자 DB 모델링. 데이터 CREATE 만)
- [ ] 세션이 나가지면 바로 로그아웃. (쿠키 같은 건 없도록 함)
- [ ] 같은 닉네임으로 다른 사람이 로그인되어 있을 때 로그인 불가. (다른 탭으로 확인 가능)
- [ ] 로그인 불가는 입력창에 닉네임을 입력하면서 실시간으로 알 수 있어야 함.
- [ ] TODO 기능 추가 (DB 모델링, 간단한 CRUD)
- [ ] 비밀 TODO 기능 추가 (해당 닉네임으로 로그인되어 있는 상태여야 볼 수 있음)
- [ ] fly.io 의 스토리지 사용하여 TODO에 간단한 이미지 업로드할 수 있도록 하기.
- [ ] 쿠키 등을 이용하여 세션 유지하기.
- [ ] 구글 로그인 붙이기