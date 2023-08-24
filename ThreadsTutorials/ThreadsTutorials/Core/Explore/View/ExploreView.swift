//
//  ExploreView.swift
//  ThreadsTutorials
//
//  Created by 이지현 on 2023/08/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    
    var body: some View {
        // 페이지 이동 필요
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach ( 0 ... 10, id: \.self) { user in
                        VStack {
                            UserCell()
                            
                            Divider()
                        }.padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Search")
            // navigation bar 검색창 구현
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
