//
//  ListMoviesPresenter.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 13/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import Foundation

protocol ListMoviesPresenterProtocol {
  //  Only one
//  func interactor(protocol:ListMoviesInteractorProtocol, didFetch object: MovieEntity)
  
  //  WS functions
  func interactor(protocol:ListMoviesInteractorProtocol, didFetch object: [MovieEntityWS])
  
}

struct ListViewModel {
    var title: String
    var vote_average: String
    var poster_path: String
    var release_date: String
    var overview: String
    var idMovie: String
    var videoKey: String
}

class ListMoviePresenter {
  var view = ListMoviesView()
  var interactor: ListMoviesInteractorProtocol?
}

extension ListMoviePresenter: ListMoviesPresenterProtocol {
  
  //  WS functions
  func interactor(protocol: ListMoviesInteractorProtocol, didFetch object: [MovieEntityWS]) {
    
    
  }
  
  //  Only one
//  func interactor(protocol: ListMoviesInteractorProtocol, didFetch object: MovieEntity) {
//  let listViewModel = ListViewModel(title: object.title, vote_average: object.vote_average, poster_path: object.poster_path, release_date: object.release_date, overview: object.overview, idMovie: object.idMovie, videoKey: object.videoKey)
//
//    view.set(viewModel: listViewModel)
//  }
  
}
