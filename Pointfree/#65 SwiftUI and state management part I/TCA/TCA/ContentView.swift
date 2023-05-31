//
//  ContentView.swift
//  TCA
//
//  Created by Vincenzo Stira on 31/05/23.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var count = 0
}

struct ContentView: View {
    @ObservedObject var state: AppState
    
  var body: some View {
      NavigationView {
          List {
              NavigationLink(destination: CounterView(state: self.state)) {
                  Text("Counter demo")
              }
              NavigationLink(destination: EmptyView()) {
                  Text("Favorite primes")
              }
          }
          .navigationTitle("State Management")
      }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(state: AppState())
    }
}
