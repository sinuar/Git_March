//
//  MainModuleRemoteData.swift
//  Bitcoin_project
//
//  Created by Sinuhé Ruedas on 25/03/22.
//

import Foundation

class MainModuleRemoteData {
    // From RemoteData to Interactor
    var interactor: MainModuleRemoteDataOutputProtocol?
}

// From Interactor to RemoteData
extension MainModuleRemoteData: MainModuleRemoteDataInputProtocol { }
