//
//  ListMoviewWorkerWS.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 14/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import Foundation

protocol ListMovieWorkerWSDelegate {
  func getmovieList(page: String, completion: @escaping ([MovieEntityWS]) -> Void)
}

// MARK: - ListMovieWorkerWSDelegate
class ListMoviewWorkerWS: ListMovieWorkerWSDelegate {
  func getmovieList(page: String, completion: @escaping ([MovieEntityWS]) -> Void) {
    guard let url = URL(string:"\(Constants.URL_UPCOMING_MOVIES_START)\(Constants.API_KEY_TMDB)\(Constants.URL_UPCOMING_MOVIES_END)\(page)") else {return}
    let session = URLSession.shared
    
    session.dataTask(with: url) { (data, response, error) in
      if let response = response {
        print(response)
      }
      
      if let data = data {
        //        print("\nEsta es el data: \n\(data)")
        do {
          //          let json = try JSONSerialization.jsonObject(with: data, options: [])
          //          print("\nEste es el JSON: \n\(json)")
          let imcResponse = try JSONDecoder().decode(MoviesResponse.self, from: data)
          completion(imcResponse.results)
        } catch let error {
          print(error)
        }
      }
    }.resume()
  }
}
