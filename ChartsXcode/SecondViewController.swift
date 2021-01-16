//
//  SecondViewController.swift
//  ChartsXcode
//
//  Created by Janarthan Subburaj on 16/01/21.
//

import UIKit
import Charts
class SecondViewController: UIViewController,ChartViewDelegate {

    var lineChart = LineChartView()
    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
        lineChart.dragEnabled = true
        lineChart.isUserInteractionEnabled = true
        UIApplication.shared.endIgnoringInteractionEvents()

    }
    override func viewDidLayoutSubviews() {
        lineChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        lineChart.center = view.center
        view.addSubview(lineChart)
        var entries = [ChartDataEntry]()
        for x in 0..<10{
            entries.append(ChartDataEntry(x: Double(x),y: Double(x)))
        }
        let set = LineChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.colorful()
        let data = LineChartData(dataSet:set)
        lineChart.data = data
    }
    }

