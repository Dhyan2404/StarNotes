package org.apache.poi.xslf.draw.chart;

import com.github.mikephil.charting.charts.BubbleChart;
import com.github.mikephil.charting.data.BubbleData;
import com.github.mikephil.charting.data.BubbleDataSet;
import com.github.mikephil.charting.data.BubbleEntry;
import java.util.ArrayList;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.XSLFBubbleChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFChartData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;

/* loaded from: classes13.dex */
public class DrawBubbleChart extends AbstractDrawChart<XSLFBubbleChartData, BubbleChart, BubbleData, BubbleEntry> {
    public DrawBubbleChart(XSLFChart xSLFChart, XSLFBubbleChartData xSLFBubbleChartData) {
        super(xSLFChart, xSLFBubbleChartData);
    }

    private void setBubbleChart(BubbleChart bubbleChart) {
        setLegend(bubbleChart.getLegend());
        bubbleChart.getDescription().setEnabled(false);
        bubbleChart.setDrawMarkers(false);
        bubbleChart.setMinOffset(5.0f);
    }

    private void setChartData(BubbleChart bubbleChart) {
        bubbleChart.setData(getChartData());
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void init() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public <N extends Number> BubbleEntry createEntry(N n, N n2) {
        return new BubbleEntry(n.floatValue(), n2.floatValue(), 5.0f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public BubbleChart getChart() {
        return new BubbleChart(getContext());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public BubbleData getChartData() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.seriesCount; i++) {
            XSLFChartData.XSLFSeries xSLFSeries = ((XSLFBubbleChartData) this.chartData).getXSLFSeries(i);
            BubbleDataSet bubbleDataSet = new BubbleDataSet(getValues(xSLFSeries), getLabel(xSLFSeries));
            bubbleDataSet.setAxisDependency(this.yAxisDependency);
            CTDLbls cTDLBls = xSLFSeries.getCTDLBls();
            setDataSetColor(bubbleDataSet, xSLFSeries, i);
            setDataSetDrawValues(bubbleDataSet, cTDLBls);
            setDataSetValueTextColor(bubbleDataSet, cTDLBls);
            setDataSetValueFormatter(bubbleDataSet, xSLFSeries, cTDLBls);
            arrayList.add(bubbleDataSet);
        }
        return new BubbleData(arrayList);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setChart(BubbleChart bubbleChart) {
        setBubbleChart(bubbleChart);
        setChartData(bubbleChart);
        setAxis(bubbleChart);
    }
}
