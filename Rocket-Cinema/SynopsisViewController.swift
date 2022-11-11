//
//  SynopsisViewController.swift
//  Rocket-Cinema
//
//  Created by Aline do Amaral on 11/11/22.
//

import UIKit

class SynopsisViewController: UIViewController {
     
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var synopsiLabel: UILabel!
    @IBOutlet weak var imageSeries: UIImageView!
    @IBOutlet weak var analysisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackTap(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    

}


