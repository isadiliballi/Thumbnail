//
//  Thumbnail.swift
//  Thumbnails
//
//  Created by İsa Diliballı on 13.06.2021.
//

import AVFoundation
import PDFKit

public final class Thumbnails: AVAsset {
    static let thumbnail = Thumbnails()
    
    func PDF(size: CGSize, url: URL, page: Int) -> UIImage? {
        let pdf = PDFDocument(url: url)
        let pdfPage = pdf?.page(at: page)
        return pdfPage?.thumbnail(of: size, for: PDFDisplayBox.trimBox)
    }
    
    
    func video(url: URL) -> UIImage? {
        do {
            let asset = AVURLAsset(url: url)
            let imageGenerator = AVAssetImageGenerator(asset: asset)
            imageGenerator.appliesPreferredTrackTransform = true
            
            let cgImage = try imageGenerator.copyCGImage(at: .zero, actualTime: nil)
            return UIImage(cgImage: cgImage)
        }
        catch {
            return nil
        }
    }
    
    
    func image(image: UIImage, rate: CGFloat) -> UIImage {
        let size = CGSize(width: image.size.width/rate, height: image.size.height/rate)
        UIGraphicsBeginImageContext(size)
        image.draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return scaledImage!
    }
    
}
