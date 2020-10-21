![MOVIE WORDS](https://i.gyazo.com/13c0c73a1579ff5d098e1f1d80f25e2b.png)
# 個人アプリ  『 movie words 』
## 概要
本アプリは、「映画(movie)のセリフ(words)から感じたことや、そのセリフに対しての思いや解釈・エピソードと一緒に映画を紹介する投稿アプリ」です。


## 制作背景(意図)
コロナウイルスが広がっていることによる外出自粛で、人と人との距離が遠くなり気持ちが落ち込むことで自ら命を断つニュースなども増えたように感じました。
その原因の一つとしてSNS内の誹謗中傷も問題になりました。本来SNSは距離が遠くなった人と人を繋ぐ便利な手段でしたが、できることが多いが故にネガティブな使い方をされているのが現状です。
私が解決したい問題はネガティブな心情になった時に、自発的にポジティブになれる手段がないということです。
外出自粛で人と会えない時でも、自発的にポジティブになれるヒントを得ることができるアプリケーションを作りたいと考えました。

本アプリは、利用者がポジティブに向かうためのきっかけを作るアプリケーションです。この制作意図には私自身の体験が元となっています。
私にも気分が落ちてしまう時や困難な問題に直面する事でネガティブになってしまうことがあります。しかし、私の強みは自分自身でポジティブになる方法を知っているということです。
私は映画のセリフや音楽の歌詞・偉人の名言などから問題の解決へのヒントを探したり、それによって自分を鼓舞する事で前進します。そうすることで私は心を強く保ち、ポジティブになります。




## DEMO



## 工夫したポイント



## 使用技術(開発環境)
HTML/CSS, Ruby,Ruby on rails, haml/sass, Javascript

## 課題・今後実装したい機能
GOODボタンの非同期通信化、NEW POSTとRANKING以外の投稿の表示方法




# DB設計
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
