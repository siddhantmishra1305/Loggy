//
//  Loggy.swift
//  Loggy
//
//  Created by Siddhant Mishra on 31/10/20.
//

import Foundation

public class Loggy{
    
    
    static var currentDate:String{
        get{
            let dateFormatterUK = DateFormatter()
            dateFormatterUK.dateFormat = "dd-MM-yyyy"
            return dateFormatterUK.string(from: Date())
        }
    }
    
    public static var logFilePath : URL?{
        get{
            if let loggyFolderURL = URL.createFolder(folderName: "Loggy"){
                let filePath = loggyFolderURL.appendingPathComponent("log-\(currentDate).txt")
                return filePath
            }else{
                return nil
            }
        }
    }
    
    static public func log(value:String,type:logType){
        var logLine = String()
        
        switch type {
        
        case .Error:
            logLine = "\n \(type.rawValue) : \(Date()) : \(value)"
            break
            
        case .Verbose:
            logLine = "\n \(type.rawValue) : \(Date()) : \(value)"
            break
            
        case .Info:
            logLine = "\n \(type.rawValue) : \(Date()) : \(value)"
            break
            
        case .Warning:
            logLine = "\n \(type.rawValue) : \(Date()) : \(value))"
            break
        }
        
        
        if let localLogPath = logFilePath{
            do{
                try logLine.appendLine(to: localLogPath)
            }catch {
                print("Exception:\(error.localizedDescription)")
            }
        }
    }
}
