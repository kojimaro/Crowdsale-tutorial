CrowdsaleTutorial
====

このプロジェクト( [kojimaro/Crowdsale-tutorial](https://github.com/kojimaro/Crowdsale-tutorial) )は、OpenZeppelin2.x系とTruffle5.x系を利用してクラウドセールの作成を行うチュートリアルです。

・[Truffle](https://github.com/trufflesuite/truffle)

・[OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-solidity)

## Simple
ETHが送られればトークンを返す機能のみのクラウドセールコントラクトです。

チュートリアルはこちら↓

[シンプルなクラウドセールの実装手順【OpenZeppelin2.0】](http://kojiryo.com/1402/)


## 使い方
はじめにチュートリアルプロジェクトをダウンロードします。

```git clone https://github.com/kojimaro/Crowdsale-tutorial.git```

続いてターミナルを使って、起動したいプロジェクトディレクトリに移動します。

``` cd simple```

「node_modules」をインストールします。

``` npm install```

Ganacheを起動します。

![Ganache(GUI)](http://kojiryo.com/wp-content/uploads/2018/12/a7cdf7fabf72467403bfce5522f1233a.png)

```
developmentへの接続設定は、Ganache(GUI版)に合わせた設定にしてあります。
Ganache-cliを利用する場合は、truffle-config.jsのポートをCLI版に合わせてください。

例:
  development: {
      host: "127.0.0.1",     // Localhost (default: none)
      port: 8545,            // Standard Ethereum port (default: none)
      network_id: "*",       // Any network (default: none)
  },
```

プライベートネットにコントラクトをデプロイします。

```truffle migrate```

プライベートネットのノードにアクセスします

```truffle console```

あとは各チュートリアルの記事に沿って、動かしてみてください！
- [simpleを動かす](http://kojiryo.com/1402/#outline__3_2)

## ライセンス
MIT
