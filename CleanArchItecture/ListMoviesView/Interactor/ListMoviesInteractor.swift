//
//  ListMoviesInteractor.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 13/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import Foundation

protocol ListMoviesInteractorProtocol {
//  Only one
//  func startAction()
  
//  WS functions
  func startAction(page:String)
  
  
  func searchAction()
}

class ListMoviesInteractor: ListMoviesInteractorProtocol {

  var presenter: ListMoviesPresenterProtocol?
  private var movieEntity = [MovieEntityWS]()
  private let apiWorker: ListMovieWorkerWSProtocol?
  
//  private let apiWorker: ListMovieWorkerProtocol?
  
  //  Only one
//  required init(withApiWorker apiWorker:ListMoviewWorker) {
//    self.apiWorker = apiWorker
//  }
  
  required init(withApiWorker apiWorker:ListMoviewWorkerWS) {
      self.apiWorker = apiWorker
  }
  
  func startAction(page: String) {
    self.apiWorker?.getmovieList(page: page, completion: { movieEntityList in
      self.movieEntity = movieEntityList
      self.presenter?.interactor(protocol: self, didFetch: self.movieEntity)
    })
  }
  
  //  Only one
//  func startAction() {
//    movieEntity = self.apiWorker?.initMovieList()
//
//    self.presenter?.interactor(protocol: self, didFetch: movieEntity!)
//  }
  
  func searchAction() {
    
  }
  
}
