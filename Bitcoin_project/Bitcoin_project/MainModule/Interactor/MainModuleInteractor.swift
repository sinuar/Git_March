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
extension MainModuleInteractor: MainModuleInteractorInputProtocol {
    func willGetData() {
        remoteData?.fetchJsonData(for: "response", fileExtension: "json")
    }
}

// From RemoteData to Interactor
extension MainModuleInteractor: MainModuleRemoteDataOutputProtocol {
    func getJson(data: Data) {
        presenter?.handleData(data: data)
    }
}
