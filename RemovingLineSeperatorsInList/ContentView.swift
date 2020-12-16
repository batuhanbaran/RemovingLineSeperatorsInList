//
//  ContentView.swift
//  RemovingLineSeperatorsInList
//
//  Created by Batuhan Baran on 16.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    let urunler = [
        
        Urunler(isim: "Süt", resim: "food"),
        Urunler(isim: "Peynir", resim: "food"),
        Urunler(isim: "Ekmek", resim: "food"),
        Urunler(isim: "Kola", resim: "food"),
        Urunler(isim: "Gazoz", resim: "food"),
        Urunler(isim: "Bisküvi", resim: "food")
    ]

    var body: some View {
        
        NavigationView {
            
            ScrollView{
                
                LazyVStack(spacing: 25){
                    
                    ForEach(urunler, id: \.id){ urun in
                        
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: UIScreen.main.bounds.width - 25, height: 60, alignment: .center)
                            .foregroundColor(Color(.systemGray6))
                            
                            .overlay(
                                
                                HStack{
                                    
                                    Image(urun.resim)
                                        .resizable()
                                        .frame(width: 30, height: 30, alignment: .center)
                                        .padding(.leading, 20)
                                    
                                    Text(urun.isim)
                                        .padding(.leading, 5)
                                    
                                    Spacer()
                                }
                            )
                        
                    }
                    
                }.edgesIgnoringSafeArea(.all)
                .navigationBarTitle("Ürünler")
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
        
    }
}
