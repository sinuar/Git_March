//
//  MainModuleView.swift
//  Bitcoin_project
//
//  Created by Sinuhé Ruedas on 25/03/22.
//

import UIKit


class MainModuleView: UIViewController {
    
    // From Presenter to View
    var presenter: MainModulePresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }

}

// View to Presenter
extension MainModuleView: MainModuleViewProtocol {
    
    // MARK: - Main Module View Protocol Methods
}
