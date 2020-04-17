//
//  ListMoviesInteractor.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 13/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import Foundation

protocol ListMoviesInteractorProtocol {
  func startAction(page:String)
  func searchAction()
}

class ListMoviesInteractor: ListMoviesInteractorProtocol {
  
  var presenter: ListMoviesPresenterProtocol?
  private var movieEntityList = [MovieEntityWS]()
  private let apiWorker: ListMovieWorkerWSProtocol?
    
  required init(withApiWorker apiWorker:ListMoviewWorkerWS) {
    self.apiWorker = apiWorker
  }
  
  func startAction(page: String) {
    self.apiWorker?.getmovieList(page: page, completion: { movieEntityList in
      self.movieEntityList = movieEntityList
      self.presenter?.interactor(protocol: self, didFetch: self.movieEntityList)
    })
  }
    
  func searchAction() {
    
  }
  
}
