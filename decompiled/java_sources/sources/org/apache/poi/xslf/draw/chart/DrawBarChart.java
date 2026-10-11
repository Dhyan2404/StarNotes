package org.apache.poi.xslf.draw.chart;

import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.BarGrouping;
import org.apache.poi.xslf.usermodel.chart.XSLFBarChartData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBarDir;

/* loaded from: classes13.dex */
public class DrawBarChart extends BaseDrawBarChart<XSLFBarChartData> {
    public DrawBarChart(XSLFChart xSLFChart, XSLFBarChartData xSLFBarChartData) {
        super(xSLFChart, xSLFBarChartData);
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawBarChart
    public BarGrouping getBarGrouping() {
        return ((XSLFBarChartData) this.chartData).getBarGrouping();
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawBarChart
    public CTBarDir getCTBarDir() {
        return ((XSLFBarChartData) this.chartData).getInternalChart().getBarDir();
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawBarChart
    public Integer getGapWidth() {
        return ((XSLFBarChartData) this.chartData).getGapWidth();
    }
}
