//
//  LogLevel.swift
//  DeltaLogger
//
//  Created by Rohan van Klinken on 20/6/21.
//

import Foundation
import Logging

extension Logger.Level {
  private static var errorLevels: [Logger.Level] = [
    .error,
    .critical]
  
  var isError: Bool {
    return Self.errorLevels.contains(self)
  }
  
  var shortName: String {
    switch self {
      case .trace: return "trace"
      case .debug: return "debug"
      case .info: return "info"
      case .notice: return "note"
      case .warning: return "warn"
      case .error: return "error"
      case .critical: return "crit"
    }
  }
}
