package org.apache.poi.xslf.draw.chart;

import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.Grouping;
import org.apache.poi.xslf.usermodel.chart.XSLFLine3DChartData;

/* loaded from: classes13.dex */
public class DrawLine3DChart extends BaseDrawLineChart<XSLFLine3DChartData> {
    public DrawLine3DChart(XSLFChart xSLFChart, XSLFLine3DChartData xSLFLine3DChartData) {
        super(xSLFChart, xSLFLine3DChartData);
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawLineChart
    public Grouping getGrouping() {
        return ((XSLFLine3DChartData) this.chartData).getGrouping();
    }
}
