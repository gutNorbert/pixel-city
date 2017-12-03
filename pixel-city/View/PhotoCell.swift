//
//  PhotoCell.swift
//  pixel-city
//
//  Created by Gutpinter Norbert on 2017. 12. 03..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    override init(frame: CGRect) {  //These are needed for a custom collection Cell
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
