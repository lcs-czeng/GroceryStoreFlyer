//
//  DepartmentListView.swift
//  GroceryStoreFlyer
//
//  Created by 曾梓恒 on 2025-01-09.
//

import SwiftUI

struct DepartmentListView: View {
    var body: some View {
        NavigationStack {
            List(thisWeeksFlyer.departments) { currentDepartment in
                
                NavigationLink {
//                    DepartmentDetailView(departmentToShow: currentDepartment)
                    EmptyView()
                } label: {
                    Text(currentDepartment.name)
                    
                }
            }
            .navigationTitle("Weekly Flyer")
        }
    }
}

#Preview {
    DepartmentListView()
}
