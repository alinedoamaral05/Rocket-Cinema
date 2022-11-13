//
//  ViewController.swift
//  Rocket-Cinema
//
//  Created by Aline do Amaral on 11/11/22.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var media: [Media] = []
    var author: [Author] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        author = createAuthors()
        media = createMedias()
        
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return media.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CellConfig
        
        cell.setCellConfig(media, indexPath)
        
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let storyBoard = UIStoryboard(name: "SynopsisScreen", bundle: .main)
        let synopsisViewController = storyBoard.instantiateViewController(withIdentifier: "synopsis") as! SynopsisViewController
       
        synopsisViewController.modalPresentationStyle = .overFullScreen
        present(synopsisViewController, animated: true)
    }
}

