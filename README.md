# my_app

A new Flutter project.

---

## アーキテクチャー

本プロジェクトでは、**アトミックデザイン** の考え方を取り入れた UI 設計と、  
**Riverpod** による状態管理を採用しています。  

---

## フォルダ構成

```plaintext
lib/
├─ core/                       # アプリ全体で使う共通機能
│   ├─ error/                  # 共通の例外クラス、エラーハンドリング
│   ├─ network/                # API クライアント、Interceptor
│   ├─ theme/                  # カラー、テキストスタイル、テーマ設定
│   ├─ router/                 # ルーティング設定
│   ├─ utils/                  # ヘルパー、拡張メソッド
│   ├─ constants/              # 定数、型定義
│   └─ widgets/                # 共通UI（Dialog, Loader, ErrorView など）
│
├─ features/                   # 機能ごとに分割
│   ├─ auth/                   # 認証機能の例
│   │   ├─ data/               # Repository, API クライアント
│   │   ├─ domain/             # Entity, UseCase
│   │   ├─ providers/          # Riverpod の Provider / StateNotifier
│   │   └─ presentation/       # UI (アトミックデザイン)
│   │       ├─ atoms/          # ボタン、テキスト入力など最小単位
│   │       ├─ molecules/      # 部品の組み合わせ (フォーム、カードなど)
│   │       ├─ organisms/      # 複合的な UI (ヘッダー、リストなど)
│   │       ├─ templates/      # 画面レイアウトの枠組み
│   │       └─ pages/          # 実際のページ (ログイン画面など)
│   │
│   └─ home/                   # ホーム機能の例
│       ├─ data/
│       ├─ domain/
│       ├─ providers/
│       └─ presentation/
│           ├─ atoms/
│           ├─ molecules/
│           ├─ organisms/
│           ├─ templates/
│           └─ pages/
│
├─ shared/                     # 複数 feature で共通利用する UI
│   ├─ atoms/
│   ├─ molecules/
│   ├─ organisms/
│   └─ templates/
│
└─ main.dart                   # エントリーポイント
