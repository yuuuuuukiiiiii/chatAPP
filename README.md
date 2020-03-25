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

