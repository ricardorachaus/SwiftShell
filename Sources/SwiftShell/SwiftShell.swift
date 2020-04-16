import Foundation

public struct SwiftShell {

    @discardableResult
    public static func shell(_ command: String) -> String? {
        let task = Process()
        task.launchPath = "/bin/sh"
        task.arguments = ["-c", command]

        let pipe = Pipe()
        task.standardOutput = pipe

        task.launch()
        pipe.fileHandleForReading.readDataToEndOfFile()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        if let output = String(data: data, encoding: .utf8) {
            return output
        }

        return String()
    }

}
