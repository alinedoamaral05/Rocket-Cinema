//
//  ViewController.swift
//  Rocket-Cinema
//
//  Created by Aline do Amaral on 11/11/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeTableView: UITableView!
    var media: [Media] = []
    var author: [Author] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        homeTableView.dataSource = self
        //homeTableView.delegate = self
        // Do any additional setup after loading the view.
    }

}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        media.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: "cell") as! CellConfig
        
        //cell.setCellConfig(media[IndexPath.row])
        
        return cell
    }
    
    
}

