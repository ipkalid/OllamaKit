//
//  OKChatRequestData.swift
//
//
//  Created by Augustinas Malinauskas on 12/12/2023.
//

import Foundation

/// A structure that encapsulates data for chat requests to the Ollama API.
public struct OKChatRequestData: Encodable {
    private let stream: Bool

    /// A string representing the model identifier to be used for the chat session.
    public let model: String

    /// An array of ``Message`` instances representing the content to be sent to the Ollama API.
    public let messages: [Message]

    /// Optional ``OKCompletionOptions`` providing additional configuration for the chat request.
    public var options: OKCompletionOptions?

    public init(model: String, messages: [Message]) {
        stream = true
        self.model = model
        self.messages = messages
    }

    /// A structure that represents a single message in the chat request.
}
