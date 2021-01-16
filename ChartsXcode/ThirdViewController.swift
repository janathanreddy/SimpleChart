//
//  ThirdViewController.swift
//  ChartsXcode
//
//  Created by Janarthan Subburaj on 16/01/21.
//

import UIKit
import Charts

class ThirdViewController: UIViewController,ChartViewDelegate {

    var pieChart = PieChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        pieChart.delegate = self
        pieChart.dragDecelerationEnabled = true
        pieChart.isUserInteractionEnabled = true
        UIApplication.shared.endIgnoringInteractionEvents()

    }
    override func viewDidLayoutSubviews() {
        pieChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        pieChart.center = view.center
        view.addSubview(pieChart)
        var entries = [PieChartDataEntry]()
        for x in 0..<10{
            entries.append(PieChartDataEntry(value: Double(x),data: Double(x)))
        }
        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.material()
        let data = PieChartData(dataSet:set)
        pieChart.data = data
    }

}
