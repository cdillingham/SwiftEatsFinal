//
//  Chipotle.swift
//  Swift Eats
//
//  Created by Chloe Dillingham on 12/6/20.
//

import Foundation
import UIKit

class Chipotle: UIViewController {

    
    //var mcd = UIMcd()
    var menuItems = ["Burrito $4", "Rice $2", "Guacamole $3", "Beans $2"]
    
    
    /*
     Construct the header.
     */
    func Chipotle(_ Chipotle: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: Chipotle.frame.width, height: 20))

            let label = UILabel()
       
        label.frame = CGRect.init(x: 0, y: 0, width: headerView.frame.width-5, height: headerView.frame.height)
            label.text = "Choose a menu item: "
            
        label.textColor = UIColor.black
        label.textAlignment = .center

            headerView.addSubview(label)
        label.center.x = self.view.center.x
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
            return headerView
        }
    
    // Dispose of any resources that can be recreated.
    override func didReceiveMemoryWarning() {
          super.didReceiveMemoryWarning()
      }
    
    
    
    /*
     Construct each table cell.
     */
      func Chipotle(_ Chipotle: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Chipotle.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel!.text = menuItems[indexPath.row]
       
        // Color alternate
        if (indexPath.row % 2 == 1) {
            cell.backgroundColor = UIColor.brown
        } else {
            cell.backgroundColor = UIColor.white
        }
        return cell
      }
    
}
