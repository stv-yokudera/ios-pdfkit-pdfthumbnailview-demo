# PDFThumbnailView

## 概要
PDFThumbnailViewは、PDFのサムネイルを表示するクラスです。
Interface Builderを使用して生成可能です。

## 関連クラス
PDFView
PDFDocument
　
## 実装手順
1. StoryboardにUIViewを配置します。
2. UIViewのCustom ClassにPDFThumbnailViewを設定します。
3. UIViewControllerとStoryboardのPDFThumbnailViewを関連付けます。
4. PDFThumbnailViewのpdfViewプロパティにPDFViewオブジェクトをセットして画面に表示させます。

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|pdfView | PDFViewオブジェクトを設定する | pdfThumbnailView.pdfView = pdfView |
|layoutMode | サムネイルを水平方向に並べるか、垂直方向に並べるか設定する | pdfThumbnailView.layoutMode = .horizontal |
|backgroundColor | 背景色を設定する | pdfThumbnailView.backgroundColor = .lightGray |
|thumbnailSize | サムネイルのサイズを設定する | pdfThumbnailView.thumbnailSize = CGSize(width: 80, height: 80) |

## フレームワーク
PDFKit.framework

## サポートOSバージョン
iOS11.0以上

## 開発環境
|category | Version|
|---|---|
| Swift | 4.0 |
| XCode | 9.0 |
| iOS | 11.0〜 |

## 参考
https://developer.apple.com/documentation/pdfkit/pdfthumbnailview
