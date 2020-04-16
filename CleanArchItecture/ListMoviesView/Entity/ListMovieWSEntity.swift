//
//  ListMovieWSEntity.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 14/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import Foundation


struct ArticlesResponse: Decodable {
  let page: Int
  let results:[MovieEntityWS]
}


struct MovieEntityWS: Decodable {
  var title: String?
  var vote_average:Double
  var poster_path: String?
  var release_date: String
  var overview: String
  var id: Float
  //    var videoKey: String
}
