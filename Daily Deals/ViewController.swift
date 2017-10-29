//
//  ViewController.swift
//  Daily Deals
//
//  Created by Admin on 27/10/2017.
//  Copyright © 2017 globia Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBAction func asd(_ sender: Any) {
        
      
    }
    
    @IBOutlet weak var navigatelabel: UIView!
    
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var navigatelbl: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
      /*  let button =  UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        button.backgroundColor = UIColor.white
        button.setTitleColor(.black, for: .normal)
   //     button.titleColor(for: .normal) = UIColor.black
        button.setTitle("San Fransico  ▼", for: .normal)
        button.addTarget(self, action: #selector(self.clickOnButton), for: .touchUpInside)
        self.navigatelabel.vi = button
        tableview.rowHeight = UITableViewAutomaticDimension
    */
      
        //navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "icons8-settings"), landscapeImagePhone: #imageLiteral(resourceName: "icons8-settings"), style: .plain, target: self, action: #selector(SSASideMenu.presentLeftMenuViewController))
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0
        {
            return 150.0
        }
        else
        {
            return 200.0
        }
    }
    @objc func clickOnButton(button: UIButton) {
        print("Shukr")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.row == 0
       {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ResturantsCell
         cell = cell1
        }
        if indexPath.row >= 1
        {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! secondTableViewCell
            cell2.itemimage.image = #imageLiteral(resourceName: "Pizza1.jpg")
            cell = cell2
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            
        return 4
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}

extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate
{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CatagoriesCell
        cell.ImageView.image = #imageLiteral(resourceName: "icons8-more-than")
        return cell
    }
    
    
}

