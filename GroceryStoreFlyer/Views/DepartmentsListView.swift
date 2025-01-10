//
//  DepartmentsListView.swift
//  GroceryStoreFlyer
//
//  Created by 曾梓恒 on 2025-01-09.
//

import SwiftUI

struct DepartmentsListView: View {
    var body: some View {
        NavigationStack {
            List(thisWeeksFlyer.departments) { currentDepartment in
                
                NavigationLink {
                    DepartmentDetailView(departmentToShow: currentDepartment)
                } label: {
                    HStack {
                        Image(currentDepartment.icon)
                            .resizable()
                            .scaledToFit()
                        Text(currentDepartment.name)
                            .font(.system(size: 28))
                            .padding()
                    }
                }
            }
            .navigationTitle("Weekly Flyer")
        }
    }
}

#Preview {
    DepartmentsListView()
}

