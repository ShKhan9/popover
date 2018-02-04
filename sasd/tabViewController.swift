//
//  tabViewController.swift
//  sasd
//
//  Created by sameh mohammed on 2/4/18.
//  Copyright © 2018 com.trio. All rights reserved.
//

import UIKit

class tabViewController: UITabBarController , UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "bbb") as! ttttViewController
        vc.modalPresentationStyle = .popover //presentation style
        
        vc.preferredContentSize = CGSize(width: 150,height: 150)
        vc.popoverPresentationController?.delegate = self
        vc.popoverPresentationController?.sourceView = view
        vc.popoverPresentationController?.sourceRect = self.tabBar.frame
        self.present(vc, animated: true, completion: nil)
        
        
    }
    
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return  .none
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
