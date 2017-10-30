//
//  ViewController.swift
//  ios-pdfkit-pdfthumbnailview-demo
//
//  Created by OkuderaYuki on 2017/10/30.
//  Copyright © 2017年 OkuderaYuki. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {

    @IBOutlet weak var pdfView: PDFView!
    @IBOutlet weak var pdfThumbnailView: PDFThumbnailView!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupPdfThumbnailView()
        
        let pdfName = "test"
        showPDF(pdfName: pdfName)
    }
    
    // MARK: - PDF表示
    
    /// ローカルのPDFのファイル名を指定して、画面に表示する
    ///
    /// - Parameter pdfName: foo.pdfの場合 -> foo
    func showPDF(pdfName: String, usePageViewController: Bool = false) {
        if let pdfPath = Bundle.main.path(forResource: pdfName, ofType: "pdf"),
            let fileHandle = FileHandle(forReadingAtPath: pdfPath) {
            let pdfData = fileHandle.readDataToEndOfFile()
            pdfView.usePageViewController(usePageViewController)
            pdfView.document = PDFDocument(data: pdfData)
        }
    }
    
    // MARK: - PDFサムネイル表示
    
    /// pdfThumbnailViewの初期処理をする
    func setupPdfThumbnailView(layoutMode: PDFThumbnailLayoutMode = .horizontal,
                               backgroundColor: UIColor = .lightGray,
                               thumbnailSize: CGSize = CGSize(width: 80, height: 80)) {
        pdfThumbnailView.pdfView = pdfView
        pdfThumbnailView.layoutMode = layoutMode
        pdfThumbnailView.backgroundColor = backgroundColor
        pdfThumbnailView.thumbnailSize = thumbnailSize
    }
}

