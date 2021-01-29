//
//  SampleViewController.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 10.01.2021.
//

import UIKit

class SampleViewController: UIViewController {
   
    var closeFriends: [String] = [
        "Vasia",
        "Dasha",
        "Kolia",
        "Tania",
        "Dima",
        "Slava"
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ExampleTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")

       
    }
    
}

extension SampleViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(closeFriends[indexPath.row])
    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        <#code#>
//    }
    
}

extension SampleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return closeFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExampleTableViewCell {
            cell.dataLabel.text = closeFriends[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    
    
}
