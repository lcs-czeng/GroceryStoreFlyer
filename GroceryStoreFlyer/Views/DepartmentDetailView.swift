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
                Text(item.name)
                    .font(.system(size: 25))
                    .font(.headline)
                    .padding(.vertical, 5)
                
                Image(item.image)
                    .resizable()
                    .scaledToFit()
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
