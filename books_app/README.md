# i18n（国際化）対応

Rails Internationalization (I18n) APIに従って、Railsアプリを多言語化（日本語対応）します。

参考URL：https://railsguides.jp/i18n.html

# やること

## Railsアプリケーションを 国際化する プロセスでは以下を行う必要があります。
- i18nを確実にサポートすること。
- ロケール辞書の置き場所をRailsに指示すること。
- ロケールの設定・保存・切替方法をRailsに指示すること。

## Railsアプリケーションをローカライズする プロセスの場合、おそらく以下の3つの作業が必要となるでしょう。

- Railsのデフォルトロケールの差し替えまたはロケールの追加。日付や時刻のフォーマット、月の呼称、Active Recordモデル名などが対象。
- アプリケーションで使われる文字列を抽象化し、キーで検索できる辞書に保存する。フラッシュメッセージやビュー内の固定テキストなどが対象。
- 作成された辞書を別の場所に保存する。

# やったこと
- ロケール辞書を作成、修正する
  - config/locales/ja.ymlを作成
  - config/locales/en.ymlを修正
  - books_controller.rb noticeに文章が直書き
  - config/application.rb にconfig.i18n.default_locale = :jaを指定
  - index.html.erbの、show.html.erb、edit.html.erb、new.html.erbのテキストを辞書ファイルから取得するように修正
  - リンクの表示を辞書ファイルから取得するように修正
  - 登録ボタン、編集ボタンをactionの種類によって変化するように修正

# これからやる事
- localeの値を変更した時にプログラムで判定する処理を追加する
