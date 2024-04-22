import Cocoa
import ReSwift

enum AppDelegateAction: Action {
    case didFinishLaunching
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!
    var window2: NSWindow!
    var window3: NSWindow!
    var window4: NSWindow!

    func applicationDidFinishLaunching(_: Notification) {
        let viewController = ScreenViewController(serialNum: 0x0001)
        window = NSWindow(contentViewController: viewController)
        window.delegate = viewController
        window.title = "DeskPad-1"
        window.makeKeyAndOrderFront(nil)
        window.titlebarAppearsTransparent = true
        window.isMovableByWindowBackground = true
        window.titleVisibility = .hidden
        window.styleMask.remove(.titled)
        window.standardWindowButton(.miniaturizeButton)?.isEnabled = false
        window.standardWindowButton(.miniaturizeButton)?.isHidden = true
        window.standardWindowButton(.zoomButton)?.isEnabled = false
        window.standardWindowButton(.zoomButton)?.isHidden = true
        window.standardWindowButton(.closeButton)?.isEnabled = false
        window.standardWindowButton(.closeButton)?.isHidden = true
        window.backgroundColor = .white
        window.contentMinSize = CGSize(width: 400, height: 300)
        window.contentMaxSize = CGSize(width: 3840, height: 2160)
        window.styleMask.insert(.resizable)
        window.collectionBehavior.insert(.fullScreenNone)

        let viewController2 = ScreenViewController(serialNum: 0x0002)
        window2 = NSWindow(contentViewController: viewController2)
        window2.delegate = viewController2
        window2.title = "DeskPad-2"
        window2.makeKeyAndOrderFront(nil)
        window2.titlebarAppearsTransparent = true
        window2.isMovableByWindowBackground = true
        window2.titleVisibility = .hidden
        window2.styleMask.remove(.titled)
        window2.standardWindowButton(.miniaturizeButton)?.isEnabled = false
        window2.standardWindowButton(.miniaturizeButton)?.isHidden = true
        window2.standardWindowButton(.zoomButton)?.isEnabled = false
        window2.standardWindowButton(.zoomButton)?.isHidden = true
        window2.standardWindowButton(.closeButton)?.isEnabled = false
        window2.standardWindowButton(.closeButton)?.isHidden = true
        window2.backgroundColor = .white
        window2.contentMinSize = CGSize(width: 400, height: 300)
        window2.contentMaxSize = CGSize(width: 3840, height: 2160)
        window2.styleMask.insert(.resizable)
        window2.collectionBehavior.insert(.fullScreenNone)

        let viewController3 = ScreenViewController(serialNum: 0x0003)
        window3 = NSWindow(contentViewController: viewController3)
        window3.delegate = viewController3
        window3.title = "DeskPad-3"
        window3.makeKeyAndOrderFront(nil)
        window3.titlebarAppearsTransparent = true
        window3.isMovableByWindowBackground = true
        window3.titleVisibility = .hidden
        window3.styleMask.remove(.titled)
        window3.standardWindowButton(.miniaturizeButton)?.isEnabled = false
        window3.standardWindowButton(.miniaturizeButton)?.isHidden = true
        window3.standardWindowButton(.zoomButton)?.isEnabled = false
        window3.standardWindowButton(.zoomButton)?.isHidden = true
        window3.standardWindowButton(.closeButton)?.isEnabled = false
        window3.standardWindowButton(.closeButton)?.isHidden = true
        window3.backgroundColor = .white
        window3.contentMinSize = CGSize(width: 400, height: 300)
        window3.contentMaxSize = CGSize(width: 3840, height: 2160)
        window3.styleMask.insert(.resizable)
        window3.collectionBehavior.insert(.fullScreenNone)

        let viewController4 = ScreenViewController(serialNum: 0x0004)
        window4 = NSWindow(contentViewController: viewController4)
        window4.delegate = viewController4
        window4.title = "DeskPad-4"
        window4.makeKeyAndOrderFront(nil)
        window4.titlebarAppearsTransparent = true
        window4.isMovableByWindowBackground = true
        window4.titleVisibility = .hidden
        window4.styleMask.remove(.titled)
        window4.standardWindowButton(.miniaturizeButton)?.isEnabled = false
        window4.standardWindowButton(.miniaturizeButton)?.isHidden = true
        window4.standardWindowButton(.zoomButton)?.isEnabled = false
        window4.standardWindowButton(.zoomButton)?.isHidden = true
        window4.standardWindowButton(.closeButton)?.isEnabled = false
        window4.standardWindowButton(.closeButton)?.isHidden = true
        window4.backgroundColor = .white
        window4.contentMinSize = CGSize(width: 400, height: 300)
        window4.contentMaxSize = CGSize(width: 3840, height: 2160)
        window4.styleMask.insert(.resizable)
        window4.collectionBehavior.insert(.fullScreenNone)

        let mainMenu = NSMenu()
        let mainMenuItem = NSMenuItem()
        let subMenu = NSMenu(title: "MainMenu")
        let quitMenuItem = NSMenuItem(
            title: "Quit",
            action: #selector(NSApp.terminate),
            keyEquivalent: "q"
        )
        subMenu.addItem(quitMenuItem)
        mainMenuItem.submenu = subMenu
        mainMenu.items = [mainMenuItem]
        NSApplication.shared.mainMenu = mainMenu

        store.dispatch(AppDelegateAction.didFinishLaunching)
    }

    func applicationShouldTerminateAfterLastWindowClosed(_: NSApplication) -> Bool {
        return true
    }
}
