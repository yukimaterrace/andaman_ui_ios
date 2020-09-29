//
//  definitions.swift
//  AndamanUI
//
//  Created by Yuki Matsuo on 2020/09/28.
//

import Foundation

struct ErrorResponse {
    
}

struct ReactionTradeAlgorithmParams {
    let tradeDirectionLong: Bool
    
    let smallFrameLength: Int
    let largeFrameLength: Int
    
    let pipsGapForCreateOrder: Float
    let pipsForStopLoss: Float
    let pipsForAdditionalOrder: Float
    
    let timeForProfit1: Int
    let timeForProfit2: Int
    let timeForProfit3: Int
    
    let pipsForProfit1: Float
    let pipsForProfit2: Float
    let pipsForProfit3: Float
}

struct BreakTradeAlgorithmParams {
    let tradeDirectionLong: Bool
    
    let smallFrameLength: Int
    let largeFrameLength: Int
    
    let pipsGapForCreateOrder: Float
    let pipsForStopLoss: Float
    let pipsForAdditionalOrder: Float
    
    let timeForProfit1: Int
    let timeForProfit2: Int
    let timeForProfit3: Int
    
    let pipsForProfit1: Float
    let pipsForProfit2: Float
    let pipsForProfit3: Float
}

struct TradeSummary {
    let tradeAlgorithm: TradeAlgorithm
    let realizedProfit: Float
    let tradeCount: Int
    let reactionTradeAlgorithmParams: ReactionTradeAlgorithmParams?
    let breakTradeAlgorithmParams: BreakTradeAlgorithmParams?
}

struct GridSearchGrainResult {
    let tradePair: TradePair
    let timezone: Timezone
    let tradeDirection: TradeDirection
    let positiveProportions: Float
    let tradeSummaries: [TradeSummary]
}

struct GridSearchGrainResponse {
    let grain: GridSearchGrainResult
}

struct GridSearchGrainsResponse {
    let grains: [GridSearchGrainResult]
}
