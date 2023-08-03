# README

## 業界全体について（参考）

料理レシピアプリケーションの業界は、近年急成長しています。その理由は、以下のとおりです。

スマートフォンの普及により、料理レシピアプリケーションにアクセスしやすくなった。
健康志向の高まりにより、自宅で料理をする人が増えている。
テレビや雑誌の影響により、料理が趣味やライフスタイルとして定着している。
料理レシピアプリケーションは、人々の生活を便利に、楽しく、そして健康にします。料理レシピアプリケーションは、今後も成長していくことが期待されています。

料理レシピアプリケーションの業界の調査、展望を以下にまとめます。

### 調査

料理レシピアプリケーションの市場規模は、2023年までに約1,500億円に達すると予測されています。
料理レシピアプリケーションのユーザー数は、2023年までに約1億人に達すると予測されています。
料理レシピアプリケーションの主なユーザーは、20～30代の女性です。
料理レシピアプリケーションの人気メニューは、パスタ、丼ぶり、カレーなどです。

### 展望

料理レシピアプリケーションは、今後も成長していくことが期待されています。
料理レシピアプリケーションは、人々の生活を便利に、楽しく、そして健康にします。
料理レシピアプリケーションは、食文化の多様化にも貢献します。
<img width="1010" alt="スクリーンショット 2023-08-03 10 24 56" src="https://github.com/shunsukekaneko72106/happyCookingRecipes/assets/61620829/2c576760-9c22-41a4-845f-1dccd0b0b92b">

<img width="619" alt="スクリーンショット 2023-08-03 10 25 33" src="https://github.com/shunsukekaneko72106/happyCookingRecipes/assets/61620829/b949469c-e7a3-49f0-ad3e-20bdf3d3912d">

## アプリケーション全体像
![IMG_0744](https://github.com/shunsukekaneko72106/happyCookingRecipes/assets/61620829/ccc580da-583b-4f2f-b4d9-24ca841d12c0)

## 作成画面
<img width="1783" alt="スクリーンショット 2023-08-03 15 25 22" src="https://github.com/shunsukekaneko72106/happyCookingRecipes/assets/61620829/ff6de724-e2ca-4c4f-b1c9-2a5865ef23a1">

## 設計ポイント

### 写真の見栄えを大きくした
写真は、料理レシピの最も重要な要素です。ユーザーが料理レシピを探す際に、最初に目にする写真は、ユーザーの興味を惹きつける必要があります。そのため、写真の見栄えを大きくすることで、ユーザーの視線を集めやすくしました。

### 30代前半から40代の日本人女性を意識した、シンプルなデザインにした
「たのしいレシピ」のユーザーのボリューム層は、30 代前半から 40 代の日本人女性です。この層のユーザーは、忙しい中でも料理を楽しみたいと考えています。そのため、シンプルなデザインで、操作が簡単なアプリにしました。

### 写真の下にレシピ種別を見やすくした
レシピ種別は、ユーザーが料理レシピを探す際に、重要な情報です。そのため、写真の下にレシピ種別を表示することで、ユーザーが簡単に料理レシピを見つけられるようにしました。

これらの設計により、ユーザーがより楽しく、簡単に料理レシピを探せるアプリを目指しました。

## セットアップ
### セットアップ
#### 1. 必要なソフトウェアのインストール
以下のソフトウェアがシステムにインストールされていることを確認してください:

Ruby (version: 2.7.1)
Rails (version: 6.0.6.1)
Node.js (version: 16.14.0)
Yarn (version: 1.22.19)

#### 2. プロジェクトの解凍
ダウンロードしたZIPファイルを適当な場所に解凍してください。

#### 3. 依存関係のインストール
解凍したプロジェクトディレクトリに移動し、以下のコマンドを実行して依存関係をインストールします。

bash
Copy code
cd <project_folder_name>
bundle install
yarn install

#### 4. サーバの起動
以下のコマンドを実行してサーバを起動します。

Copy code
rails server
以上でセットアップが完了です。ブラウザでhttp://localhost:3000にアクセスすると、アプリケーションを見ることができます。

こちらは基本的なセットアップ手順です。プロジェクトによっては、追加で環境変数の設定や他の設定が必要な場合があります。それらの詳細は、プロジェクトのドキュメンテーションを参照してください。
