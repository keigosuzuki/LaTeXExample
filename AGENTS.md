# LaTeXExample

学会、論文誌、ミーティング等の各種 LaTeX (pLaTeX / upLaTeX / LuaLaTeX) テンプレート、スタイルファイル、TeXstudio 設定を管理する。

---

## 1. 構成

- `sty/`: 共通スタイルファイル群 (`.sty`)
- `template/`: 学会・研究会・学位論文ごとの文書テンプレート
  - `eeis/`: 電気系輪講・学内ゼミ発表資料
  - `faq/`: LaTeX 基礎・FAQ 解説ドキュメント
  - `preamble/`: 用途別プリアンブルスタイル集 (`preamble_common.sty`, `preamble_mae.sty`, `preamble_ri.sty`)
  - `thesis/`: 学位論文（卒論・修論・博論）および要約（Abstract）テンプレート
- `texstudio/`: TeXstudio 設定プロファイル (`.txsprofile`)
- `utils/`: 文書処理用ユーティリティスクリプト (`zen2han.sh` 等)

---

## 2. 運用ガイドライン

- **ResearchPub との連携**:
  学会発表（RSJ, SSS, ISS等）や輪講原稿を作成する際は、本リポジトリのテンプレートやスタイルファイルをひな形として活用する。
- **文字コード・コンパイル環境**:
  - 全ての `.tex` ソースは **UTF-8** で管理する。
  - コンパイル環境は **TeX Live / MacTeX** を標準とし、`latexmk` 経由での自動ビルド（`~/.latexmkrc` 参照）を推奨する。
- **プリアンブルのモダン化**:
  新規スタイル・文書作成時は非推奨パッケージ（`epsf`, `subfigure`, `times` 等）を避け、標準的なモダンパッケージ（`graphicx`, `subcaption`, `newtxtext`, `bm` 等）を使用する。
