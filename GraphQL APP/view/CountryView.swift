//
//  ContentView.swift
//  GraphQL APP
//
//  Created by belal medhat on 06/09/2021.
//

import SwiftUI

struct CountryView: View {
    @State var isLoading:Bool = false
    @ObservedObject var GraphQLVM = GraphQLViewModel()
    var body: some View {
        
        VStack(){
            ZStack(){
        ScrollView(){
        VStack(){
            ForEach(0..<GraphQLVM.CountryData.count,id:\.self) { row in
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    ZStack(){
                        Circle().fill(Color(#colorLiteral(red: 0, green: 0.7688211799, blue: 1, alpha: 1))).frame(width: 100, height: 50)
                        Text(GraphQLVM.CountryData[row].emoji).frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }.frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                        Text(GraphQLVM.CountryData[row].name).foregroundColor(.white).frame(width: 200, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color.black).cornerRadius(10).minimumScaleFactor(0.5).textCase(.uppercase)
                    
                    
                        
                }.frame(width: 300, height: 150, alignment: .center).padding().overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(#colorLiteral(red: 0.3686963022, green: 1, blue: 0.8210601211, alpha: 1)), lineWidth: 5))
            }.frame(width: 350, height: 200, alignment: .center).padding()
        }
        
        
    }.frame(width: UIScreen.main.bounds.width - 100, height: 700, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding()
                if GraphQLVM.isLoading == true {
                    ProgressView().frame(width: 40, height: 40, alignment: .center).progressViewStyle(CircularProgressViewStyle(tint: Color.purple))
                }else{
                    
                }
            }
            Button(action: {
                GraphQLVM.CallNetwork()
            }, label: {
                Text("REQUEST COUNTIRES").foregroundColor(Color(#colorLiteral(red: 0.3686963022, green: 1, blue: 0.8210601211, alpha: 1))).frame(width: 200, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color.black).cornerRadius(10).minimumScaleFactor(0.5).textCase(.uppercase)
            })
        }.frame(width: UIScreen.main.bounds.width - 100, height: UIScreen.main.bounds.height - 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView()
    }
}
