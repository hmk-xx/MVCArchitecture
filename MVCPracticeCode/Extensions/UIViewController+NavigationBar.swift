//
//  UIViewController+NavigationBar.swift


import UIKit

extension UIViewController {
    
    //Method for add Back Button on NavigationBar
    func customizeNavigationBar(isVisible:Bool) {
        self.navigationController?.isNavigationBarHidden = false
        //Code for add Back Button
        let buttonBack = UIButton()
            buttonBack.frame = CGRect(x: 0, y: 5, width: 30, height: 30)
            buttonBack.setTitleColor(UIColor.white, for: UIControlState())
            buttonBack.setImage(UIImage(named:"BackButton"), for: UIControlState())
            buttonBack.addTarget(self, action: #selector(self.back), for: .touchUpInside)

        let leftBarButton = UIBarButtonItem()
        leftBarButton.customView = buttonBack
        self.navigationItem.leftBarButtonItem = leftBarButton;
        self.navigationItem.leftBarButtonItem?.isEnabled = isVisible
    }
    // method to go back to previous viewcontrollers.
    @objc func back() {
        
    _ = self.navigationController?.popViewController(animated: true)
    }
    
   
    // method to set the navigation bar title and titlecolor
    func methodNavigationBarBackGroundAndTitleColor(_ stringTitle: String)  {
    
        navigationItem.title = stringTitle
       // _ = ((self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey(rawValue: NSAttributedStringKey(rawValue: NSAttributedStringKey(rawValue: NSAttributedStringKey.foregroundColor.rawValue).rawValue).rawValue): UIColor.white]) != nil)

        self.navigationController?.navigationBar.barTintColor = colorRed

    }
    

}
