//
//  ViewController.swift
//  sampletableview
//
//  Created by OCS Developer 15 on 03/06/17.
//  Copyright © 2017 OCS Developer 15. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    var Name = ["Raja", "Mohan", "Ragu", "Guru", "Arun", "Illam",
                  "Vicky", "Pratheep", "Selvakumar", "Vijay"]
    
    var fruitsimg = ["beautiful_fruits-t2.jpg", "fresh_apple_fruit_hd_wallpapers.jpg", "fruit-hd-wallpaper-0218.jpg", "mixed-fruit-hd-wallpaper.jpg", "Fruit-Cheery-HD-Wallpapers.jpg", "1f90a61ee1f3c7a926507d35de277e8e.jpg","beautiful_fruits-t2.jpg", "7-2.jpg", "fruit-juices-hd-wallpaper.jpg", "strawberries-fruit-hd-wallpaper.jpg"]

    var time = ["10:15AM", "8:15AM", "7:15AM", "6:15AM", "5:15AM", "4:15AM",
                "3:15PM", "2:15PM", "1:15PM", "9:15PM"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.register(UINib(nibName: "tableviewTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Name.count
    }
    
    // cell height
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "Cell", for: indexPath ) as! tableviewTableViewCell
       
       cell.imageview.image = UIImage(named: fruitsimg[indexPath.row])
        // connect objects with our information from arrays
//        cell.usernameBtn.setTitle(usernameArray[indexPath.row], for: UIControlState.normal)
//        cell.usernameBtn.sizeToFit()
        
        
        cell.namelbl.text = Name[indexPath.row]
        
        cell.timelbl.text = time[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView,heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        
        return 100
    }
    
    
    


}


