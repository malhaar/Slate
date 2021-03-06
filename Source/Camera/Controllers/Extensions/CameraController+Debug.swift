//
//  CameraController+Debug.swift
//  Slate
//
//  Created by John Coates on 6/2/17.
//  Copyright © 2017 John Coates. All rights reserved.
//

import Foundation
import AVFoundation

extension CameraController {
    
    func printAvailableFormatTypes(forDataOutput dataOutput: AVCaptureVideoDataOutput) {
        #if os(iOS)
            return
        #endif
        
        #if os(macOS)
            let formatTypes = dataOutput.availableVideoPixelFormatTypes
            
            for formatType in formatTypes {
                let osType = UTCreateStringForOSType(formatType).takeRetainedValue() as String
                print("available pixel format type: \(osType)")
            }
        #endif
    }
    
}
