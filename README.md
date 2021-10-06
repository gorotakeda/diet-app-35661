# アプリケーション名
 diet-app-35661
# アプリケーション概要
 自分に適した運動と食事の情報を検索できるアプリ。
# URL
- 本番環境 https://diet-app-35661.herokuapp.com/
- GitHub https://github.com/gorotakeda/diet-app-35661
# DEMO
- サインインページとログインページ
[![Image from Gyazo](https://i.gyazo.com/06b21ce2b389b3de7cfadac61f668c83.gif)](https://gyazo.com/06b21ce2b389b3de7cfadac61f668c83)
- 新規投稿機能
[![Image from Gyazo](https://i.gyazo.com/603c7c072b520d0bee57a7b84858c486.gif)](https://gyazo.com/603c7c072b520d0bee57a7b84858c486)
- 投稿検索機能
[![Image from Gyazo](https://i.gyazo.com/c0736ed628bfb471ca7c62d48124486e.gif)](https://gyazo.com/c0736ed628bfb471ca7c62d48124486e)
- ユーザーログアウト機能
[![Image from Gyazo](https://i.gyazo.com/86ec95c8b03b4a200ea6a3242116f0b1.gif)](https://gyazo.com/86ec95c8b03b4a200ea6a3242116f0b1)
- 投稿一覧から投稿詳細ページへ遷移
[![Image from Gyazo](https://i.gyazo.com/dc710c8d383745738f5e5ec7b928a6ab.gif)](https://gyazo.com/dc710c8d383745738f5e5ec7b928a6ab)
- 投稿編集機能
[![Image from Gyazo](https://i.gyazo.com/d79e43ff022078e344334ad5ab0dcb35.gif)](https://gyazo.com/d79e43ff022078e344334ad5ab0dcb35)
# テスト用アカウント
- Basic認証: ユーザー名「goro」 パスワード 「1993」
- テストアカウント: Email: test@com / Password: test000000
# 利用方法
 ユーザーは新規投稿ができる。また、性別、年代、目的別で検索をかけることで自分に最適な情報だけを閲覧することができる。
# 目指した課題解決
 SNSが発展しすぎたせいでダイエットに関する運動、食事法に関しての情報が多すぎて何をやればいいのか分からなくなってしまっている。そこで、性別、年代、目的を検索すれば、今の自分に最適な投稿のみを見ることができる。
# 洗い出した要件
|機能|目的|詳細|ストーリー|
|---|---|---|---------|
|deviseを用いたユーザー管理機能||サインイン、ログイン、ログアウトができる。ログイン時はログアウト表示がでる。|投稿を閲覧したい人、投稿をしたい人はサインイン又は、ログインする必要がある。|
|投稿、一覧表示機能|ユーザーが見たい投稿を選びやすくするため。|一覧ではnickname、titleを表示させる。|投稿するとトップページに遷移し、投稿内容が見ることができる。|
|新規投稿機能|ダイエット、食事等に関係する情報を投稿するため。|新規投稿ではtitle、meal、workout、sex、age、purposeを入力して投稿ボタンを押すと投稿一覧ページに遷移し、投稿が表示されているようにする。|ユーザーはヘッダーの「投稿」から新規投稿ページに遷移し、新規投稿を行う。|
|投稿詳細表示機能|投稿内容を詳しく表示させるため。|ログイン中のユーザーは投稿一覧ページから特定の投稿を選択すると詳細ページに遷移する。投稿詳細ページではnickname,title、meal、workout、sex、age、purposeが表示される。|ログイン中のユーザーは投稿の詳細を閲覧するために、一覧ページから特定の投稿を選び投稿詳細ページへ遷移する。|
|投稿編集機能|投稿内容を編集するため。|ログイン中のユーザーかつ、投稿した本人は編集ボタンから編集ページに遷移して、自身の投稿を編集できる。編集ページではtitle、meal、workout、sex、age、purposeを編集できる。|ログイン中のユーザーかつ、投稿した本人のみが投稿詳細ページから投稿編集ページへ遷移でき、自身の投稿を編集できる。|
|投稿削除機能|投稿を削除するため。|ログイン中ユーザーかつ、投稿者本人は削除ボタンから自分の投稿をDBから削除する。|ログイン中のユーザーでかつ、投稿した本人のみが自身の投稿を削除できる。|
|ransackを用いた、複数条件検索機能|自分に適した投稿を検索するため。|ログインしているユーザーは投稿一覧ページにある検索欄からsex,age,purposeを選択し自身に適した投稿を検索し、投稿検索ページに遷移し、そこから閲覧したい投稿を選ぶことができる。|ログイン中のユーザーは投稿一覧ページにある『情報検索』から自分に当てはまる条件を選び検索ボタンをクリックすると、自分に適した投稿のみ表示されるページへ遷移する。|
|ユーザー詳細表示機能|ユーザーの情報を表示するため|ユーザーはヘッダーの投稿者名をクリックするとユーザー詳細ページに遷移する。||

# 実装予定の機能
## ユーザー詳細ページに今までの投稿を全て表示させる機能
- 自分の投稿を管理するため。
## いいね機能
- 投稿に対して「いいね」をするため。
- 非同期通信を用いて実装する
## コメント投稿機能
- ユーザーが投稿に対してコメントするため
- 非同期通信を用いて実装する

# テーブル設計

## users テーブル
| Column                | Type   | Options      |
|-----------------------|--------|--------------|
| nickname              | string | null: false  |
| email                 | string | unique: true |
| encrypted_password    | string | null: false  |
### Association
- has_many :posts

## postsテーブル

| Column                 | Type       | Options                        |
|------------------------|------------|--------------------------------|
| title                  | text       | null: false                    |
| meal                   | text       | null: false                    |
| workout                | text       | null: false                    |
| sex_id                 | integer    | null: false                    |
| age_id                 | integer    | null: false                    |
| style                  | integer    | null: false                    |
| purpose                | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
