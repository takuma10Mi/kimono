# README

- ECサイトです。着物をお預かり、リメイクのやりとりをサイト上で完結できます。
- 背景としてクライアントはホームページを所有しておらず、元々はアナログで実施しており地元の評判が良かったので、全国対応するために作成を考案しました。

- URL 未完成

- 製作者のtwitter

  @Takumaroiine 
  @mr_hiraru08 
  @ARK0730_1989
  @syomabusiness

## アプリケーション概要

- 「Rekimo」のECサイト

## アプリケーションの機能一覧

- レスポンシブ対応
- お問い合わせ機能／よくある質問
- ユーザーログイン／ログアウト機能
- reCAPTCHA機能
- 管理者ログイン／管理者ログアウト機能
- ユーザー情報編集機能
- マイページ表示機能
- 出品中／売り切れ商品表示機能
- 購入側過去の取引表示機能
- クレジットカード登録／削除機能
- 商品購入機能／取り消し機能

- 取引中コメント機能
- 着物受け取り通知（自分から見て）機能

- 領収書機能（できればPDF表示）
- 自社の商品出品／編集／削除機能
- ブログ機能又はインスタグラムAPI取得
- パンくず表示機能

## アプリケーション内で使用している技術一覧

|種別|名称|
|------|----|
|開発言語|Ruby(ver 2.5.8)|
|フレームワーク|Ruby on Rails(ver 5.2.4.3)|
|マークアップ|HTML(Haml),CSS(Sass)|
|フロントエンド|JavaScript(jQuery)|
|DB|MySQL|
|開発環境|Docker|
|本番環境|AWS|
|自動デプロイ|capistrano|
|自動テスト|Circle CI|
|パンくず表示機能|gretel|
|お問い合わせ機能|rails-i18n|

## データベース

  ## usersテーブル

  |名前|Column|Type|Options|
  |---|------|----|-------|
  |ID|id|integer|null: false|
  |名前(全角)|name_full|string|null: false|
  |名前（カナ）|name_cana|string|null: false|
  |メールアドレス|mail|string|null: false|
  |電話番号|call_number|string|null: false|
  |郵便番号|potal_code|string|null: false|
  |都道府県|prefectures|string|null: false|
  |市町村|municipalties|string|null: false|
  |番地|address|string|null: false|
  |建物名（任意）|building_name|string|null: false|

  ### Association

  - has_one :cards
  - has_many :products, through::product_users

  ## cordsテーブル

  |名前|Column|Type|Options|
  |---|------|----|-------|
  |ID|id|integer|null: false|
  |ユーザーID|user_id|integer|null: false,foreign_key: true|
  |トークン|token|string|null: false|

  ### Association

  - belongs_to :user

  ## productsテーブル

  |名前|Column|Type|Options|
  |--|------|----|-------|
  |ID|id|integer|null: false|
  |商品名|name|string|null: false|
  |商品説明|discription|string|null: false|
  |サイズ|size|string|null: false|
  |カテゴリー（スカートなど）|categories|string|null: false|
  |性別|sex|integer|null: false|
  |既製品orリメイク|type|integer|null: false|
  |価格|fee|integer|null: false|
  |購入者|buyer_id|integer|null: true|
  <!-- 既製品のみ購入時にIDを付与する -->

  ### Association

  - has_many :photos
  - has_many :users, through::product_users

  ## photosテーブル

  |名前|Column|Type|Options|
  |--|------|----|-------|
  |ID|id|integer|null: false|
  |商品ID|product_id|integer|null: false,foreign_key: true|
  |画像|image|string|null: false|

  ### Association

  - belongs_to :product

  ## product_usersテーブル

  |Column|Type|Options|
  |------|----|-------|
  |user_id|references|null :false, foreign_key :true|
  |product_id|references|null :false, foreign_key :true|
  |配送状態|status|integer|null: false|
  |裏地の有無|lining|integer|null: false|
  |備考コメント|string|integer|null: true|

  ### Association

  - belongs_to :user
  - belongs_to :product

  ## contactsテーブル

  |名前|Column|Type|Options|
  |---|------|----|-------|
  |ID|id|integer|null: false|
  |名前(全角)|name_full|string|null: false|
  |名前（カナ）|name_cana|string|null: false|
  |メールアドレス|mail|string|null: false|
  |電話番号|call_number|string|null: false|
  |チェック項目|check_item|integer|null: false|
  |内容|content|string|null: false|

  ### Association

  - なし

## Webページ
|PC用|スマートフォン用|
|---|---|
|会社概要|
|![トップページmax](https://user-images.githubusercontent.com/54468465/88477506-86efa200-cf7b-11ea-85f3-b4cf5593b7c4.png)|![トップページmin](https://user-images.githubusercontent.com/54468465/88477510-8eaf4680-cf7b-11ea-87eb-72f077193e8c.png)|
|料金・サイズ一覧|
|![料金サイズ一覧max](https://user-images.githubusercontent.com/54468465/88477512-8fe07380-cf7b-11ea-9f51-969aff1ed119.png)|![料金サイズ一覧min](https://user-images.githubusercontent.com/54468465/88477514-90790a00-cf7b-11ea-9f49-af9a363370b3.png)|
|お問い合わせ|
|![お問い合わせmax](https://user-images.githubusercontent.com/54468465/88474522-4899b900-cf62-11ea-8270-61c16e78c612.png)|![お問い合わせmin](https://user-images.githubusercontent.com/54468465/88474547-8860a080-cf62-11ea-9f1d-57540857ec35.png)|
|管理者ページ|
|![管理者ページmax](https://user-images.githubusercontent.com/54468465/88624516-14e59d00-d0e2-11ea-94f9-5266e3e7b62f.png)|![管理者ページmin](https://user-images.githubusercontent.com/54468465/88624615-452d3b80-d0e2-11ea-96bd-88c797ac01a9.png)|