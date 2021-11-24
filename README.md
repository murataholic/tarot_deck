# アプリケーション名
DQX 占い師デッキレシピ集

# アプリケーション概要
オンラインゲーム「ドラゴンクエストX」で登場する職業の1つ「占い師」のデッキを紹介する記事投稿アプリです。ユーザー登録をすることでデッキ（記事）の投稿をすることができる他、フリーワードまたはカテゴリから記事を検索することができます。

# URL
https://tarot-deck-for-dqx.herokuapp.com/

# テスト用アカウント
メールアドレス：sample1@sample1.com  
パスワード：sample1

# 利用方法
- 新規登録
<br>「新規登録」をクリックしてフォームに入力後、「登録する」をクリックします。
- 記事の投稿
  <br>ログイン後、「投稿する」をクリックすると投稿画面に遷移します。フォームに入力後、「投稿する」をクリックすると記事を投稿することができます。<br>※タロット画像の表示に関して  
  - 「モンスター名」と「アルカナ名」を選択することで画像が表示されます。
  - JavaScriptが無効になっている場合、画像が表示されません。
  - プルダウンリストの内、以下の選択肢を選んでも画像は表示されません。  
    「モンスター名」  
    「アルカナを選択」  
    「ランクSSS」  
    「ランクSS」  
    「ランクS」  
    「ランクA」  
    「ランクB」
- 記事の検索
  <br>「検索する」をクリックすると検索画面に遷移します。  フリーワードまたはカテゴリから記事を検索することができます。
- マイページ
  <br>自身の投稿した記事が一覧表示されるページです。  
  （※記事を1つも投稿していない場合、記事は表示されません。）
- いいね！機能
  <br>記事詳細ページにて「このデッキにいいね！」をクリックすると、「いいね！」数が１増えます。<br>（※非ログイン時はクリックすることができません。）

# 目指した課題解決
「ドラゴンクエストXで占い師を使ってみたいけど、どのようなデッキを作ればいいかわからない」というユーザーの悩みを解決する目的で作成しました。<br>現状では、一部のブロガーがデッキを紹介していますが、情報が最新でないことに加えて、全体的にデッキ紹介数そのものが少ない状況です。<br>そのため、まずはタロットデッキを画像付きで、かつ誰でも気軽に投稿できるような場所を作り、デッキ内容を蓄積・集約していく仕組みが必要だと考えました。<br>真の課題解決には「書き手」の存在が不可欠ですが、このアプリケーションがより多くのユーザーに占い師の魅力や有用性を伝える場となることを期待しています。

