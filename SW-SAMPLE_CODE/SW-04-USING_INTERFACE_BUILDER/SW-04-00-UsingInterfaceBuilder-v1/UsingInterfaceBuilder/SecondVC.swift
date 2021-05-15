//
//  SecondVC.swift
//  UsingInterfaceBuilder
//
//  Created by ignasiperez.com on 15/05/2021.
//

import UIKit

class SecondVC: UIViewController {
  
  @IBOutlet weak var centerXConstraint: NSLayoutConstraint!
  
  @IBOutlet weak var centerYConstraint: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    
    
    // Deactivate a constraint
    centerXConstraint.isActive = false // Change priority
    centerXConstraint.priority = .defaultLow
    // Change constant value
    centerXConstraint.constant = 50.0
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
