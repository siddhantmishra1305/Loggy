//
//  String + Extension.swift
//  Loggy
//
//  Created by Siddhant Mishra on 31/10/20.
//

import Foundation

//extension String {
//    public func appendLine(to path: URL) throws {
//        do{
//            try self.write(to: path, atomically: true, encoding: String.Encoding.utf8)
//        }catch{
//            print("Error write into file:\(error.localizedDescription) \n \(path)")
//        }
//    }
//}

extension String {
    func appendLine(to url: URL) throws {
        try self.appending("\n").append(to: url)
    }
    func append(to url: URL) throws {
        let data = self.data(using: String.Encoding.utf8)
        try data?.append(to: url)
    }
}
