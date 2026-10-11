package org.apache.poi.xslf.draw.chart;

import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.Grouping;
import org.apache.poi.xslf.usermodel.chart.XSLFLineChartData;

/* loaded from: classes13.dex */
public class DrawLineChart extends BaseDrawLineChart<XSLFLineChartData> {
    public DrawLineChart(XSLFChart xSLFChart, XSLFLineChartData xSLFLineChartData) {
        super(xSLFChart, xSLFLineChartData);
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawLineChart
    public Grouping getGrouping() {
        return ((XSLFLineChartData) this.chartData).getGrouping();
    }
}
