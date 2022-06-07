//
//  HomeTabBarController.swift
//  Ben-MovieApp
//
//  Created by Ben Bright on 07/06/22.
//

import Foundation
import CoreData
import SwiftUI

class HomeTabBarController: UITabBarController {
    init(_ viewContext: NSManagedObjectContext) {
        super.init(nibName: nil, bundle: nil)
        
        let nowPlayingVC = NowPlayingViewController(viewContext)
        let savedItemsVC = SavedItemsViewController(viewContext)

        let nowPlayingTabBarItem = UITabBarItem(title: "Now Playing", image: UIImage(systemName: "play.fill"), tag: 0)
        let savedItemsTabBarItem = UITabBarItem(title: "Saved", image: UIImage(systemName: "star.fill"), tag: 1)

        nowPlayingVC.tabBarItem = nowPlayingTabBarItem
        savedItemsVC.tabBarItem = savedItemsTabBarItem
        self.viewControllers = [nowPlayingVC, savedItemsVC]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
