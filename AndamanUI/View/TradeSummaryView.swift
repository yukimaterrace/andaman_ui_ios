//
//  GridSearchGrainDetailView.swift
//  AndamanUI
//
//  Created by Yuki Matsuo on 2020/10/04.
//

import SwiftUI

struct TradeSummaryView: View, Identifiable {
    var id = UUID()
    var tradeSummary: TradeSummary
    
    @ViewBuilder
    private func paramsView(_ params: Any) -> some View {
        if let _params = params as? TradeParams {
            LazyVGrid(columns: GridItem.flexible2, alignment: .leading, spacing: 5) {
                ForEach(_params.params) { param in
                    Text(param.key).foregroundColor(.red)
                    Text(param.value)
                }
            }
            .padding()
        } else {
            EmptyView()
        }
    }
    
    var headerView: some View {
        LazyVGrid(columns: GridItem.flexible2, alignment: .leading, spacing: 5) {
            Text("Algorithm").foregroundColor(.blue)
            Text(tradeSummary.tradeAlgorithm.asTradeResult)
            
            Text("Realized Profit").foregroundColor(.blue)
            Text(tradeSummary.realizedProfit.asTradeResult)
            
            Text("Trade Count").foregroundColor(.blue)
            Text(tradeSummary.tradeCount.asTradeResult)
        }
        .padding()
    }
    
    var body: some View {
        headerView
        Divider()
        paramsView(tradeSummary.tradeParams)
    }
}
