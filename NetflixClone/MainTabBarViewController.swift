//
//  ViewController.swift
//  NetflixClone
//
//  Created by Ruyha on 2022/07/17.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarSetting()
    }
    
    
}

extension MainTabBarViewController{
    
    func tabBarSetting(){
        let homeVC : UINavigationController = {
            let vc = UINavigationController(rootViewController: HomeViewController())
            vc.tabBarItem.image = UIImage(systemName: "house")
            vc.title = "Home"
            return vc
        }()
        
        let upcomingVC : UINavigationController = {
            let vc = UINavigationController(rootViewController: UpcomingViewController())
            vc.tabBarItem.image = UIImage(systemName: "play.circle")
            vc.title = "Comming Soon"
            return vc
        }()
        
        let searchVC : UINavigationController = {
            let vc = UINavigationController(rootViewController: SearchViewController())
            vc.tabBarItem.image = UIImage(systemName: "magnifyingglass")
            vc.title = "Top Search"
            return vc
        }()
        
        let downloadsVC : UINavigationController = {
            let vc = UINavigationController(rootViewController: DownloadsViewController())
            vc.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
            vc.title = "Downloads"
            return vc
        }()
        
        tabBar.tintColor = .label
        
        setViewControllers([homeVC,upcomingVC,searchVC,downloadsVC], animated: true)
    }
}

