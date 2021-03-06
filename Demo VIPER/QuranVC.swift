//
//  QuranVC.swift
//  Demo VIPER
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit

class QuranVC: UIViewController {
   
    
   weak var presenter: PresenterProtocol?
    
    let tableList = UITableView()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableViewConfigration()
        presenter?.startAPI()
    }

    
    func setTableViewConfigration(){
        view.addSubview(tableList)
        tableList.register(QuranCell.self, forCellReuseIdentifier: QuranCell.reuseID)
        tableList.delegate   = self
        tableList.dataSource = self
        tableList.showsVerticalScrollIndicator = false
        tableList.showsHorizontalScrollIndicator = false
        tableList.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableList.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor),
            tableList.leadingAnchor.constraint(equalTo:view.leadingAnchor),
            tableList.trailingAnchor.constraint(equalTo:view.trailingAnchor),
            tableList.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}


extension QuranVC : ViewProtocol {
    
    func dataGetSucessfully() {
        self.tableList.reloadData()
    }
    
    func showProgress() {
        print("Show Progress")
    }
    
    func hiddeProgress() {
        print("Hidde Progress")
    }
    
}
