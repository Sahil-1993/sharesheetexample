//
//  ViewController.swift
//  ShareSheetExample
//
//  Created by Sahil Arora on 2020-11-22.
//  Copyright © 2020 Sahil Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var btn:UIButton = {
       
        var button = UIButton()
        button.backgroundColor = UIColor.lightGray
        button.setTitle("Share", for: .normal)
        button.addTarget(self, action: #selector(openActionShareSheet), for: .touchUpInside)
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btn.frame = CGRect(x: 20, y: (self.view.frame.size.height-60)/2, width: self.view.frame.size.width-40, height: 60)
        view.addSubview(btn)
    }

    @objc func openActionShareSheet(){
        
        guard let image = UIImage(named: "Netflix") else{return}
        
        let shareSheet = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(shareSheet, animated: true, completion: nil)
    
    }

}

