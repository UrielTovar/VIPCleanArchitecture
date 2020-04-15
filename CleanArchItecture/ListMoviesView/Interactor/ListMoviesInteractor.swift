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
  private var movieEntity:[Results]?
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
    movieEntity = self.apiWorker?.getmovieList(page: page)
    
    print(movieEntity?.count ?? -7)
    
    self.presenter?.interactor(protocol: self, didFetch: movieEntity!)
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
