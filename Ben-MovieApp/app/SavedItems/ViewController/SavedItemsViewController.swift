//
//  SavedItemsViewController.swift
//  Ben-MovieApp
//
//  Created by Ben Bright on 07/06/22.
//

import Foundation
import CoreData

class SavedItemsViewController: MovieListViewController {
    override init(_ managedObjectContext: NSManagedObjectContext) {
        super.init(managedObjectContext)
        viewModel = SavedItemsViewModel(managedObjectContext)
        viewModel.viewController = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
