//
//  currentData.swift
//  Assignment4-1
//
//  Created by Frank on 2018/7/27.
//  Copyright © 2018 Frank. All rights reserved.
//

import Foundation
import UIKit


struct DataResults: Codable {
    let StationID : String
    let StationName : StationNameIn
    struct StationNameIn : Codable {
        //let Zh_tw : String
        let En : String
    }
    let StationAddress : String
}


