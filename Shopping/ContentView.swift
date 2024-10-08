//
//  ContentView.swift
//  Shopping
//
//  Created by switchMac on 8/22/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedBottomTab: BottomTabItem = .HOME
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                VStack {
                    switch selectedBottomTab {
                    case .HOME:
                        HomeView()
                    case .POPULAR:
                        PopularView()
                    case .CATEGORY:
                        CategoryView()
                    case .FAVORITE:
                        FavoriteView()
                    case .MY_PAGE:
                        MyPageView()
                    }
                    
                    BottomTabBarView(selectedBottomTab: $selectedBottomTab)
                        .frame(height: 50, alignment: .bottom)
                }
            }
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0 + 44)
        }
    }
}


#Preview {
    ContentView()
}
