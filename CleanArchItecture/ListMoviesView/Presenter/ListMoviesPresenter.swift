//
//  ListMoviesPresenter.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 13/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import Foundation

protocol ListMoviesPresenterDelegate {
  func interactor(didFetch object: [MovieEntityWS])
}

struct ListViewModel {
  var title: String
  var vote_average: String
  var poster_path: String
  var release_date: String
  var overview: String
  var idMovie: String
  //    var videoKey: String
}

class ListMoviePresenter {
  var view = ListMoviesView()
}

// MARK: - ListMoviePresenterDelegate
extension ListMoviePresenter: ListMoviesPresenterDelegate {
  func interactor(didFetch object: [MovieEntityWS]) {
    var moviesList: [ListViewModel] = []
    
    for item in object {
      let viewModel = ListViewModel(title: item.title ?? "", vote_average:"\(item.vote_average)", poster_path: item.poster_path ?? "", release_date: item.release_date, overview: item.overview, idMovie:"\(item.id)")
      moviesList.append(viewModel)
      
      view.set(viewModelList: moviesList)
    }
  }
}
