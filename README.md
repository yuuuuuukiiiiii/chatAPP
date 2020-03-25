## フレームワーク：Ruby on Rails

## 開発言語：Haml,SCSS,Ruby

## 実装機能：ログイン・ログアウト、投稿、コメント、編集、削除

## アプリの説明
Ruby on Railsを用いて簡単なツイートアプリを作成しました。

## 苦労した点
コメント機能を実装した際に1つツイートのコメントに対して実装していて、実装終わりに違うツイートの実装を見たら全く同じコメントがされていたので、注意して実装を進めないといけないと思いました。


# DB統計

## userテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|unidue: true|
|email|string|null: false, unidue: true|
|name|string|null: false|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|
|encrypted_password|string|null: false, unidue: true|

### Association
- has_many :tweets
- has_many :comments

## tweetテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|unidue: true|
|text|text|
|image|text|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :comments

## commentテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|unidue: true|
|text|text|
|image|text|
|user_id|integer|fnull: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|

### Association
- belongs_to :user
- belongs_to :tweet

