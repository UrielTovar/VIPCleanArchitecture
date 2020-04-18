//
//  ListMoviesView.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 13/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import UIKit
import SDWebImage

protocol ListMoviesProtocol {
  func set(viewModelList: [ListViewModel])
}

class ListMoviesView: UIViewController{
  
  @IBOutlet weak var movieList: UICollectionView!
  @IBOutlet weak var headerView: UIView!
  
  var presenter: ListMoviesPresenterProtocol?
  var interactor: ListMoviesInteractorProtocol?
  
  var listViewArray: [ListViewModel] = []
  var pageNumber: Int = 1
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    movieList.delegate = self
    movieList.dataSource = self
    
    //MARK: Init Builder
    ListMovieBuilder.builderList(configView:self)
    
    //MARK: Init Interactor
    interactor?.startAction(page:"\(pageNumber)")
  }
}

 //MARK: CollectionView Delegate, DataSource.
extension ListMoviesView: UICollectionViewDelegate,UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return listViewArray.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let nib = UINib(nibName: "ListMoviesCollectionViewCell", bundle: nil)
    self.movieList.register(nib, forCellWithReuseIdentifier: "MoviesCell")
    let cell = self.movieList.dequeueReusableCell(withReuseIdentifier: "MoviesCell", for: indexPath as IndexPath) as! ListMoviesCollectionViewCell
    let movieModel = listViewArray[indexPath.row]
    cell.movieImage.sd_setImage(with: URL(string:"\(Constants.URL_POSTER_IMAGE)\(movieModel.poster_path)"), completed: nil)
    cell.movieImage.layer.cornerRadius = 5
    return cell
  }
}

extension ListMoviesView: ListMoviesProtocol {
  
  func set(viewModelList:[ListViewModel]) {
    listViewArray = viewModelList
    DispatchQueue.main.async {
      self.movieList.reloadData()
    }
  }
  
}
