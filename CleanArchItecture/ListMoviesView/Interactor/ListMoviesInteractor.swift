//
//  ListMoviesInteractor.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 13/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import Foundation

protocol ListMoviesInteractorDelegate {
  func startAction(page: String)
  func searchAction()
}

// MARK: - ListMoviesInteractorDelegate
class ListMoviesInteractor: ListMoviesInteractorDelegate {
  
  var presenter: ListMoviesPresenterDelegate?
  private var movieEntityList: [MovieEntityWS] = []
  private let apiWorker: ListMovieWorkerWSDelegate?
    
  required init(withApiWorker apiWorker: ListMoviewWorkerWS) {
    self.apiWorker = apiWorker
  }
  
  func startAction(page: String) {
    apiWorker?.getmovieList(page:page, completion: { movieEntityList in
      self.movieEntityList = movieEntityList
      self.presenter?.interactor(protocol:self, didFetch:self.movieEntityList)
    })
  }
    
  func searchAction() {
    
  }
  
}
