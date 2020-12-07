//
//  Receipt.swift
//  SwiftEatsApp
//
//  Created by Chelsey Bergmann on 12/7/20.
//
import UIKit
import Foundation

class Receipt: UIViewController {
    @IBOutlet weak var entreeLabel: UILabel!
    @IBOutlet weak var sideLabel: UILabel!
    @IBOutlet weak var drinkLabel: UILabel!
    @IBOutlet weak var restaurantLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var entreeString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        func getEntree(entreeString: String) {
            entreeLabel?.text = entreeString
        }
        //override func changeRestLabel( _)
        // Change the label text for each IBOutlet.
        // Ex entreeLabel?.text = "hamburger" but whichever was selected.
        entreeLabel?.text = "Hamburger"
        sideLabel?.text = "Fries"
        drinkLabel?.text = "Coke"
        totalLabel?.text = "$5.68"
        restaurantLabel?.text = "Mcdonald's"
        //entreeLabel?.text = getEntree(entreeString: <#T##String#>)
    }
    
    
}
