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

# テーブル設計

## users テーブル

| Column              | Type   | Options                   |
| --------------------| ------ | ------------------------- |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false               |
| nickname            | string | null: false               |

### Association

- has_many :articles
- has_many :decks

## articles テーブル

| Column    | Type       | Options                        | 
| --------- | ---------- | -------------------------------|
| title     | string     | null: false                    |
| text      | text       | null: false                    |
| genre_id  | integer    | null: false                    |
| user      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :deck

### decks テーブル

| Column | Type       | Options                        |
| -------| ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |
| arc1   | integer    | null: false                    |
| arc2   | integer    | null: false                    |
| arc3   | integer    | null: false                    |
| arc4   | integer    | null: false                    |
| arc5   | integer    | null: false                    |
| arc6   | integer    | null: false                    |
| arc7   | integer    | null: false                    |
| arc8   | integer    | null: false                    |
| arc9   | integer    | null: false                    |
| arc10  | integer    | null: false                    |
| arc11  | integer    | null: false                    |
| arc12  | integer    | null: false                    |
| arc13  | integer    | null: false                    |
| arc14  | integer    | null: false                    |
| arc15  | integer    | null: false                    |
| arc16  | integer    | null: false                    |
| arc17  | integer    | null: false                    |
| arc18  | integer    | null: false                    |
| arc19  | integer    | null: false                    |
| arc20  | integer    | null: false                    |
| mons1  | integer    | null: false                    |
| mons2  | integer    | null: false                    |
| mons3  | integer    | null: false                    |
| mons4  | integer    | null: false                    |
| mons5  | integer    | null: false                    |
| mons6  | integer    | null: false                    |
| mons7  | integer    | null: false                    |
| mons8  | integer    | null: false                    |
| mons9  | integer    | null: false                    |
| mons10 | integer    | null: false                    |
| mons11 | integer    | null: false                    |
| mons12 | integer    | null: false                    |
| mons13 | integer    | null: false                    |
| mons14 | integer    | null: false                    |
| mons15 | integer    | null: false                    |
| mons16 | integer    | null: false                    |
| mons17 | integer    | null: false                    |
| mons18 | integer    | null: false                    |
| mons19 | integer    | null: false                    |
| mons20 | integer    | null: false                    |

### Association

- belongs_to :user
- belongs_to :article