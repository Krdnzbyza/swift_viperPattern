//
//  Presenter.swift
//  viperKullanımı
//
//  Created by Beyza Karadeniz on 25.12.2021.
//

import Foundation

class Presenter : ViewToPresenterProtocol { // ilk eklenecek protokol ana protokoldur
    
    var interactor: PresenterToInteractorProtocol? // interactordaki topla ve carp calıstıramk iici
    var view: PresenterToViewProtocol?
    func toplamaYap(sayi1: String, sayi2: String) {
        interactor?.topla(sayi1: sayi1, sayi2: sayi2)
    }
    func carpmaYap(sayi1: String, sayi2: String) {
        interactor?.carp(sayi1: sayi1, sayi2: sayi2)
    }
}


//tasıyıcı  protokol extension ile ekle

extension Presenter : IntereactorToPresenterProtocol{
    func presenteralVeriGonder(sonuc: String) {
        view?.vieweVeriGonder(sonuc: sonuc)
    }
}

