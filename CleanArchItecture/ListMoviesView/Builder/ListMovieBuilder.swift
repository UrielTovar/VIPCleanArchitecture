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
    let presenter = ListMoviePresenter()
    
    ///Funcion WS
    let interactor = ListMoviesInteractor(withApiWorker: ListMoviewWorkerWS())
    
    //          Funcion 1 elemento
    //          let interactor = ListMovieInteractor(withApiWorker: ListMoviewWorker())
    
    //MARK: link VIP components.
    view.interactor = interactor
    view.presenter = presenter;
    presenter.view = view
    interactor.presenter = presenter
    
    _ = try! Realm()
    
  }
}
