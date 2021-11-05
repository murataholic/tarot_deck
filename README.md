# README

# アプリケーション名
DQX 占い師デッキレシピ集

# アプリケーション概要
このアプリケーションでできることを記述。

# URL
デプロイ済みのURLを記述。

# テスト用アカウント
ログイン機能等を実装した場合は、ログインに必要な情報を記述。
またBasic認証等を設けている場合は、そのID/Passも記述すること。

# 利用方法
このアプリケーションの利用方法を記述。

# 目指した課題解決
このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記述。

# 洗い出した要件
スプレッドシートにまとめた要件定義を記述。

# 実装した機能についての画像やGIFおよびその説明
実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。(画像はGyazoで、GIFはGyazoGIFで撮影。)

# 実装予定の機能
洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記述。

# ローカルでの動作方法
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。
この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。

# データベース設計
ER.dioを参照。

# 画面遷移図
screen_flow.dioを参照。

# テーブル設計

## users テーブル

| Column              | Type   | Options                   |
| --------------------| ------ | ------------------------- |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false               |
| nickname            | string | null: false               |

### Association

- has_many :articles
- has_many :nices

## articles テーブル

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

### Association

- belongs_to :user
- has_many :nices

## nices テーブル

| Column    | Type       | Options                        | 
| --------- | ---------- | -------------------------------|
| user      | references | null: false, foreign_key: true |
| article   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :article