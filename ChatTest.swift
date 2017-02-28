

import UIKit
import SwiftR

class ChatTest: UIViewController {
    
    var chatHub: Hub!
    var connection: SignalR!
    var name: String!

    override func viewDidLoad() {
        super.viewDidLoad()
//        //http://tskyonline.com:89/ChatHub
//        connection = SignalR("http://tskyonline.com:89/ChatHub")
//        connection.useWKWebView = true
//        connection.signalRVersion = .v2_2_0
//        
//        chatHub = Hub("ChatHub")
//        chatHub.on("broadcastMessage") { [weak self] args in
//            print ("*************  \(args) *************")
////            if let name = args?[0] as? String, let message = args?[1] as? String, let text = self?.chatTextView.text {
////                self?.chatTextView.text = "\(text)\n\n\(name): \(message)"
////            }
//        }
//        connection.addHub(chatHub)
//        
//        // SignalR events
//        
//        connection.starting = { [weak self] in
//            print("connection.starting")
//            print("Connection ID: \(self!.connection.connectionID!)")
////            self?.statusLabel.text = "Starting..."
////            self?.startButton.isEnabled = false
////            self?.sendButton.isEnabled = false
//        }
//        
//        connection.reconnecting = { [weak self] in
//            print("connection.reconnecting")
//            print("Connection ID: \(self!.connection.connectionID!)")
////            self?.statusLabel.text = "Reconnecting..."
////            self?.startButton.isEnabled = false
////            self?.sendButton.isEnabled = false
//        }
//        
//        connection.connected = { [weak self] in
//            print("connection.connected")
//            print("Connection ID: \(self!.connection.connectionID!)")
////            self?.statusLabel.text = "Connected \(self!.connection.connectionID)"
////            self?.startButton.isEnabled = true
////            self?.startButton.title = "Stop"
////            self?.sendButton.isEnabled = true
//        }
//        
//        connection.reconnected = { [weak self] in
//            print("connection.reconnected")
//            print("Connection ID: \(self!.connection.connectionID!)")
////            self?.statusLabel.text = "Reconnected. Connection ID: \(self!.connection.connectionID!)"
////            self?.startButton.isEnabled = true
////            self?.startButton.title = "Stop"
////            self?.sendButton.isEnabled = true
//        }
//        
//        connection.disconnected = { [weak self] in
//            print("connection.disconnected")
////            self?.statusLabel.text = "Disconnected"
////            self?.startButton.isEnabled = true
////            self?.startButton.title = "Start"
////            self?.sendButton.isEnabled = false
//        }
//        
//        connection.connectionSlow = { print("Connection slow...") }
//        
//        connection.error = { [weak self] error in
//            print("Error: \(error)")
//            
//            // Here's an example of how to automatically reconnect after a timeout.
//            //
//            // For example, on the device, if the app is in the background long enough
//            // for the SignalR connection to time out, you'll get disconnected/error
//            // notifications when the app becomes active again.
//            
//            if let source = error?["source"] as? String, source == "TimeoutException" {
//                print("Connection timed out. Restarting...")
//                self?.connection.start()
//            }
//        }
//        
//        connection.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
