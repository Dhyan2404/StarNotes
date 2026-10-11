package org.apache.poi.xslf.draw.chart;

import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.utils.Utils;
import java.awt.Color;
import java.util.ArrayList;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.XSLFChartData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;

/* loaded from: classes13.dex */
public abstract class BaseDrawAreaChart<T extends XSLFChartData> extends AbstractDrawChart<T, LineChart, LineData, Entry> {
    public BaseDrawAreaChart(XSLFChart xSLFChart, T t) {
        super(xSLFChart, t);
    }

    private void setChartData(LineChart lineChart) {
        lineChart.setData(getChartData());
    }

    private void setLineChart(LineChart lineChart) {
        setLegend(lineChart.getLegend());
        lineChart.getDescription().setEnabled(false);
        lineChart.setDrawMarkers(false);
        lineChart.setDrawGridBackground(false);
        lineChart.setMinOffset(5.0f);
        lineChart.setExtraTopOffset(12.0f);
        lineChart.setExtraRightOffset(12.0f);
        lineChart.setExtraBottomOffset(5.0f);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public <N extends Number> Entry createEntry(N n, N n2) {
        return new Entry(n.floatValue(), n2.floatValue());
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void init() {
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public LineChart getChart() {
        return new LineChart(getContext());
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public LineData getChartData() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.seriesCount; i++) {
            XSLFChartData.XSLFSeries xSLFSeries = this.chartData.getXSLFSeries(i);
            LineDataSet lineDataSet = new LineDataSet(getValues(xSLFSeries), getLabel(xSLFSeries));
            lineDataSet.setAxisDependency(this.yAxisDependency);
            lineDataSet.setLineWidth(Utils.convertPixelsToDp(1.0f));
            lineDataSet.setDrawCircles(false);
            lineDataSet.setDrawFilled(true);
            CTDLbls cTDLBls = xSLFSeries.getCTDLBls();
            Color dataSetColor = getDataSetColor(xSLFSeries);
            if (dataSetColor != null) {
                lineDataSet.setColor(dataSetColor.getRGB());
                lineDataSet.setFillAlpha(255);
                lineDataSet.setFillColor(dataSetColor.getRGB());
            }
            setDataSetDrawValues(lineDataSet, cTDLBls);
            setDataSetValueTextColor(lineDataSet, cTDLBls);
            setDataSetValueFormatter(lineDataSet, xSLFSeries, cTDLBls);
            arrayList.add(lineDataSet);
        }
        return new LineData(arrayList);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setChart(LineChart lineChart) {
        setLineChart(lineChart);
        setChartData(lineChart);
        setAxis(lineChart);
    }
}
