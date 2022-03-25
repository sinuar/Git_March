//
//  MainModuleInteractor.swift
//  Bitcoin_project
//
//  Created by Sinuhé Ruedas on 25/03/22.
//

import UIKit

class MainModuleInteractor {
    // From Interactor to Presenter
    var presenter: MainModuleInteractorOutputProtocol?
    
    // From Interactor to RemoteData
    var remoteData: MainModuleRemoteDataInputProtocol?
}

// From Presenter to Interactor
extension MainModuleInteractor: MainModuleInteractorInputProtocol { }

// From RemoteData to Interactor
extension MainModuleInteractor: MainModuleRemoteDataOutputProtocol { }
