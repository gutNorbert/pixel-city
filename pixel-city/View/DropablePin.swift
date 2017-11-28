//
//  DropablePin.swift
//  pixel-city
//
//  Created by Gutpinter Norbert on 2017. 11. 28..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import UIKit
import MapKit

class DropablePin: NSObject, MKAnnotation { //bec of the pin u need these
   dynamic var coordinate: CLLocationCoordinate2D //dynamic can be modified
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
