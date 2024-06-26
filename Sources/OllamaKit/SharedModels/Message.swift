//
//  File.swift
//
//
//  Created by Khalid on 27/06/2024.
//

import Foundation
public struct Message: Codable {
    /// A ``Role`` value indicating the sender of the message (system, assistant, user).
    public let role: Role

    /// A string containing the message's content.
    public let content: String

    /// An optional array of base64-encoded images.
    public let images: [String]?

    public init(role: Role, content: String, images: [String]?) {
        self.role = role
        self.content = content
        self.images = images
    }

    /// An enumeration that represents the role of the message sender.
    public enum Role: String, Codable {
        /// Indicates the message is from the system.
        case system

        /// Indicates the message is from the assistant.
        case assistant

        /// Indicates the message is from the user.
        case user
    }
}
