//
//  Data + Extension.swift
//  Loggy
//
//  Created by Siddhant Mishra on 31/10/20.
//

import Foundation

extension Data {
    public func append(to url: URL) throws {
        if let fileHandle = try? FileHandle(forWritingTo: url) {
            defer {
                fileHandle.closeFile()
            }
            fileHandle.seekToEndOfFile()
            fileHandle.write(self)
        } else {
            try write(to: url)
        }
    }
}
