# km_portfolio

Flutter 製のポートフォリオサイト。Firebase Hosting 上で公開している。

- Hosting URL: https://kmportfolio-701d8.web.app

## 環境セットアップ

### 1. FVM の導入

Flutter のバージョンはプロジェクトごとに [FVM](https://fvm.app/) で固定している（`.fvmrc` 参照）。

```bash
brew tap leoafarias/fvm
brew install fvm
```

### 2. Flutter の導入

FVM 経由でこのプロジェクトが指定するバージョンの Flutter をインストールする。
Dart SDK は Flutter に同梱されているため、別途インストールは不要。

```bash
fvm install
fvm flutter --version
```

以降、`flutter` コマンドの代わりに `fvm flutter` を使う。

```bash
fvm flutter pub get
```

### 3. Firebase CLI の導入

Hosting へのデプロイに使用する。

```bash
brew install firebase-cli
firebase login
```

ログイン後、`.firebaserc` により対象プロジェクト（`kmportfolio-701d8`）へ自動で紐付く。

### 4. GitHub CLI の導入

PR 作成・確認等に使用する。

```bash
brew install gh
gh auth login
```

### 5. iOS ビルド用ツールチェイン（iOS 実機/シミュレータ向けにビルドする場合）

CocoaPods は Ruby 製のツールのため、システム Ruby に依存せず rbenv でバージョンを固定した上で、
bundler 経由で CocoaPods を導入する（バージョンは `ios/Gemfile` で固定）。

```bash
# rbenv の導入
brew install rbenv ruby-build
rbenv init

# Ruby の導入
rbenv install <バージョンは rbenv install -l で確認>
rbenv local <インストールしたバージョン>   # ios/ 配下で使う Ruby バージョンを固定

# rbenv 配下に bundler を導入
rbenv exec gem install bundler
rbenv rehash

# ios/Gemfile に基づいて CocoaPods を導入
cd ios
bundle install
```

加えて、Xcode の導入（App Store 経由）と、初回起動時のライセンス同意が必要。

```bash
cd ios
bundle exec pod install
```

### 6. Android ビルド用ツールチェイン(Android 実機/エミュレータ向けにビルドする場合)

Android Studio を導入し、Android SDK / エミュレータをセットアップする。

## ビルド & デプロイ (Web)

```bash
fvm flutter build web
firebase deploy --only hosting
```

## 参考

- [Flutter 公式ドキュメント](https://flutter.dev/docs)
- [FVM 公式ドキュメント](https://fvm.app/docs/getting_started/installation)
- [Firebase CLI リファレンス](https://firebase.google.com/docs/cli)
