//
//  Network.swift
//  GraphQL APP
//
//  Created by belal medhat on 06/09/2021.
//

import Foundation
import Apollo
class Network{
    // #### API url of GraphQL https://countries.trevorblades.com/ ####
    // #### Network caller with singleton pattern ####
static let shared = Network()
// 2
let client: ApolloClient
// 3
init() {
    
  client = ApolloClient(url: URL(string: "https://countries.trevorblades.com/")!)
}
}
