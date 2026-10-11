package org.apache.poi.xslf.draw.chart;

import com.github.mikephil.charting.charts.PieChart;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.XSLFDoughnutChartData;

/* loaded from: classes13.dex */
public class DrawDoughnutChart extends BaseDrawPieChart<XSLFDoughnutChartData> {
    public DrawDoughnutChart(XSLFChart xSLFChart, XSLFDoughnutChartData xSLFDoughnutChartData) {
        super(xSLFChart, xSLFDoughnutChartData);
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawPieChart
    public void setPieChart(PieChart pieChart) {
        setLegend(pieChart.getLegend());
        Integer holeSize = ((XSLFDoughnutChartData) this.chartData).getHoleSize();
        if (holeSize != null) {
            pieChart.setHoleRadius(holeSize.floatValue());
        }
        pieChart.setDrawEntryLabels(false);
        pieChart.setDrawCenterText(false);
        pieChart.setDrawSlicesUnderHole(true);
        pieChart.setDrawHoleEnabled(true);
        pieChart.setDrawMarkers(false);
        pieChart.setMinOffset(5.0f);
    }
}
