//
//  DepartmentDetailView.swift
//  GroceryStoreFlyer
//
//  Created by 曾梓恒 on 2025-01-09.
//

import SwiftUI

struct DepartmentDetailView: View {
    
    let departmentToShow: Department
    
    var body: some View {
        List(departmentToShow.items) { item in
            VStack {
                HStack {
                    Text(item.name)
                        .font(.system(size: 35))
                        .font(.headline)
                        .fontWeight(.black)
                        .padding(.vertical, 5)
                        .italic()
                }
                ZStack(alignment: .bottomTrailing) {
                    Image(item.image)
                        .resizable()
                        .scaledToFit()
                        .border(.blue)
                    
                    Text(item.price)
                        .fontWeight(.light)
                        .font(.system(size: 30))
                        .padding(8)
                        .background(Color.red)
                        .cornerRadius(20)
                        .padding([.bottom, .trailing], 10)
                }
                Text(item.description)
                    .padding(.top, 10)
                    .padding(.horizontal, 5)
                    .foregroundColor(.gray)
            }
        }
        .listStyle(.plain)
        .padding()
        .navigationTitle(departmentToShow.name)
    }
}
#Preview {
    NavigationStack {
        DepartmentDetailView(departmentToShow: thisWeeksFlyer.departments[0])
    }
}
