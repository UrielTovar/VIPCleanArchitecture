//
//  ListMoviesView.swift
//  CleanArchItecture
//
//  Created by Uriel Tovar on 13/04/20.
//  Copyright © 2020 Uriel Tovar. All rights reserved.
//

import UIKit

protocol ListMoviesProtocol {
   func set(viewModel: ListViewModel)
}

class ListMoviesView: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
  
  @IBOutlet weak var movieList: UICollectionView!
  
    var presenter: ListMoviesPresenterProtocol?
    var interactor: ListMoviesInteractorProtocol?
  
    var listViewArray: [ListViewModel] = []

    override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
      
      movieList.delegate = self
      movieList.dataSource = self
      
      let viewController = self
      let interactor = ListMoviesInteractor(withApiWorker:ListMoviewWorkerWS())
      let presenter = ListMoviePresenter()
      viewController.interactor = interactor
      viewController.presenter = presenter
      presenter.view = self
      interactor.presenter = presenter
//      Only one
//       self.interactor?.startAction()
      
        //  WS functions
      self.interactor?.startAction(page: "1")
    }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return listViewArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let nib = UINib(nibName: "ListMoviesCollectionViewCell", bundle: nil)
      self.movieList.register(nib, forCellWithReuseIdentifier: "MoviesCell")
      let cell = self.movieList.dequeueReusableCell(withReuseIdentifier: "MoviesCell", for: indexPath as IndexPath) as! ListMoviesCollectionViewCell
  //    let movieModel = listViewArray[indexPath.row]
      //        cell.movieImage.sd_setImage(with: URL(string: movieModel.poster_path), completed: nil)
      return cell
    }
}

extension ListMoviesView: ListMoviesProtocol {
  
  func set(viewModel: ListViewModel) {
    listViewArray.append(viewModel)
    movieList.reloadData()
  }

}
