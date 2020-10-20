# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# 個人アプリ  『 movie words 』
## コンセプト
本アプリは、「映画(movie)のセリフ(words)から感じたことや、そのセリフに対しての思いや解釈・エピソードと一緒に映画を紹介する投稿アプリ」です。








# 個人アプリ「 movie words 」のDB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null:false,default:""|
|email|string|null:false,default:""|
|password|string|null:false,default:""|
### Association
- has_many :posts, :dependent => :destroy
- has_many :likes

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null:false|
|title|string|null:false|
|act|string|null:false|
|words|string|null:false|
|reason|string|null:false|
|category_id|integer|null:false,default:0|
|user_id|integer|null:false,foreign_key:true|
### Association
- has_many :likes
- belongs_to :user, foreign_key: 'user_id'
- belongs_to :category, optional: true

## Categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|ancestry|string||
### Association
- has_many :posts
- has_ancestry

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer||
|user_id|integer||
### Association
- belongs_to :post
- belongs_to :user