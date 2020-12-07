//
//  TacoBell.swift
//  Swift Eats
//
//  Created by Chloe Dillingham on 12/6/20.
//

import Foundation
import UIKit

class TacoBell: UIViewController {

    
    //var mcd = UIMcd()
    var menuItems = ["Quesadilla $4", "Cinnamon Twists $2", "Crunch Wrap $5", "Taco $2"]
    
    
    /*
     Construct the header.
     */
    func TacoBell(_ TacoBell: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: TacoBell.frame.width, height: 20))

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
      func TacoBell(_ TacoBell: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TacoBell.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel!.text = menuItems[indexPath.row]
       
        // Color alternate
        if (indexPath.row % 2 == 1) {
            cell.backgroundColor = UIColor.white
        } else {
            cell.backgroundColor = UIColor.purple
        }
        return cell
      }
    
}
