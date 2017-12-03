//
//  PopVC.swift
//  pixel-city
//
//  Created by Gutpinter Norbert on 2017. 12. 03..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import UIKit

class PopVC: UIViewController,UIGestureRecognizerDelegate {

    //Outlets
    @IBOutlet weak var popImgView: UIImageView!
    
    var passedImage: UIImage!
    
    func initData(forImage image: UIImage){
        self.passedImage = image
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImgView.image = passedImage
        addDoubleTap()
    }
    
    func addDoubleTap(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped(){
        dismiss(animated: true, completion: nil)
    }

}
