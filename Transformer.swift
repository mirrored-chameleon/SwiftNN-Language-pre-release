//
//  Transformer.swift
//  SwiftNN Language
//
//  Created by Davyn Monagle on 13/08/2026.
//

//
//  Transformer.swift
//  SwiftNN Language
//

import SwiftNN

struct Transformer {

    var positionalEncoding: SinusoidalPositionalEncoding
    var attention: SelfAttention
    var feedForward: FeedForward
    var outputProjection: OutputProjection
    var outputSoftmax: OutputSoftmax

    func forward(_ input: Matrix<Double>) -> Matrix<Double> {

        let positioned = positionalEncoding.forward(input)

        let attended = attention.forward(positioned)

        let fedForward = feedForward.forward(attended)

        let logits = outputProjection.forward(fedForward)

        let probabilities = outputSoftmax.forward(logits)

        return probabilities
    }
}