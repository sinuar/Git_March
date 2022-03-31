//
//  MainModulePresenter.swift
//  Bitcoin_project
//
//  Created by Sinuhé Ruedas on 25/03/22.
//

import Foundation


class MainModulePresenter {
    // MARK: - Protocol properties
    
    //From View to Presenter
    weak var view: MainModuleViewProtocol?
    
    //From Presenter to Interactor
    weak var interactor: MainModuleInteractorInputProtocol?
    
    //From Presenter to Router
    var router: MainModuleRouterProtocol?
}

// From Interactor to Presenter
extension MainModulePresenter: MainModulePresenterProtocol {
    func viewDidLoad() {
        interactor?.willGetData()
    }
}

// From Presenter to View
extension MainModulePresenter: MainModuleInteractorOutputProtocol {
    func handleData(data: Data) {
        view?.loadedView(data: data)
    }
}
