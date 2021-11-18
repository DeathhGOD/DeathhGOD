//
//  ViewController.swift
//  TbleDemo
//
//  Created by Apple on 13/11/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let arry = ["Roti", "Dosa", "Sandwhich"]
    
    let arrRow = [["Tanoori Roti", "Naan", "Paper Roti"], ["Sada Dosa", "Masala Dosa", "Spring Dosa"], ["Cheese Sandwhich", "Grill Sandwhich", "Jumbo Sandwhich"]]
    
    let arrDes = [["An Indian flatbread made of a mix of what flour and called tandoori as it is made in a tandoor or a clay oven", "A leavened flat brea originating from northen India", "Paper roti or Rumali roti is a roti which is thinnest in all the roties"], ["Dosa in the most simplest way and yet delicious", "Dosa made from rice, lentis, potato, fenugreek, ghee and curry leaves", "Basically a fusion of 2 cuisine and is prepared and stuffed similar to veg spring roll"], ["Sandwhich filled with cheese for all the cheese lovers out there", "A sandwhich prepared in grill to bring out the best a sandwhich has to offer", "The baap of all the sandwhiches"]]

    let arrImg = [["Tandoor.jpeg", "naan.jpeg", "roti.jpeg"], ["sada.jpeg", "masala.jpeg", "sada.jpeg"], ["cheese.jpeg", "grill.jpeg", "jumbo.jpeg"]]

    override func viewDidLoad() {
        super.viewDidLoad()
       print("viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arry.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arry[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrRow[section].count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tap on section\(indexPath.section), Row\(indexPath.row)")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let style : UITableViewCell.CellStyle = .subtitle
    let cell = UITableViewCell(style: style, reuseIdentifier: "cell")
        cell.imageView?.image = UIImage(named: arrImg[indexPath.section][indexPath.row])
        cell.imageView?.layer.borderWidth = 2
        cell.imageView?.layer.borderColor = UIColor.brown.cgColor
        cell.imageView?.layer.cornerRadius = 10
        cell.imageView?.clipsToBounds = true
        cell.textLabel?.text = arrRow[indexPath.section][indexPath.row]
        cell.textLabel?.textColor = UIColor.black
        cell.detailTextLabel?.text = arrDes[indexPath.section][indexPath.row]
        cell.detailTextLabel?.numberOfLines = 0
        //cell.detailTextLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell.detailTextLabel?.textColor = UIColor.blue
        
    return cell
    }




}
