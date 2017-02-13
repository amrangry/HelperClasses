//
//  UIImageHelper.swift
//  Rayhan
//
//  Created by Amr AlGhadban on 2/13/17.
//  Copyright © 2017 Arooba. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    
   static func drawImage(image:UIImage, inShapeMask:UIImage)->UIImage{
    
        let imageReference = image.cgImage
        let shapeMaskReference = inShapeMask.cgImage
    
        let imageMask = CGImage(maskWidth: shapeMaskReference!.width,
                            height: shapeMaskReference!.height,
                            bitsPerComponent: shapeMaskReference!.bitsPerComponent,
                            bitsPerPixel: shapeMaskReference!.bitsPerPixel,
                            bytesPerRow: shapeMaskReference!.bytesPerRow,
                            provider: shapeMaskReference!.dataProvider!, decode: nil, shouldInterpolate: true)
    
        let maskedReference = imageReference!.masking(imageMask!)
    
        let maskedImage = UIImage(cgImage:maskedReference!)
    
        return maskedImage
    }
}
