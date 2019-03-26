//
//  BLIHLogger.swift
//  BLIH
//
//  Created by Guillaume Monot on 26/03/2019.
//  Copyright © 2019 Guillaume Monot. All rights reserved.
//

import Foundation
import SwiftyBeaver

// Create global variable for logs
let logger =  SwiftyBeaver.self

struct BLIHLogger {
    static func setup() {
        let console = ConsoleDestination()
        
        console.format = "$D[HH:mm:ss]$d $L - $N.$F:$l > $M"
        console.levelString.verbose = "📔 -- VERBOSE"
        console.levelString.debug = "📗 -- DEBUG"
        console.levelString.info = "📘 -- INFO"
        console.levelString.warning = "📙 -- WARNING"
        console.levelString.error = "📕 -- ERROR"
        
        logger.addDestination(console)
    }
}
