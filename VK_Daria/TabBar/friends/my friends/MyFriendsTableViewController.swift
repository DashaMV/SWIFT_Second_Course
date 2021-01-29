//
//  MyFriendsTableViewController.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 10.01.2021.
//

import UIKit

class MyFriendsTableViewController: UITableViewController {
    
    var friends: [String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()


   
        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100 //or whatever you need
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyFriendsTableViewCell {
            cell.myFriendLabel.text = friends[indexPath.row]
            
            return cell
        }
        return UITableViewCell()
    }
    
    //удалим друзей
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //если что-то удаляем об этом должны знать и таблица и массив
            friends.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    @IBAction func unwindFromTableViewController(_ segue: UIStoryboardSegue) {
        print("Выбрали имя")
        
guard let tableViewController = segue.source as? FriendsTableViewController,
let indexPath = tableViewController.tableView.indexPathForSelectedRow else {return}
        
        let friend = tableViewController.closeFriends[indexPath.row]

        print(friend)

        //сделаем проверку, чтобы дважды не добавлять одно и то же имя

        if friends.contains(friend) {return}

        friends.append(friend)
        //обновим таблицу
        tableView.reloadData()
    }
  
    
}
