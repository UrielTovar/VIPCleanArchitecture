//
//  Constants.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 13/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import Foundation

struct Constants {
  static let API_KEY_TMDB = "1f54bd990f1cdfb230adb312546d765d"
  static let URL_UPCOMING_MOVIES_START = "https://api.themoviedb.org/3/movie/upcoming?api_key="
  static let URL_UPCOMING_MOVIES_END = "&language=en-US&page="
  static let URL_POSTER_IMAGE = "https://image.tmdb.org/t/p/w500"
  static let URL_MOVIE_VIDEO_START = "https://api.themoviedb.org/3/movie/"
  static let URL_MOVIE_VIDEO_MIDDLE = "/videos?api_key="
  static let URL_MOVIE_VIDEO_END = "&language=en-US"
  static let URL_SEARCH_START = "https://api.themoviedb.org/3/search/movie?api_key="
  static let URL_SEARCH_MIDDLE = "&language=en-US&query="
  static let URL_SEARCH_END = "&include_adult=false"
}
