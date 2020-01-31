//
//  CreateProgramViewController.swift
//  weCare
//
//  Created by Orhan Özdemir on 29.01.2020.
//  Copyright © 2020 PRS Kozmetik. All rights reserved.
//

import UIKit

class CreateProgramViewController: BaseViewController {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var createTable: UITableView!
    
    let map = ["Ürün Seç","Günleri Seç","Sıklık Seç"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTable.delegate = self
        createTable.dataSource = self
        createTable.register(UINib(nibName: "CreateProgramTitleCell", bundle: nil), forCellReuseIdentifier: "CreateProgramTitleCell")
        updateView()
    }
    
    func updateView() {
        
    }
}

extension CreateProgramViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return map.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CreateProgramTitleCell") as! CreateProgramTitleCell
        cell.setCell(order: indexPath.row + 1, title: map[indexPath.row])
        return cell
    }
}
