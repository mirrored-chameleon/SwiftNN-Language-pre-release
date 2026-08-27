//
//  OutputProjection.swift
//  SwiftNN Language
//
//  Created by Davyn Monagle on 13/08/2026.
//

struct OutputProjection {

    var weights: Matrix<Double>
    var bias: Matrix<Double>

    init(hiddenSize: Int, vocabularySize: Int) {

        weights = Matrix<Double>.random(
            rows: hiddenSize,
            columns: vocabularySize
        )

        bias = Matrix(
            rows: 1,
            columns: vocabularySize,
            grid: Array(repeating: 0.0, count: vocabularySize)
        )
    }

    func forward(_ input: Matrix<Double>) -> Matrix<Double> {

        let logits = input * weights

        var output = logits

        for row in 0..<output.rows {
            for column in 0..<output.columns {
                output[row, column] += bias[0, column]
            }
        }

        return output
    }
}

struct OutputSoftmax {

    func forward(_ logits: Matrix<Double>) -> Matrix<Double> {

        Matrix(
            rows: logits.rows,
            columns: logits.columns,
            grid: (0..<logits.rows).flatMap { row in
                softmax(logits[row])
            }
        )
    }
}

struct TokenSelection {

    func select(_ probabilities: Matrix<Double>) -> [Int] {

        var tokens: [Int] = []

        for row in 0..<probabilities.rows {
            tokens.append(argmax(probabilities[row]))
        }

        return tokens
    }
}