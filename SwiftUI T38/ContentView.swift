//
//  ContentView.swift
//  SwiftUI T38
//
//  Created by M Fadli Zein on 24/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(courses) { item in
            HStack {
                Text(item.title)
                    .padding()
                    .background(item.color)
                .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Course: Identifiable{
    var id = UUID()
    var title: String
    var color: Color
}

var courses = [
    Course(title: "SwiftUI", color: .blue),
    Course(title: "UI Design", color: .red)
]
