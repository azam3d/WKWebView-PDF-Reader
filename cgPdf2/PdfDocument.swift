//
//  PdfDocument.swift
//  cgPdf2
//
//  Created by Muhammad Azam Bin Baderi on 11/22/16.
//  Copyright © 2016 Muhammad Azam Bin Baderi. All rights reserved.
//

import Foundation
import CoreGraphics

struct PdfDocument {
    let pageCount: Int
    let coreDocument: CGPDFDocument
    
    init?(fileUrl: URL) {
        guard let coreDocument = CGPDFDocument(fileUrl as CFURL) else { return nil }
        self.coreDocument = coreDocument
        self.pageCount = coreDocument.numberOfPages
    }
}
