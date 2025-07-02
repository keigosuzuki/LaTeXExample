# Thesis Template
# 卒業論文・修士論文・博士論文テンプレート

- 複数あるテンプレートの中から好きなものをコピーして自由に使ってください。
- 基本的にpreamble.styは共通になっています。
- 個人的に加えたいパッケージはコピーしたpreamble.styに適宜加えて使ってください。

## 各ディレクトリの内容

### abstract_template
論文の要約(A41枚表裏にまとめるなど)用

- template_1
    - 主に卒業論文中間報告用
    - 文書スタイルはjsarticle
    - 2段組み

- template_2
    - 主に新領域の修士論文中間報告用
    - 文書スタイルはjsarticle
    - 2段組み

- template_3
    - 主に新領域の修士論文本審査用
    - 文書スタイルはjsarticle
    - 2段組み

### thesis_template

- front_page
    - 卒業論文中間報告と卒業論文の表紙(注意:拡張子は.docx)
- publication_example
    - 過去の先輩方の発表文献(publication.tex)の例
- template_1
    - 堀藤本研究室の伝統的なフォーマット
    - 主に卒業論文や修士論文用
    - 文書スタイルはjreport
    - 論文形式の片面刷り(oneside)
    - 1段組み(onecolumn)
- template_2
    - 新しいフォーマット
    - 主に博士論文用
    - 文書スタイルはjsbook
    - 基本は冊子形式の両面刷り
    - 論文形式の片面刷りにしたい場合は\documentclassのオプションを変更
        - twoside -> oneside
        - report オプションを追加
    - 1段組み(onecolumn)
- template_3
    - 枚数制限が厳しいとき用
    - 主に卒業論文中間報告用
    - 文書スタイルはjsarticle
    - 論文形式の片面刷り(oneside)

## thesisのtemplate_1と2のディレクトリ構成
今のところこの構成がベストかと思っています。

- template_1 or 2
    - chapter
        - 各章のtexファイル
        - documuteによって個別コンパイルも可能
    - fig
        - 画像ファイルを入れる(拡張子は.pdf推奨)
    - main
        - preamble.sty
            - \usepackageなど基本どのテンプレートも共通
            - 適宜個人的に加えたいパッケージがあれば追加
        - thesis.tex
            - 論文本体
            - chapterの中身を統合

## 注意
- dvipdfmxは\documentclassのオプションで指定するのがオススメです。
- preamble内では必ず hyperref -> color -> graphicx の順番で読み込んでください。
- 余白調整にはgeometry.styを使ってください。(\geometryの中の値を変更してください。)
