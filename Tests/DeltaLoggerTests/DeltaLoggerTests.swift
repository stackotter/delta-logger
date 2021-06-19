import XCTest
import Logging
@testable import DeltaLogger

final class DeltaLoggerTests: XCTestCase {
  func testExample() {
    print("")
    
    // Setup
    LoggingSystem.bootstrap(DeltaLogHandler.init)
    let log = Logger(label: "DeltaClient")
    log.debug("Logger initialized")
    
    // Metadata
    var metaLog = log
    metaLog[metadataKey: "thread"] = "worker-1"
    metaLog.debug("This is a thread workload")
    metaLog.critical("Whoops that's not very good")
    
    log.info("Thread job completed")
    log.error("Oh no an error")
    
    print("")
    
    XCTAssertEqual("Hello, World!", "Hello, World!")
  }

  static var allTests = [
    ("testExample", testExample),
  ]
}
