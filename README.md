# ContainerForge: Azureコンテナ実践プロジェクト

<p align="center">
  <img src="sources/azuure.png" alt="animated">
</p>

![Git](https://img.shields.io/badge/GIT-E44C30?logo=git&logoColor=white)
![gitignore](https://img.shields.io/badge/gitignore%20io-204ECF?logo=gitignoredotio&logoColor=white)
![Azure](https://img.shields.io/badge/azure-%230072C6.svg?logo=microsoftazure&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?logo=terraform&logoColor=white)
![Commit Msg](https://img.shields.io/badge/Commit%20message-Eg-brightgreen.svg)
![Code Cmnt](https://img.shields.io/badge/code%20comment-Ja-brightgreen.svg)

## プロジェクト概要

このプロジェクトは、Azure Container Appsを活用したアプリケーション実装の練習リポジトリです。

## 技術構成

- **Azure Container Apps**: コンテナベースのサーバーレスホスティング環境
- **Azure Container Registry**: コンテナイメージの保存・管理
- **Azure Log Analytics**: ログデータの収集・分析プラットフォーム

## 特徴

- App Serviceから脱却し、マイクロサービスアーキテクチャに適したAzure Container Appsを採用
- コンテナ化によるデプロイの一貫性と環境の再現性を実現
- Log Analyticsを用いたアプリケーションログの統合管理により、監視・トラブルシューティングを効率化

### 起動とデプロイ方法

以下のコードを実行してインフラを構築します。
```
bin/terraform_apply
```

#### 停止
以下のコードを実行すると停止できます。
```
bin/terraform_destroy
```
