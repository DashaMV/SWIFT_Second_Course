//
//  ProfilViewController.swift
//  VK_Daria
//
//  Created by Dasha Marchenko on 24.12.2020.
//

import UIKit

//нужны протоколы, связанные с таблицами
class ProfileTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
 
    //создадим массив ячеек
    
    let cells: [String] = [
            "Закладки",
            "Понравилось",
            "Архив историй"
        ]

    
//    let cells = (1...100).map {String($0)}
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // нужно создать ячейку для нашей таблицы
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileTableViewCell
        
        cell.menuName.text = cells[indexPath.row]
        
        print("[\(indexPath.section),  \(indexPath.row)]")
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return HeaderView.instantiate()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 112
    }
    
    //уберем лишние ячейки, опишем дополнительный метод
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    

}
