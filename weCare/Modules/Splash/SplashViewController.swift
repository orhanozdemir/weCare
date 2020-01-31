//
//  SplashViewController.swift
//  weCare
//
//  Created by Orhan Özdemir on 29.01.2020.
//  Copyright © 2020 PRS Kozmetik. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        let targetVC = UIStoryboard(name: "CreateProgram", bundle: nil).instantiateViewController(withIdentifier: "CreateProgramViewController")
////                let navCon = UINavigationController(rootViewController: targetVC)
////                navCon.modalPresentationStyle = .fullScreen
//        targetVC.modalPresentationStyle = .fullScreen
//        //        show(navCon, sender: nil)
////        show(targetVC, sender: nil)
//        present(targetVC, animated: true, completion: nil)
        
        let targetVC = UIStoryboard(name: "CreateProgram", bundle: nil).instantiateInitialViewController()
        targetVC?.modalPresentationStyle = .fullScreen
        dismiss(animated: false, completion: nil)
        self.present(targetVC!, animated: true, completion: nil)
    }
    
    func startAnimation() {
        
    }

}
