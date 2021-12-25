//
//  protocols.swift
//  viperKullanımı
//
//  Created by Beyza Karadeniz on 25.12.2021.
//

import Foundation

//Ana Protokol
protocol PresenterToInteractorProtocol{
    var presenter: IntereactorToPresenterProtocol?{get set}
    func topla(sayi1 : String, sayi2 : String)
    func carp (sayi1 : String, sayi2 : String)
    
}
//ana protokol
protocol ViewToPresenterProtocol{
    var interactor :PresenterToInteractorProtocol? {get set}
    var view: PresenterToViewProtocol? {get set}
    
    func toplamaYap(sayi1 : String , sayi2 : String)
    func carpmaYap (sayi1 : String, sayi2 : String)
    // protocol içinde değişken varsa tetiklemek için
    //method varsa çalıştırılmak için
}
//tasıyıcı
protocol IntereactorToPresenterProtocol{
    func presenteralVeriGonder(sonuc : String)
    
}
//tasıyıcı
protocol PresenterToViewProtocol {
    func vieweVeriGonder(sonuc : String)
}
//Yetkilendirme Protokol
protocol PresenterToRouterProtocol {
    static func createModule (ref : ViewController)
    
}
