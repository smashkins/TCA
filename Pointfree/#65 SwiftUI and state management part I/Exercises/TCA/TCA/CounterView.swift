//
//  CounterView.swift
//  TCA
//
//  Created by Vincenzo Stira on 31/05/23.
//

import SwiftUI

struct CounterView: View {
    
    @ObservedObject var state: AppState
    
    var body: some View {
    VStack {
      HStack {
          Button(action: { self.state.count -= 1}) {
          Text("-")
        }
          Text("\(self.state.count)")
        Button(action: {self.state.count += 1}) {
          Text("+")
        }
      }
        Button(action: {}) {
        Text("Is this prime?")
      }
      Button(action: {}) {
          Text("What is the \(ordinal(self.state.count)) prime?")
      }
    }
    .font(.title)
    .navigationTitle("Counter Demo")
    }
}

private func ordinal(_ n: Int) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .ordinal
    return formatter.string(from: NSNumber(value: n)) ?? ""
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(state: AppState())
    }
}
