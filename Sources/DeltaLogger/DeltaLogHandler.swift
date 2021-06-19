//
//  DeltaLogHandler.swift
//  DeltaLogger
//
//  Created by Rohan van Klinken on 19/6/21.
//

import Foundation
import Logging

/// The central logging backend.
public struct DeltaLogHandler: LogHandler {
  public let label: String
  
  public var logLevel: Logger.Level = .debug
  public var metadata: Logger.Metadata = [:]
  
  public var dateFormatter = Self.createDefaultDateFormatter()
  
  /**
   Creates a new log handler.
   
   - Parameters:
     - label: The name for this log handler
   */
  public init(label: String) {
    self.label = label
  }
  
  public func log(level: Logger.Level, message: Logger.Message, metadata: Logger.Metadata?, source: String, file: String, function: String, line: UInt) {
    var mergedMetadata = self.metadata
    if let metadata = metadata {
      for (key, value) in metadata {
        mergedMetadata[key] = value
      }
    }
    
    var metadataString = ""
    if !mergedMetadata.isEmpty {
      metadataString = mergedMetadata.map {
        return "\($0)=\($1)"
      }.joined(separator: ", ")
      metadataString = "(\(metadataString)) "
    }
    
    let timestamp = dateFormatter.string(from: Date())
    let logLevel = level.shortName.padding(toLength: 5, withPad: " ", startingAt: 0)
    var logMessage = "\(timestamp) \(source) [\(logLevel)] \(metadataString)"
    
    if level.isError {
      let fileName = file.split(separator: "/").last ?? "unknown"
      let location = "@ \(fileName):\(line):\(function), "
      logMessage += location
    }
    
    logMessage += message.description
    print(logMessage)
  }
  
  public subscript(metadataKey key: String) -> Logger.Metadata.Value? {
    get {
      metadata[key]
    }
    set(newValue) {
      metadata[key] = newValue
    }
  }
  
  /// Creates a date formatter with the default format string
  private static func createDefaultDateFormatter() -> DateFormatter {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss.SSSS"
    return dateFormatter
  }
}
