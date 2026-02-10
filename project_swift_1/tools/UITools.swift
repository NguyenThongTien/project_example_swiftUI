//
//  UITools.swift
//  project_swift_1
//
//  Created by Nguyễn Thông Tiến on 9/2/26.
//

import SwiftUI

let zonnData: [ZoneModel] = getZoneModel()

func getZoneModel() -> [ZoneModel] {

    let model = ZoneModel(id: 1000, name: "name1 Nguyen thong tien", imageName: "meIcon", category: "233")
    let model0 = ZoneModel(id: 1001, name: "name2", imageName: "meIcon", category: "233")
    let model1 = ZoneModel(id: 1002, name: "name3", imageName: "meIcon", category: "233")
    let model2 = ZoneModel(id: 1003, name: "name4", imageName: "meIcon", category: "233")
    let model3 = ZoneModel(id: 1004, name: "name5", imageName: "meIcon", category: "233")
    let model4 = ZoneModel(id: 1005, name: "name6", imageName: "meIcon", category: "233")
    let model5 = ZoneModel(id: 1006, name: "name7", imageName: "meIcon", category: "233")
    var models = [ZoneModel]()
    models.append(model)
    models.append(model0)
    models.append(model1)
    models.append(model2)
    models.append(model3)
    models.append(model4)
    models.append(model5)
    
    return models
}

final class ImageStore {
    fileprivate typealias _ImageDictionary = [String: [Int: CGImage]]
    fileprivate var images: _ImageDictionary = [:]
    
    fileprivate static var originalSize = 250
    fileprivate static var scale = 2
    
    static var shared = ImageStore()
    
    func image(name: String, size: Int) -> Image {
        let index = _guaranteeInitialImage(name: name)
        
        let sizedImage = images.values[index][size]
            ?? _sizeImage(images.values[index][ImageStore.originalSize]!, to: size * ImageStore.scale)
        images.values[index][size] = sizedImage
        
        return Image(sizedImage, scale: CGFloat(ImageStore.scale), label: Text(verbatim: name))
    }
    
    fileprivate func _guaranteeInitialImage(name: String) -> _ImageDictionary.Index {
        if let index = images.index(forKey: name) { return index }
        
        guard
            let url = Bundle.main.url(forResource: name, withExtension: "jpg"),
            let imageSource = CGImageSourceCreateWithURL(url as NSURL, nil),
            let image = CGImageSourceCreateImageAtIndex(imageSource, 0, nil)
            else {
                fatalError("Couldn't load image \(name).jpg from main bundle.")
        }
        
        images[name] = [ImageStore.originalSize: image]
        return images.index(forKey: name)!
    }
    
    fileprivate func _sizeImage(_ image: CGImage, to size: Int) -> CGImage {
        guard
            let colorSpace = image.colorSpace,
            let context = CGContext(
                data: nil,
                width: size, height: size,
                bitsPerComponent: image.bitsPerComponent,
                bytesPerRow: image.bytesPerRow,
                space: colorSpace,
                bitmapInfo: image.bitmapInfo.rawValue)
            else {
                fatalError("Couldn't create graphics context.")
        }
        context.interpolationQuality = .high
        context.draw(image, in: CGRect(x: 0, y: 0, width: size, height: size))
        
        if let sizedImage = context.makeImage() {
            return sizedImage
        } else {
            fatalError("Couldn't resize image.")
        }
    }
}

