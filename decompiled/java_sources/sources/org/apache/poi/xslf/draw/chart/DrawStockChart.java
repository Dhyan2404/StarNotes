package org.apache.poi.xslf.draw.chart;

import android.graphics.Paint;
import com.github.mikephil.charting.charts.CandleStickChart;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.CandleData;
import com.github.mikephil.charting.data.CandleDataSet;
import com.github.mikephil.charting.data.CandleEntry;
import com.github.mikephil.charting.utils.Utils;
import com.onyx.common.util.JLog;
import java.lang.reflect.Array;
import java.util.ArrayList;
import org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.XSLFStockChartData;

/* loaded from: classes13.dex */
public class DrawStockChart extends AbstractDrawChart<XSLFStockChartData, CandleStickChart, CandleData, CandleEntry> {
    private static final float BAR_SPACE = 0.475f;

    public DrawStockChart(XSLFChart xSLFChart, XSLFStockChartData xSLFStockChartData) {
        super(xSLFChart, xSLFStockChartData);
    }

    private void setCandleStickChart(CandleStickChart candleStickChart) {
        setLegend(candleStickChart.getLegend());
        candleStickChart.getDescription().setEnabled(false);
        candleStickChart.setDrawMarkers(false);
        candleStickChart.setDrawGridBackground(false);
        candleStickChart.setMinOffset(5.0f);
        candleStickChart.setExtraTopOffset(12.0f);
        candleStickChart.setExtraRightOffset(12.0f);
        candleStickChart.setExtraBottomOffset(5.0f);
    }

    private void setChartData(CandleStickChart candleStickChart) {
        candleStickChart.setData(getChartData());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public <N extends Number> CandleEntry createEntry(N n, N n2) {
        return null;
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void init() {
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setLegend(Legend legend) {
        legend.setEnabled(false);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public CandleStickChart getChart() {
        return new CandleStickChart(getContext());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public CandleData getChartData() {
        if (this.seriesCount != 3) {
            JLog.m41642e(this.TAG, "Stock chart series count is not '3'", new Object[0]);
            return null;
        }
        int pointCount = ((XSLFStockChartData) this.chartData).getSeries(0).getCategoryData().getPointCount();
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, pointCount, 3);
        for (int i = 0; i < 3; i++) {
            XDDFNumericalDataSource<? extends Number> valuesData = ((XSLFStockChartData) this.chartData).getXSLFSeries(i).getValuesData();
            for (int i2 = 0; i2 < pointCount; i2++) {
                fArr[i2][i] = ((Number) valuesData.getPointAt(i2)).floatValue();
            }
        }
        ArrayList arrayList = new ArrayList(pointCount);
        for (int i3 = 0; i3 < pointCount; i3++) {
            float[] fArr2 = fArr[i3];
            float f = fArr2[0];
            float f2 = fArr2[1];
            float f3 = fArr2[2];
            arrayList.add(new CandleEntry(i3, f, f2, f3, f3));
        }
        CandleDataSet candleDataSet = new CandleDataSet(arrayList, "");
        candleDataSet.setAxisDependency(this.yAxisDependency);
        candleDataSet.setShadowColor(-12303292);
        candleDataSet.setDecreasingColor(-65536);
        candleDataSet.setDecreasingPaintStyle(Paint.Style.FILL);
        candleDataSet.setIncreasingPaintStyle(Paint.Style.STROKE);
        candleDataSet.setNeutralColor(-16776961);
        candleDataSet.setShadowWidth(Utils.convertPixelsToDp(1.0f));
        candleDataSet.setDrawValues(false);
        ChartUtils.setBarSpace(candleDataSet, BAR_SPACE);
        return new CandleData(candleDataSet);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setChart(CandleStickChart candleStickChart) {
        setCandleStickChart(candleStickChart);
        setChartData(candleStickChart);
        setAxis(candleStickChart);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setCustomXAXis(CandleStickChart candleStickChart, XAxis xAxis) {
        super.setCustomXAXis((DrawStockChart) candleStickChart, xAxis);
        xAxis.setAxisMinimum(-0.4f);
        xAxis.setAxisMaximum(((CandleData) candleStickChart.getData()).getXMax() + 0.4f);
    }
}
