import Foundation
import AppKit

@main
public struct grabgif {
    public static func main() {
        let args = CommandLine.arguments.dropFirst()

        guard let path = args.first else {
            print("missing path to image file")
            exit(EXIT_FAILURE)
        }

        guard FileManager.default.fileExists(atPath: path) else {
            print("file doesn't exist at path \"\(path)\"")
            exit(EXIT_FAILURE)
        }

        let urlAbsoluteString = URL(fileURLWithPath: path).absoluteString

        let item = NSPasteboardItem()
        item.setString(urlAbsoluteString, forType: .fileURL)

        NSPasteboard.general.clearContents()

        guard NSPasteboard.general.writeObjects([item]) else {
            print("failed to write file to pasteboard")
            exit(EXIT_FAILURE)
        }
    }
}
