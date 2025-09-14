# my_app

A new Flutter project.

---

## アーキテクチャー

本プロジェクトでは、**アトミックデザイン** の考え方を取り入れた UI 設計と、  
**Riverpod** による状態管理を採用しています。

---

## フォルダ構成

```
lib/
├─ core/                       # アプリ全体で使う共通機能・UI
│   ├─ error/                  # 共通の例外クラス、エラーハンドリング
│   ├─ network/                # API クライアント、Interceptor
│   ├─ theme/                  # カラー、テキストスタイル、テーマ設定
│   ├─ router/                 # ルーティング設定
│   ├─ utils/                  # ヘルパー、拡張メソッド
│   ├─ constants/              # 定数、型定義
│   └─ widgets/                # 汎用UI・アトミックコンポーネント（Button, Card, Dialog, Loader, ErrorView など）
│
├─ features/                   # 機能ごとに分割
│   ├─ auth/                   # 認証機能
│   │   ├─ providers/          # Riverpod の Provider / StateNotifier
│   │   ├─ repository/         # API クライアント・データ取得
│   │   └─ ui/                 # UI (アトミックデザイン)
│   │       ├─ atoms/          # ボタン、テキスト入力など最小単位
│   │       ├─ molecules/      # 部品の組み合わせ (フォーム、カードなど)
│   │       ├─ organisms/      # 複合的な UI (ヘッダー、リストなど)
│   │       ├─ templates/      # 画面レイアウトの枠組み
│   │       └─ pages/          # 実際のページ (ログイン画面など)
│   │
│   └─ home/                   # ホーム機能
│       ├─ providers/
│       ├─ repository/
│       └─ ui/
│           ├─ atoms/
│           ├─ molecules/
│           ├─ organisms/
│           ├─ templates/
│           └─ pages/
│
└─ main.dart                   # エントリーポイント

```

## 命名規則

ファイル・フォルダ名 → snake_case
例: home_page.dart, user_repository/, auth_provider/

クラス名 → UpperCamelCase
例: HomePage, UserRepository

変数・関数名 → lowerCamelCase
例: fetchUser(), homePageProvider

追加
flutter pub remove flutter_riverpod
