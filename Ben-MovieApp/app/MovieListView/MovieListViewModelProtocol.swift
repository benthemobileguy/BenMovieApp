//
//  MovieListViewModelProtocol.swift
//  Ben-MovieApp
//
//  Created by Ben Bright on 07/06/22.
//

import Foundation
import CoreData

protocol MovieListViewModelProtocol: class {
    var viewController: MovieListViewControllerProtocol? { get set }
    
    func didTap()
    func loadViewInitialData()
    func moviesCount() -> Int
    func movieInfoModel(at index: Int) -> MovieInfoModel?
    func currentMOC() -> NSManagedObjectContext
    func checkAndHandleIfPaginationRequired(at row: Int)
}

class DummyMovieListViewModel: MovieListViewModelProtocol {
    weak var viewController: MovieListViewControllerProtocol?
    
    init() {
        // Does nothing
    }
    
    func didTap() {
        // Does nothing
    }
    
    func loadViewInitialData() {
        // Does nothing
    }
    
    func moviesCount() -> Int {
        return 0
    }
    
    func movieInfoModel(at index: Int) -> MovieInfoModel? {
        return nil
    }
    
    func currentMOC() -> NSManagedObjectContext {
        return NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
    }
    
    func checkAndHandleIfPaginationRequired(at row: Int) {
        // Does nothing
    }
}
