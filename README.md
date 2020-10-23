![MOVIE WORDS](https://i.gyazo.com/13c0c73a1579ff5d098e1f1d80f25e2b.png)
# 個人アプリ  『 movie words 』
## 概要
本アプリは、【 映画(movie)のセリフ(words)から感じたことや、そのセリフに対しての思いや解釈・エピソードと一緒に映画を紹介する投稿アプリ 】です。<br>
新規登録・ログイン前でも閲覧可能ですが、新規登録・ログイン後にサイドバーの表示が変化し投稿が可能になります。<br>
投稿には【投稿画像・映画タイトル・カテゴリー・心に残ったセリフ・セリフを言っていた俳優/女優・そのセリフから感じたことや解釈】の項目があります。<br>

## 制作背景(意図)
コロナウイルスが広がっていることによる外出自粛で、人と人との距離が遠くなり気持ちが落ち込むことで自ら命を断つニュースなども増えたように感じました。
その原因の一つとしてSNS内の誹謗中傷も問題になりました。本来SNSは距離がある人と人を繋ぐ便利な手段でしたが、便利なツールが故にネガティブな使い方をされているのも現状です。<br>
私が解決したい問題はネガティブな心情になった時に、自発的にポジティブになれる手段がないということです。
なので外出自粛で人と会えない時でも、自発的にポジティブになれるヒントを得ることができるアプリケーションを作りたいと考えました。<br>

本アプリは、利用者がポジティブに向かうためのきっかけを作るアプリケーションです。この制作意図には私自身がポジティブになるためのプロセスが元となっています。<br>
私にも気分が落ちてしまう時や困難な問題に直面する事でネガティブになってしまうことがあります。しかし、私の強みは自分自身でポジティブになる方法を知っているということです。
私は映画のセリフや音楽の歌詞・偉人の名言などから問題の解決へのヒントを探したり、それによって自分を鼓舞する事で前進します。<br>
自分自身でポジティブになれるプロセスを知っているのはとても大事なことだと考えていて、問題の根本的な解決にはならなくても、そのきっかけや原動力を与えてくれます。
同じプロセスでポジティブになれる人が私以外にもいるかもしれないと考え、今回は映画のセリフについて感じたことや解釈を共有できる投稿アプリを作成しようと決めました。<br>

映画のセリフに限定したのにも理由があります。映画にはセリフの前後にストーリーがあり、外出を自粛していてもレンタルなどで見ることができます。
なので、このアプリをきっかけに見たい映画を見つけて、おうち時間を充実させる事でもポジティブになれると考えたからです。<br>
今後も悲しい出来事を少しでも減らし、多くの人の生活がポジティブなものになれるアプリケーションを考えていけたらいいなと考えています。<br>


## DEMO
●ログイン前トップページ ---サイドバーから新規登録とログインを行います。ログイン前は閲覧はできますが、投稿はできません。<br>
https://gyazo.com/d0ecc56e89bf1fa6e0057e434dacef9f<br>
<br>
●ログイン後トップページ ---ログイン後サイドバーの表示が変化します。ユーザー名・投稿する・過去の自分の投稿・全ての投稿・ログアウトのボタンが表示されそれぞれ対応するページへ移動できます。<br>
https://gyazo.com/411cf5a340cce2205b1eb29be67536de<br>
<br>
●投稿ページ ---画像・タイトル・カテゴリー(３階層)・俳優/女優名・セリフ・選んだ理由を入力します。<br>
https://gyazo.com/2c1ef05079043d437348e7adda2ef5ae<br>
<br>
●トップページの NEW POST ---新着の10件の投稿を表示します。画像の中にタイトルとセリフが表示されます。画像をクリックすることで投稿の詳細を見ることができます。<br>
新着10件より前の投稿を見たい場合はヘッダーにある検索バーでタイトルを検索するか、サイドバーとNEW POSTにある"すべての投稿を見る"ボタンをクリックすることで表示されます。<br>
https://gyazo.com/cf71a3fdc21b02e4da1547f63349e85a<br>
<br>
●トップページの GOOD RANKING ---投稿詳細ページで押せるGOODボタンが押された数のランキングの上位3つを表示します。<br>
https://gyazo.com/3793bcc47ac63cf99fbfaacb5a1ac204<br>
<br>
●投稿詳細ページ　---投稿ページで入力した項目を全て表示します。ページ左にはGOODボタンを設置し、１投稿につき1度押すことができます。(取り消すときはもう一度クリックする)<br>
自分の投稿には編集ボタンと削除ボタンが出現します。(自分以外の投稿には表示されません)そこから編集と削除を行うことができます。<br>
https://gyazo.com/4e8ec47c37fa59e483009b41bb7a14e5<br>
<br>


## 工夫したポイント
●本アプリにはポジティブな要素しか存在しないようにしたいと考えていました。<br>
コメント機能やBADボタンは設置せず、GOODボタンでポジティブな評価のみ行えるようにしました。SNSの適切な不自由さだと考えています。<br>
<br>
●サイト内の色彩は約5色しか使用せず、境界や操作をわかりやすく統一感が出るように意識しました。<br>
<br>

## 使用技術(開発環境)
HTML/CSS, Ruby,Ruby on rails, haml/sass, Javascript

## 課題・今後実装したい機能
・GOODボタンの非同期通信化<br>
・NEW POSTとRANKING以外の投稿の表示方法を考える<br>
・より精度の高いバリテーションを考える<br>


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
