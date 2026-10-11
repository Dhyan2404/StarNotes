package org.apache.poi.xslf.draw.chart;

import android.graphics.RectF;
import com.github.mikephil.charting.charts.RadarChart;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.data.RadarData;
import com.github.mikephil.charting.data.RadarDataSet;
import com.github.mikephil.charting.data.RadarEntry;
import com.github.mikephil.charting.utils.Utils;
import java.util.ArrayList;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.XSLFChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFRadarChartData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;

/* loaded from: classes13.dex */
public class DrawRadarChart extends AbstractDrawChart<XSLFRadarChartData, RadarChart, RadarData, RadarEntry> {
    public DrawRadarChart(XSLFChart xSLFChart, XSLFRadarChartData xSLFRadarChartData) {
        super(xSLFChart, xSLFRadarChartData);
    }

    private void setChartData(RadarChart radarChart) {
        radarChart.setData(getChartData());
    }

    private void setRadarChart(RadarChart radarChart) {
        setLegend(radarChart.getLegend());
        radarChart.getDescription().setEnabled(false);
        radarChart.setDrawMarkers(false);
        radarChart.setWebLineWidth(Utils.convertPixelsToDp(1.0f));
        radarChart.setWebColor(-3355444);
        radarChart.setWebColorInner(-3355444);
        radarChart.setWebLineWidthInner(Utils.convertPixelsToDp(1.0f));
        radarChart.setMinOffset(5.0f);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void init() {
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setLegendForm(Legend legend) {
        legend.setForm(Legend.LegendForm.LINE);
        legend.setFormLineWidth(1.4f);
        legend.setFormSize(12.0f);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public <N extends Number> RadarEntry createEntry(N n, N n2) {
        return new RadarEntry(n2.floatValue());
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public RadarChart getChart() {
        return new RadarChart(getContext());
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public RadarData getChartData() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.seriesCount; i++) {
            XSLFChartData.XSLFSeries xSLFSeries = ((XSLFRadarChartData) this.chartData).getXSLFSeries(i);
            RadarDataSet radarDataSet = new RadarDataSet(getValues(xSLFSeries), getLabel(xSLFSeries));
            radarDataSet.setAxisDependency(this.yAxisDependency);
            CTDLbls cTDLBls = xSLFSeries.getCTDLBls();
            setDataSetColor(radarDataSet, xSLFSeries, i);
            setDataSetDrawValues(radarDataSet, cTDLBls);
            setDataSetValueTextColor(radarDataSet, cTDLBls);
            setDataSetValueFormatter(radarDataSet, xSLFSeries, cTDLBls);
            arrayList.add(radarDataSet);
        }
        return new RadarData(arrayList);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public RectF getViewPortContentRect(RadarChart radarChart) {
        RectF viewPortContentRect = super.getViewPortContentRect((DrawRadarChart) radarChart);
        float min = (Math.min(viewPortContentRect.width(), viewPortContentRect.height()) * 0.5f) + 5.0f;
        float centerX = viewPortContentRect.centerX();
        float centerY = viewPortContentRect.centerY();
        return new RectF(centerX - min, centerY - min, centerX + min, centerY + min);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setChart(RadarChart radarChart) {
        setRadarChart(radarChart);
        setChartData(radarChart);
        setAxis(radarChart);
    }
}
