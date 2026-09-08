# LaTeXExample

学会、論文誌、ミーティング等の各種 LaTeX (pLaTeX / upLaTeX / LuaLaTeX) テンプレート、スタイルファイル、TeXstudio 設定を管理する。

---

## 1. 構成

- `sty/`: 共通スタイルファイル群 (`.sty`)
- `template/`: 学会・研究会・論文誌ごとの文書テンプレート
- `texstudio/`: TeXstudio 設定ファイル
- `utils/`: コンパイル・文書処理用ユーティリティスクリプト

---

## 2. 運用ガイドライン

- **ResearchPub との連携**:
  学会発表（RSJ, SSS, ISS等）や輪講原稿を作成する際は、本リポジトリのテンプレートやスタイルファイルをひな形として活用する。
- **文字コード・コンパイル環境**:
  日本語 LaTeX ドキュメントのコンパイルには `latexmk` や各種 TeX エンジン設定（`~/.latexmkrc` 参照）を用いる。
