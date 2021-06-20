//
//  Logger.swift
//  
//
//  Created by Rohan van Klinken on 20/6/21.
//

import Foundation
import Logging

// MARK: Add string logging to Logger
extension Logger {
  /// Log a message passing with the `Logger.Level.trace` log level.
  ///
  /// If `.trace` is at least as severe as the `Logger`'s `logLevel`, it will be logged,
  /// otherwise nothing will happen.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message
  ///    - source: The source this log messages originates from. Defaults
  ///              to the module emitting the log message (on Swift 5.3 or
  ///              newer and the folder name containing the log emitting file on Swift 5.2 or
  ///              older).
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func trace(_ message: @autoclosure () -> String,
                    metadata: @autoclosure () -> Logger.Metadata? = nil,
                    source: @autoclosure () -> String? = nil,
                    file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.log(level: .trace, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  
  #else
  @inlinable
  public func trace(_ message: @autoclosure () -> String,
                    metadata: @autoclosure () -> Logger.Metadata? = nil,
                    source: @autoclosure () -> String? = nil,
                    file: String = #file, function: String = #function, line: UInt = #line) {
    self.log(level: .trace, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  #endif
  
  /// If `.trace` is at least as severe as the `Logger`'s `logLevel`, it will be logged,
  /// otherwise nothing will happen.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func trace(_ message: @autoclosure () -> String,
                    metadata: @autoclosure () -> Logger.Metadata? = nil,
                    file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.trace(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  
  #else
  @inlinable
  public func trace(_ message: @autoclosure () -> String,
                    metadata: @autoclosure () -> Logger.Metadata? = nil,
                    file: String = #file, function: String = #function, line: UInt = #line) {
    self.trace(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  #endif
  
  /// Log a message passing with the `Logger.Level.debug` log level.
  ///
  /// If `.debug` is at least as severe as the `Logger`'s `logLevel`, it will be logged,
  /// otherwise nothing will happen.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message.
  ///    - source: The source this log messages originates from. Defaults
  ///              to the module emitting the log message (on Swift 5.3 or
  ///              newer and the folder name containing the log emitting file on Swift 5.2 or
  ///              older).
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func debug(_ message: @autoclosure () -> String,
                    metadata: @autoclosure () -> Logger.Metadata? = nil,
                    source: @autoclosure () -> String? = nil,
                    file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.log(level: .debug, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  
  #else
  public func debug(_ message: @autoclosure () -> String,
                    metadata: @autoclosure () -> Logger.Metadata? = nil,
                    source: @autoclosure () -> String? = nil,
                    file: String = #file, function: String = #function, line: UInt = #line) {
    self.log(level: .debug, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  #endif
  
  /// Log a message passing with the `Logger.Level.debug` log level.
  ///
  /// If `.debug` is at least as severe as the `Logger`'s `logLevel`, it will be logged,
  /// otherwise nothing will happen.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message.
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func debug(_ message: @autoclosure () -> String,
                    metadata: @autoclosure () -> Logger.Metadata? = nil,
                    file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.debug(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  
  #else
  @inlinable
  public func debug(_ message: @autoclosure () -> String,
                    metadata: @autoclosure () -> Logger.Metadata? = nil,
                    file: String = #file, function: String = #function, line: UInt = #line) {
    self.debug(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  #endif
  
  /// Log a message passing with the `Logger.Level.info` log level.
  ///
  /// If `.info` is at least as severe as the `Logger`'s `logLevel`, it will be logged,
  /// otherwise nothing will happen.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message.
  ///    - source: The source this log messages originates from. Defaults
  ///              to the module emitting the log message (on Swift 5.3 or
  ///              newer and the folder name containing the log emitting file on Swift 5.2 or
  ///              older).
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func info(_ message: @autoclosure () -> String,
                   metadata: @autoclosure () -> Logger.Metadata? = nil,
                   source: @autoclosure () -> String? = nil,
                   file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.log(level: .info, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  
  #else
  @inlinable
  public func info(_ message: @autoclosure () -> String,
                   metadata: @autoclosure () -> Logger.Metadata? = nil,
                   source: @autoclosure () -> String? = nil,
                   file: String = #file, function: String = #function, line: UInt = #line) {
    self.log(level: .info, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  #endif
  
  /// Log a message passing with the `Logger.Level.info` log level.
  ///
  /// If `.info` is at least as severe as the `Logger`'s `logLevel`, it will be logged,
  /// otherwise nothing will happen.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message.
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func info(_ message: @autoclosure () -> String,
                   metadata: @autoclosure () -> Logger.Metadata? = nil,
                   file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.info(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  
  #else
  @inlinable
  public func info(_ message: @autoclosure () -> String,
                   metadata: @autoclosure () -> Logger.Metadata? = nil,
                   file: String = #file, function: String = #function, line: UInt = #line) {
    self.info(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  #endif
  
  /// Log a message passing with the `Logger.Level.notice` log level.
  ///
  /// If `.notice` is at least as severe as the `Logger`'s `logLevel`, it will be logged,
  /// otherwise nothing will happen.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message.
  ///    - source: The source this log messages originates from. Defaults
  ///              to the module emitting the log message (on Swift 5.3 or
  ///              newer and the folder name containing the log emitting file on Swift 5.2 or
  ///              older).
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func notice(_ message: @autoclosure () -> String,
                     metadata: @autoclosure () -> Logger.Metadata? = nil,
                     source: @autoclosure () -> String? = nil,
                     file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.log(level: .notice, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  
  #else
  @inlinable
  public func notice(_ message: @autoclosure () -> String,
                     metadata: @autoclosure () -> Logger.Metadata? = nil,
                     source: @autoclosure () -> String? = nil,
                     file: String = #file, function: String = #function, line: UInt = #line) {
    self.log(level: .notice, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  #endif
  
  /// Log a message passing with the `Logger.Level.notice` log level.
  ///
  /// If `.notice` is at least as severe as the `Logger`'s `logLevel`, it will be logged,
  /// otherwise nothing will happen.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message.
  ///    - source: The source this log messages originates from. Defaults
  ///              to the module emitting the log message (on Swift 5.3 or
  ///              newer and the folder name containing the log emitting file on Swift 5.2 or
  ///              older).
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func notice(_ message: @autoclosure () -> String,
                     metadata: @autoclosure () -> Logger.Metadata? = nil,
                     file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.notice(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  
  #else
  public func notice(_ message: @autoclosure () -> String,
                     metadata: @autoclosure () -> Logger.Metadata? = nil,
                     file: String = #file, function: String = #function, line: UInt = #line) {
    self.notice(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  #endif
  
  /// Log a message passing with the `Logger.Level.warning` log level.
  ///
  /// If `.warning` is at least as severe as the `Logger`'s `logLevel`, it will be logged,
  /// otherwise nothing will happen.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message.
  ///    - source: The source this log messages originates from. Defaults
  ///              to the module emitting the log message (on Swift 5.3 or
  ///              newer and the folder name containing the log emitting file on Swift 5.2 or
  ///              older).
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func warning(_ message: @autoclosure () -> String,
                      metadata: @autoclosure () -> Logger.Metadata? = nil,
                      source: @autoclosure () -> String? = nil,
                      file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.log(level: .warning, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  
  #else
  @inlinable
  public func warning(_ message: @autoclosure () -> String,
                      metadata: @autoclosure () -> Logger.Metadata? = nil,
                      source: @autoclosure () -> String? = nil,
                      file: String = #file, function: String = #function, line: UInt = #line) {
    self.log(level: .warning, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  #endif
  
  /// Log a message passing with the `Logger.Level.warning` log level.
  ///
  /// If `.warning` is at least as severe as the `Logger`'s `logLevel`, it will be logged,
  /// otherwise nothing will happen.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message.
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func warning(_ message: @autoclosure () -> String,
                      metadata: @autoclosure () -> Logger.Metadata? = nil,
                      file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.warning(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  
  #else
  @inlinable
  public func warning(_ message: @autoclosure () -> String,
                      metadata: @autoclosure () -> Logger.Metadata? = nil,
                      file: String = #file, function: String = #function, line: UInt = #line) {
    self.warning(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  #endif
  
  /// Log a message passing with the `Logger.Level.error` log level.
  ///
  /// If `.error` is at least as severe as the `Logger`'s `logLevel`, it will be logged,
  /// otherwise nothing will happen.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message.
  ///    - source: The source this log messages originates from. Defaults
  ///              to the module emitting the log message (on Swift 5.3 or
  ///              newer and the folder name containing the log emitting file on Swift 5.2 or
  ///              older).
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func error(_ message: @autoclosure () -> String,
                    metadata: @autoclosure () -> Logger.Metadata? = nil,
                    source: @autoclosure () -> String? = nil,
                    file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.log(level: .error, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  
  #else
  @inlinable
  public func error(_ message: @autoclosure () -> String,
                    metadata: @autoclosure () -> Logger.Metadata? = nil,
                    source: @autoclosure () -> String? = nil,
                    file: String = #file, function: String = #function, line: UInt = #line) {
    self.log(level: .error, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  #endif
  
  /// Log a message passing with the `Logger.Level.error` log level.
  ///
  /// If `.error` is at least as severe as the `Logger`'s `logLevel`, it will be logged,
  /// otherwise nothing will happen.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message.
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func error(_ message: @autoclosure () -> String,
                    metadata: @autoclosure () -> Logger.Metadata? = nil,
                    file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.error(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  
  #else
  @inlinable
  public func error(_ message: @autoclosure () -> String,
                    metadata: @autoclosure () -> Logger.Metadata? = nil,
                    file: String = #file, function: String = #function, line: UInt = #line) {
    self.error(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  #endif
  
  /// Log a message passing with the `Logger.Level.critical` log level.
  ///
  /// `.critical` messages will always be logged.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message.
  ///    - source: The source this log messages originates from. Defaults
  ///              to the module emitting the log message (on Swift 5.3 or
  ///              newer and the folder name containing the log emitting file on Swift 5.2 or
  ///              older).
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func critical(_ message: @autoclosure () -> String,
                       metadata: @autoclosure () -> Logger.Metadata? = nil,
                       source: @autoclosure () -> String? = nil,
                       file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.log(level: .critical, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  
  #else
  @inlinable
  public func critical(_ message: @autoclosure () -> String,
                       metadata: @autoclosure () -> Logger.Metadata? = nil,
                       source: @autoclosure () -> String? = nil,
                       file: String = #file, function: String = #function, line: UInt = #line) {
    self.log(level: .critical, Logger.Message(stringLiteral: message()), metadata: metadata(), source: source(), file: file, function: function, line: line)
  }
  #endif
  
  /// Log a message passing with the `Logger.Level.critical` log level.
  ///
  /// `.critical` messages will always be logged.
  ///
  /// - parameters:
  ///    - message: The message to be logged. `message` can be used with any string interpolation literal.
  ///    - metadata: One-off metadata to attach to this log message.
  ///    - source: The source this log messages originates from. Defaults
  ///              to the module emitting the log message (on Swift 5.3 or
  ///              newer and the folder name containing the log emitting file on Swift 5.2 or
  ///              older).
  ///    - file: The file this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#fileID` (on Swift 5.3 or newer and `#file` on Swift 5.2 or older).
  ///    - function: The function this log message originates from (there's usually no need to pass it explicitly as
  ///                it defaults to `#function`).
  ///    - line: The line this log message originates from (there's usually no need to pass it explicitly as it
  ///            defaults to `#line`).
  #if compiler(>=5.3)
  @inlinable
  public func critical(_ message: @autoclosure () -> String,
                       metadata: @autoclosure () -> Logger.Metadata? = nil,
                       file: String = #fileID, function: String = #function, line: UInt = #line) {
    self.critical(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  
  #else
  @inlinable
  public func critical(_ message: @autoclosure () -> String,
                       metadata: @autoclosure () -> Logger.Metadata? = nil,
                       file: String = #file, function: String = #function, line: UInt = #line) {
    self.critical(Logger.Message(stringLiteral: message()), metadata: metadata(), source: nil, file: file, function: function, line: line)
  }
  #endif
}
