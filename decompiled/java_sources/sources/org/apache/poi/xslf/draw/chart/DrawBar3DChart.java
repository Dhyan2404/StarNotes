package org.apache.poi.xslf.draw.chart;

import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.BarGrouping;
import org.apache.poi.xslf.usermodel.chart.XSLFBar3DChartData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBarDir;

/* loaded from: classes13.dex */
public class DrawBar3DChart extends BaseDrawBarChart<XSLFBar3DChartData> {
    public DrawBar3DChart(XSLFChart xSLFChart, XSLFBar3DChartData xSLFBar3DChartData) {
        super(xSLFChart, xSLFBar3DChartData);
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawBarChart
    public BarGrouping getBarGrouping() {
        return ((XSLFBar3DChartData) this.chartData).getBarGrouping();
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawBarChart
    public CTBarDir getCTBarDir() {
        return ((XSLFBar3DChartData) this.chartData).getInternalChart().getBarDir();
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawBarChart
    public Integer getGapWidth() {
        return ((XSLFBar3DChartData) this.chartData).getGapWidth();
    }
}
