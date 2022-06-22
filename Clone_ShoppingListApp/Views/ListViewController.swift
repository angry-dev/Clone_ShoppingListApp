//
//  ListViewController.swift
//  Clone_ShoppingListApp
//
//  Created by 전혜성 on 2022/06/22.
//

import UIKit

class ListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // NavigationTitle -> LargeTitle
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }

}


extension UIViewController: UITableViewDataSource {
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 3
        default:
            return 1
        }
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let listCell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as? ListTableViewCell else { return UITableViewCell() }
        guard let addListCell = tableView.dequeueReusableCell(withIdentifier: "addListCell", for: indexPath) as? AddListTableViewCell else { return UITableViewCell() }
        
        switch indexPath.section {
        case 0:
            return listCell
        default:
            return addListCell
        }
        
        
    }
    
    
}
