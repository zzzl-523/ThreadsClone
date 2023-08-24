//
//  ThreadsTabView.swift
//  ThreadsTutorials
//
//  Created by 이지현 on 2023/08/24.
//

import SwiftUI

struct ThreadsTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Feed View")
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                    // 클릭에 따라 채워지고 비워지고 변경
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        
                }
                // 클릭 후 onAppear되면 selectedTab, tag를 설정해주기
                .onAppear{selectedTab = 0}
                .tag(0)
            Text("Explore")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear{selectedTab = 1}
                .tag(1)
            Text("Upload Thread")
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear{selectedTab = 2}
                .tag(2)
            Text("Activity")
                .tabItem {
                    Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                    // 클릭에 따라 채워지고 비워지고 변경
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        
                }
                .onAppear{selectedTab = 3}
                .tag(3)
            Text("Profile")
                .tabItem {
                    Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                    // 클릭에 따라 채워지고 비워지고 변경
                        .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                        
                }
                .onAppear{selectedTab = 4}
                .tag(4)
        }
        .tint(.black)
    }

}

struct ThreadsTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadsTabView()
    }
}