# 洗い出した要件
| 機能  | 目的 | 詳細  | ストーリー |
| ---- | ---- | ---- | -------- |
| ユーザー管理機能 | 登録されたユーザーのみ記事を投稿できるようにするため。 | ニックネーム、メールアドレス、パスワードを登録する。 | 新規登録画面にて左記の項目を入力し、ユーザー登録を行う。ログイン画面にてメールアドレスとパスワードを入力し、ログインを行う。 |
| 投稿機能 | 記事を投稿できるようにするため	| 記事のジャンルを選択し、タイトルと本文を入力する。20枚のタロットの情報を登録する。| 記事のジャンルを選択し、タイトルと本文を入力する。タロットに関しては、１枚ずつモンスター名とアルカナ名を選択する。入力後、「投稿する」ボタンをクリックすると記事投稿が完了する。 |
| タロット画像表示機能（投稿時） | 記事投稿時に、登録するタロットに誤りがないかをわかりやすくするため。 | プルダウンリストを選択すると動的に表示される。（JavaScriptを利用） | モンスター名とアルカナ名を選択すると、対応するタロット画像が動的に表示される。|
| 文字数カウント機能 | 記事投稿時に、文字数の確認を簡単に行えるようにするため。 | 記事投稿画面及び記事編集画面のテキスト欄に文字を入力すると、文字数が自動的にカウントされる。	| 制限文字数（2000文字）を超えると赤字に変化する。|
| タロット画像表示機能	| 記事投稿時に選択したタロット20枚を一覧ページ及び詳細ページにて表示させるため。| データベースに保存された値を元に、対応する画像を表示させる。 | 記事投稿が完了すると、一覧ページ（詳細ページ）にてタロット画像が表示される。|
| 編集機能 | 記事投稿後に修正したい箇所があった場合に修正できるようにするため。 | 記事詳細ページの「編集する」ボタンをクリックする。 | 本人が投稿した記事のみ記事の編集ができる。 |
| 削除機能 | 投稿した記事を削除したい場合に削除できるようにするため。 | 記事詳細ページの「削除する」ボタンをクリックする。 | 本人が投稿した記事のみ記事の削除ができる。 |
| 検索機能 | ユーザーが欲しい情報を検索できるようにするため。 | フリーワード、ジャンル名（カテゴリ名）、ユーザー名から記事を検索する。 | 記事検索ページにて検索欄にキーワードを入力して検索すると、検索結果ページに遷移し、該当する記事が表示される。ジャンル名（カテゴリ名）やユーザー名のクリックからでも検索ができる。 |
| SNS認証	| ユーザーアカウント登録方法の選択肢を増やすため | SNSアカウント（Googleアカウン、Facabookアカウント）を利用したログイン方法を選択肢として追加する。 | ユーザーアカウントの登録方法を「手打ち入力」「Googleアカウントを利用」「Facabookアカウントを利用」の3つから選べるようにする。SNSアカウントを選択した場合、既にパスワードは入力されている状態で表示される。|
| いいね！機能 | 投稿された記事に対する客観的評価をユーザーにわかりやすく伝えるため	| 記事一覧ページまたは記事詳細ページにて「いいね！」を押すと、「いいね！数」が１増える。再度押すと、「いいね！数」が１減る。 | 記事詳細ページにて「いいね！」を押すと「いいね！数」が１増える。ログインしていない場合は、「いいね！」をクリックできない。 |
| エラーメッセージの日本語化機能| エラー内容をわかりやすく伝えるため。 | rails-i18nというGemの導入及びja.ymlファイルの作成にて対応。 | 新規登録や記事投稿（編集）でバリデーションに引っかかった際に、エラー内容が日本語で表示される。 |
| コメント機能 | ユーザー同士の交流を図るため。 | 記事詳細ページにコメント欄を表示。 | 記事詳細ページのコメント欄に入力し、「コメントする」ボタンを押すとコメントが登録される。ログインしていない場合、コメント入力欄は表示されない。 |

