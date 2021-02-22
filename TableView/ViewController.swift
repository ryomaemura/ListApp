//
//  ViewController.swift
//  TableView
//
//  Created by Maemura Ryo on 2021/02/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  var fruits = ["りんご", "みかん", "ブドウ", "レモン", "スイカ"]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return fruits.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.textLabel!.text = fruits[indexPath.row]
    return cell
  }


}

