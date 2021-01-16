//
//  ViewController.swift
//  ChartsXcode
//
//  Created by Janarthan Subburaj on 16/01/21.
//

import UIKit
import Charts

class ViewController: UIViewController,ChartViewDelegate {

    var barChart = BarChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barChart.delegate = self
        barChart.dragEnabled = true
        barChart.isUserInteractionEnabled = true
        UIApplication.shared.endIgnoringInteractionEvents()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        barChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        barChart.center = view.center
        view.addSubview(barChart)
        var entries = [BarChartDataEntry]()
        for x in 0..<10{
            entries.append(BarChartDataEntry(x: Double(x),y: Double(x)))
        }
        let set = BarChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.pastel()
        let data = BarChartData(dataSet:set)
        barChart.data = data
    }
}
