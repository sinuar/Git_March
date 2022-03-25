//
//  Protocols.swift
//  Bitcoin_project
//
//  Created by Sinuhé Ruedas on 25/03/22.
//

import UIKit

//From View to Presenter
protocol MainModuleViewProtocol: AnyObject {
}

// From Presenter to Interactor
protocol MainModuleInteractorInputProtocol: AnyObject { }

// From Interactor to Presenter
protocol MainModuleInteractorOutputProtocol{ }

// From Presenter to View
protocol MainModulePresenterProtocol{ }

// From Interactor to RemoteData
protocol MainModuleRemoteDataInputProtocol{ }

// From RemoteData to Interactor
protocol MainModuleRemoteDataOutputProtocol{ }

// From Presenter to Router
protocol MainModuleRouterProtocol{
    func showMainModuleView()
}
