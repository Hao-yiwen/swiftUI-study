//
//  FetchModel.swift
//  swiftUIDemo
//
//  Created by yw.hao on 2023/11/1.
//

import SwiftUI

//class TestModel: ObservableObject {
class FetchModel: ObservableObject {
    @Published var data = ""
    
    func fetchData() {
        guard let url = URL(string: "http://localhost:3000") else {
            print("Invalid URL")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {data, response, error in
            if let decodeResponse = String(data: data!, encoding: .utf8){
                DispatchQueue.main.async {
                    print(decodeResponse)
                    self.data = decodeResponse
                }
            } else if let error = error {
                print(error)
            }
        }
        
        task.resume()
    }
}
