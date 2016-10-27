//
//  CarListViewController.swift
//  CarReader
//
//  Created by Lesha on 27.10.16.
//  Copyright © 2016 Oleksii. All rights reserved.
//

import UIKit

var cars = [Car]()

class CarListTableViewController: UITableViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return cars.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cellIdentifier = "CarTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CarTableViewCell
        let car = cars[indexPath.row]
        cell.brandLabel.text = car.brandName
        cell.modelLabel.text = car.modelName
//        cell.carImageView.image = car.im
        
        return cell
    }
}
