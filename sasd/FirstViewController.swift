//
//  FirstViewController.swift
//  sasd
//
//  Created by sameh mohammed on 2/4/18.
//  Copyright © 2018 com.trio. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController ,  UIPopoverPresentationControllerDelegate {
    @IBOutlet weak var qq: UIButton!
    
    @IBAction func sdew(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "bbb") as! ttttViewController
        vc.modalPresentationStyle = .popover //presentation style
        
         vc.preferredContentSize = CGSize(width: 150,height: 150)
        vc.popoverPresentationController?.delegate = self
        vc.popoverPresentationController?.sourceView = view
        vc.popoverPresentationController?.sourceRect = self.qq.frame
         self.present(vc, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
   
  
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
       return  .none
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let menuViewController = segue.destination as! ttttViewController
        
        let tabBarItemWidth = Int(300) / (self.tabBarController?.tabBar.items?.count)!
        let x = tabBarItemWidth * 3;
        let newRect = CGRect(x: x, y: 0, width: 100, height: 40)
        print(newRect)
        
        menuViewController.modalPresentationStyle = .popover
        menuViewController.view.frame = newRect
        menuViewController.preferredContentSize = CGSize(width: 150,height: 150)
      
        if let popoverMenuViewController = menuViewController.popoverPresentationController {
            popoverMenuViewController.permittedArrowDirections = .down
          //  popoverMenuViewController.delegate = self
             popoverMenuViewController.delegate = menuViewController as? UIPopoverPresentationControllerDelegate
            popoverMenuViewController.sourceRect = self.qq.bounds
            popoverMenuViewController.sourceView = self.view
            
           // self.present(menuViewController, animated: true, completion: nil)
            
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

