//
//  ListMovieWorker.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 13/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import Foundation

protocol ListMovieWorkerDelegate {
  func initMovieList() -> MovieEntity
}

// MARK: - ListMovieWorkerDelegate
class ListMoviewWorker: ListMovieWorkerDelegate {
  func initMovieList() -> MovieEntity {
    let movieEntity = MovieEntity(title: "1917",
                                  vote_average: "8.1",
                                  poster_path: "https://image.tmdb.org/t/p/w500/AuGiPiGMYMkSosOJ3BQjDEAiwtO.jpg",
                                  release_date: "2019-12-10",
                                  overview: "At the height of the First World War, two young British soldiers, Schofield and Blake are given a seemingly impossible mission. In a race against time, they must cross enemy territory and deliver a message that will stop a deadly attack on hundreds of  own brother among them.",
                                  idMovie: "530915",
                                  videoKey: "0")
    return movieEntity
  }
}
