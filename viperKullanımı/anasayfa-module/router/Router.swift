//
//  Router.swift
//  viperKullanımı
//
//  Created by Beyza Karadeniz on 25.12.2021.
//

import Foundation

class Router : PresenterToRouterProtocol{
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
//        view sınıfı degiskeni
        ref.presenterNesnesi = presenter
//        presenter sınıfı degiskeni
        ref.presenterNesnesi?.interactor = Interactor(
        )
        ref.presenterNesnesi?.view = ref
//        interactor degiskeni
        ref.presenterNesnesi?.interactor?.presenter = presenter
        
    }
    
}
