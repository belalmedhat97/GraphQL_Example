//
//  GraphQLViewModel.swift
//  GraphQL APP
//
//  Created by belal medhat on 07/09/2021.
//

import Foundation
class GraphQLViewModel:ObservableObject{
    
//#### API configurator for accesing countires data ((CountryDetailsQuery)) ####
    
@Published var CountryData = [CountryDetailsQuery.Data.Country]()
@Published var isLoading:Bool = false
    init(){
    }
  func CallNetwork(){
    isLoading = true
    Network.shared.client.fetch(query: CountryDetailsQuery()) { result in
    switch result {
    case .success(let graphQLResult):
//      print("Success! Result: \(graphQLResult)")
        self.CountryData = graphQLResult.data?.countries ?? []
        self.isLoading = false

    case .failure(let error):
        self.isLoading = false
      print("Failure! Error: \(error)")
    }
    }
    }
    
}
