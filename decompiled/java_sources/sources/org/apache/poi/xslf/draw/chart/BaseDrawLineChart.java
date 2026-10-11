package org.apache.poi.xslf.draw.chart;

import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.utils.Utils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.Grouping;
import org.apache.poi.xslf.usermodel.chart.XSLFChartData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;

/* loaded from: classes13.dex */
public abstract class BaseDrawLineChart<T extends XSLFChartData> extends AbstractDrawChart<T, LineChart, LineData, Entry> {
    protected boolean isStackedBar;
    protected Map<Float, Float> stackValues;

    public BaseDrawLineChart(XSLFChart xSLFChart, T t) {
        super(xSLFChart, t);
        this.stackValues = new HashMap();
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
        float floatValue = n.floatValue();
        return new Entry(floatValue, getYValue(floatValue, n2.floatValue()));
    }

    public abstract Grouping getGrouping();

    public float getYValue(float f, float f2) {
        if (!this.isStackedBar) {
            return f2;
        }
        Float f3 = this.stackValues.get(Float.valueOf(f));
        if (f3 != null) {
            f2 += f3.floatValue();
        }
        this.stackValues.put(Float.valueOf(f), Float.valueOf(f2));
        return f2;
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void init() {
        Grouping grouping = getGrouping();
        this.isStackedBar = grouping == Grouping.PERCENT_STACKED || grouping == Grouping.STACKED;
    }

    public boolean isPercentChart() {
        return getGrouping() == Grouping.PERCENT_STACKED;
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setLegendForm(Legend legend) {
        legend.setForm(Legend.LegendForm.LINE);
        legend.setFormLineWidth(1.4f);
        legend.setFormSize(12.0f);
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
            CTDLbls cTDLBls = xSLFSeries.getCTDLBls();
            setDataSetColor(lineDataSet, xSLFSeries, i);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setCustomXAXis(LineChart lineChart, XAxis xAxis) {
        super.setCustomXAXis((BaseDrawLineChart<T>) lineChart, xAxis);
        xAxis.setAxisMinimum(-0.4f);
        xAxis.setAxisMaximum(((LineData) lineChart.getData()).getXMax() + 0.4f);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setCustomYAxisLeft(LineChart lineChart, YAxis yAxis) {
        super.setCustomYAxisLeft((BaseDrawLineChart<T>) lineChart, yAxis);
        if (isPercentChart()) {
            yAxis.setAxisMaximum(1.0f);
            yAxis.setGranularityEnabled(false);
        }
    }
}
