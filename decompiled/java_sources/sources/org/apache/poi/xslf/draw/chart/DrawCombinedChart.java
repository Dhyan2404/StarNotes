package org.apache.poi.xslf.draw.chart;

import com.github.mikephil.charting.charts.CombinedChart;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BubbleData;
import com.github.mikephil.charting.data.CandleData;
import com.github.mikephil.charting.data.ChartData;
import com.github.mikephil.charting.data.CombinedData;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.ScatterData;
import com.onyx.common.util.JLog;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.sl.draw.AndroidDrawGraphicalFrameChart;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.XSLFChartData;

/* loaded from: classes13.dex */
public class DrawCombinedChart extends AbstractDrawChart<XSLFChartData, CombinedChart, CombinedData, Entry> {
    private List<XSLFChartData> dataList;
    private boolean hasBarData;

    public DrawCombinedChart(XSLFChart xSLFChart, List<XSLFChartData> list) {
        super(xSLFChart, list.get(0));
        this.dataList = list;
    }

    private void setChartData(CombinedChart combinedChart) {
        combinedChart.setData(getChartData());
    }

    private void setCombinedChart(CombinedChart combinedChart) {
        setLegend(combinedChart.getLegend());
        combinedChart.getDescription().setEnabled(false);
        combinedChart.setDrawGridBackground(false);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public Entry createEntry(Number number, Number number2) {
        return null;
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void init() {
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public CombinedChart getChart() {
        return new CombinedChart(getContext());
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public CombinedData getChartData() {
        CombinedData combinedData = new CombinedData();
        Iterator<XSLFChartData> it2 = this.dataList.iterator();
        while (it2.hasNext()) {
            AbstractDrawChart specificDrawChart = AndroidDrawGraphicalFrameChart.getSpecificDrawChart(this.chart, it2.next());
            if (specificDrawChart != null) {
                ChartData chartData = specificDrawChart.getChartData();
                if (chartData instanceof LineData) {
                    combinedData.setData((LineData) chartData);
                } else if (chartData instanceof BarData) {
                    combinedData.setData((BarData) chartData);
                    this.hasBarData = true;
                } else if (chartData instanceof ScatterData) {
                    combinedData.setData((ScatterData) chartData);
                } else if (chartData instanceof CandleData) {
                    combinedData.setData((CandleData) chartData);
                } else if (chartData instanceof BubbleData) {
                    combinedData.setData((BubbleData) chartData);
                } else {
                    JLog.m41642e(this.TAG, "Can't draw data:%s", chartData.getClass().getSimpleName());
                }
            }
        }
        return combinedData;
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setChart(CombinedChart combinedChart) {
        setCombinedChart(combinedChart);
        setChartData(combinedChart);
        setAxis(combinedChart);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setCustomXAXis(CombinedChart combinedChart, XAxis xAxis) {
        super.setCustomXAXis((DrawCombinedChart) combinedChart, xAxis);
        if (this.hasBarData) {
            xAxis.setCenterAxisLabels(true);
            xAxis.setAxisMaximum(((CombinedData) combinedChart.getData()).getXMax() + 1.0f);
        }
    }
}
