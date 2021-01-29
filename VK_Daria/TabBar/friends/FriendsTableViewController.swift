//
//  FriendsTableViewController.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 09.01.2021.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
   
    var closeFriends = [
        "Vasia",
        "Dasha",
        "Kolia",
        "Tania",
        "Dima",
        "Slava"
    ]
    
    
    
    var distantFriend = [
        "Oleg",
        "Lena",
        "Alla"
    ]
    
    let friendСategories = [
        "close",
        "distant"
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return friendСategories.count
    }
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        switch section {
        case 0:
            return closeFriends.count
            
        case 1:
            return distantFriend.count
        default:
            return 0
        }
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       return friendСategories[section]
    }

    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            switch indexPath.section {
            case 0:
                closeFriends.remove(at: indexPath.row)
            case 1:
                distantFriend.remove(at: indexPath.row)
            default:
                break
            }
            tableView.deleteRows(at: [indexPath], with:. fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? FriendsTableViewCell {
            switch indexPath.section {
            case 0:
                cell.friendLabel.text = closeFriends[indexPath.row]
                return cell
            case 1:
                cell.friendLabel.text = distantFriend[indexPath.row]
                return cell
            default:
                return UITableViewCell()
            }
            
            
        }
        
        return UITableViewCell()
    }

}
