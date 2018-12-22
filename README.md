my thesis templates 
==================

私製のLaTeX用テンプレートを公開しています(2016年4月~)。これまでに作成したもの:

* 三田図書館・情報学会(mslis) 研究大会予稿用: **./mslis_yoko/**
* 筑波大学大学院図書館情報メディア研究科 修士論文用 **./slis_masters_thesis/** -> **OBSOLETE (2018-12-22)** 公式Templateができたようなので、[教務関係](http://www.slis.tsukuba.ac.jp/grad/students/kyoumu/ "教務関係 | 筑波大学 図書館情報メディア系／大学院図書館情報メディア研究科")のページから入手して使うのが無難でしょう
* 情報メディア学会(jsims) 研究大会予稿用: **./jsims_yoko/**

注意事項
---------------------------------
すべて個人的に作成した「**非公式**」なテンプレートであり、それぞれの組織・機関によって承認されたものではありません。ご使用の際には自己責任でお願い致します。書式に変更が加えられた場合などは変更内容に対応していない可能性があるので、その点についてもご注意ください。もしなにかお気づきの点や問題点などありましたら、「jiro at slis.tsukuba.ac.jp」までご連絡いただければ幸いです。

動作環境
---------------------------------
* Mac OS X(10.10.5, Yosemite)
* TeX 3.14159265 (TeX Live 2015), kpathsea version 6.2.1
* Sublime Text3(3103) + LaTeX Plugin for Sublime Text

フォントの埋め込み(メモ)
---------------------------------
以下のように「CURRENT family」の値が「noEmbed」の場合はフォントが埋め込めていない
> $ kanji-config-updmap status
>
> CURRENT family : noEmbed
>
> Standby family : hiragino
>
> Standby family : ipa
>
> Standby family : ipaex

* [はじめてTeXを使う人が知っておくといいことまとめ - Qiita](http://qiita.com/Tats_U_/items/01d48eb70a8b359b0d95)

ファイル単位で調べたい場合は $pdffonts でファイルを指定する

* [pdfにフォントを埋め込む(Mac) - Qiita](http://qiita.com/Masaminr/items/280d65d2720b01c6a9ac)

フォントとしてヒラギノを埋め込みたい場合のTips

* [TeXShop + MacTeX / UpTeX でのヒラギノ フォントの埋め込み](http://osksn2.hep.sci.osaka-u.ac.jp/~taku/osx/embed_hiragino.html)
