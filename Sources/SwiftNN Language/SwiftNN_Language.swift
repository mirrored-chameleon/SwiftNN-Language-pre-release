//
//  SwiftNN_Language.swift
//  SwiftNN Language
//
//  Created by Davyn Monagle on 21/07/2026.
//


@main
struct SwiftNN_Language {
    static func main() {
        let vocab = Vocabulary(tokens: ["hello", "world"], dims: 128)
        if let result = vocab.embedding(for: "hello") {
            print(result)
        }
    }
}