# 実装した機能
- タロット画像表示機能（投稿時）
[![Image from Gyazo](https://i.gyazo.com/81a1fc4ed5c7b24c6e26c1a93362ea17.gif)](https://gyazo.com/81a1fc4ed5c7b24c6e26c1a93362ea17)
- 投稿機能
[![Image from Gyazo](https://i.gyazo.com/15d31d5a218d60c2674c12ad4c6a77fa.gif)](https://gyazo.com/15d31d5a218d60c2674c12ad4c6a77fa)
- 検索機能（ジャンル）
[![Image from Gyazo](https://i.gyazo.com/b2980757234f2c34f46b744bfa3e7465.gif)](https://gyazo.com/b2980757234f2c34f46b744bfa3e7465)
- 検索機能（フリーワード）
[![Image from Gyazo](https://i.gyazo.com/b16984419c3bfb2db24908a93c926738.gif)](https://gyazo.com/b16984419c3bfb2db24908a93c926738)
- 検索機能（ユーザー名）
[![Image from Gyazo](https://i.gyazo.com/e9daaaed29292fbfb57d8ad742a3d663.gif)](https://gyazo.com/e9daaaed29292fbfb57d8ad742a3d663)
- いいね！機能
[![Image from Gyazo](https://i.gyazo.com/8477565ba9efcf36d9ff5342548dc340.gif)](https://gyazo.com/8477565ba9efcf36d9ff5342548dc340)

# 工夫した機能
- Herokuでのデプロイにあたり、AWSのS3などストレージサービスを利用せずに画像表示を実現させた点
- レスポンシブデザインを採用した点
- 投稿後１週間以内の記事には「NEW」と表示させた点
- 記事の投稿・更新日時を日本時間に合わせた点
- 記事検索ページ以外からでもジャンル検索ができる点  
  ※一覧ページまたは詳細ページのジャンル名（テーマ）をクリックすることで、そのジャンルの記事が一覧表示されます。また、ユーザー名をクリックすることで、そのユーザーの記事が一覧表示されます。

# 実装予定の機能
- 記事編集時（ページ遷移後）にタロット画像をあらかじめ表示させる
- 記事投稿時のタロット選択を簡略化させる
- トップページ（記事一覧ページ）の修正（※記事投稿数増加への対応）
- SNS認証
- コメント機能

# ローカルでの動作方法
% git clone https://github.com/murataholic/tarot_deck.git  
% cd tarot_deck  
% bundle install  
% yarn install  
% rails db:create  
% rails db:migrate  
% rails s → http://localhost:3000

# 開発環境
- フロントエンド：HTML/CSS/JavaScript/jQuery
- バックエンド：Ruby on Rails(6.0.0)/Ruby(2.6.5)/JavaScript
- テスト：RSpec
- Linter：Rubocop
- データベース：MySQL(5.6.50)/Sequel Pro
- インフラ：Heroku
- タスク管理：GitHub

# データベース設計
## ER図
[![Image from Gyazo](https://i.gyazo.com/ea143a4fe20086a112a0a1b3bff81716.png)](https://gyazo.com/ea143a4fe20086a112a0a1b3bff81716)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/5ad1eed07f84cfa1fc483f1516376fb9.png)](https://gyazo.com/5ad1eed07f84cfa1fc483f1516376fb9)

## テーブル設計

### users テーブル

| Column              | Type   | Options                   |
| --------------------| ------ | ------------------------- |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false               |
| nickname            | string | null: false               |

#### Association

- has_many :articles
- has_many :nices

### articles テーブル

| Column    | Type       | Options                        | 
| --------- | ---------- | -------------------------------|
| user      | references | null: false, foreign_key: true |
| title     | string     | null: false                    |
| genre_id  | integer    | null: false                    |
| text      | text       | null: false                    |
| arc1_id   | integer    | null: false                    |
| arc2_id   | integer    | null: false                    |
| arc3_id   | integer    | null: false                    |
| arc4_id   | integer    | null: false                    |
| arc5_id   | integer    | null: false                    |
| arc6_id   | integer    | null: false                    |
| arc7_id   | integer    | null: false                    |
| arc8_id   | integer    | null: false                    |
| arc9_id   | integer    | null: false                    |
| arc10_id  | integer    | null: false                    |
| arc11_id  | integer    | null: false                    |
| arc12_id  | integer    | null: false                    |
| arc13_id  | integer    | null: false                    |
| arc14_id  | integer    | null: false                    |
| arc15_id  | integer    | null: false                    |
| arc16_id  | integer    | null: false                    |
| arc17_id  | integer    | null: false                    |
| arc18_id  | integer    | null: false                    |
| arc19_id  | integer    | null: false                    |
| arc20_id  | integer    | null: false                    |
| mons1_id  | integer    | null: false                    |
| mons2_id  | integer    | null: false                    |
| mons3_id  | integer    | null: false                    |
| mons4_id  | integer    | null: false                    |
| mons5_id  | integer    | null: false                    |
| mons6_id  | integer    | null: false                    |
| mons7_id  | integer    | null: false                    |
| mons8_id  | integer    | null: false                    |
| mons9_id  | integer    | null: false                    |
| mons10_id | integer    | null: false                    |
| mons11_id | integer    | null: false                    |
| mons12_id | integer    | null: false                    |
| mons13_id | integer    | null: false                    |
| mons14_id | integer    | null: false                    |
| mons15_id | integer    | null: false                    |
| mons16_id | integer    | null: false                    |
| mons17_id | integer    | null: false                    |
| mons18_id | integer    | null: false                    |
| mons19_id | integer    | null: false                    |
| mons20_id | integer    | null: false                    |

#### Association

- belongs_to :user
- has_many :nices

### nices テーブル

| Column    | Type       | Options                        | 
| --------- | ---------- | -------------------------------|
| user      | references | null: false, foreign_key: true |
| article   | references | null: false, foreign_key: true |

#### Association

- belongs_to :user
- belongs_to :article