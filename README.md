![MOVIE WORDS](https://i.gyazo.com/13c0c73a1579ff5d098e1f1d80f25e2b.png)
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
