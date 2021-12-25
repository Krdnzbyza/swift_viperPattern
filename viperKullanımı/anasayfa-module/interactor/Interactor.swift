//
//  Interactor.swift
//  viperKullanımı
//
//  Created by Beyza Karadeniz on 25.12.2021.
//

import Foundation

class Interactor : PresenterToInteractorProtocol   {
    var presenter: IntereactorToPresenterProtocol?
    func topla(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1), let s2 = Int(sayi2){
            let toplam = s1 + s2
            presenter?.presenteralVeriGonder(sonuc: String(toplam))
        }
    }
    
    func carp(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1), let s2 = Int(sayi2){
            let carpma = s1*s2
            presenter?.presenteralVeriGonder(sonuc: String(carpma))
            
        }
    }
}
