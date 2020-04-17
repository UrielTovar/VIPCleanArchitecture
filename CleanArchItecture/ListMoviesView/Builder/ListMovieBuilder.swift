//
//  ListMovieBuilder.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 16/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import Foundation
import RealmSwift

class ListMovieBuilder {
  class func builderList(configView view:ListMoviesView) {
    
    //MARK: Initialise components.
    let interactor = ListMoviesInteractor(withApiWorker: ListMoviewWorkerWS())
    let presenter = ListMoviePresenter()
    
    //MARK: link VIP components.
    view.interactor = interactor
    view.presenter = presenter;
    presenter.view = view
    interactor.presenter = presenter
    
    _ = try! Realm()
    
  }
}
