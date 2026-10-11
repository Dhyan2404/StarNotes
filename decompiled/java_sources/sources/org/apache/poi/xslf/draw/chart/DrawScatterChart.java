package org.apache.poi.xslf.draw.chart;

import com.github.mikephil.charting.charts.ScatterChart;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.ScatterData;
import com.github.mikephil.charting.data.ScatterDataSet;
import com.onyx.common.util.JLog;
import java.awt.Color;
import java.util.ArrayList;
import java.util.List;
import org.apache.poi.xddf.usermodel.chart.XDDFDataSource;
import org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.XSLFChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFScatterChartData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTCatAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTChartLines;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDateAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTMarker;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTMarkerStyle;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTScatterSer;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTValAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.STMarkerStyle;

/* loaded from: classes13.dex */
public class DrawScatterChart extends AbstractDrawChart<XSLFScatterChartData, ScatterChart, ScatterData, Entry> {
    public DrawScatterChart(XSLFChart xSLFChart, XSLFScatterChartData xSLFScatterChartData) {
        super(xSLFChart, xSLFScatterChartData);
    }

    private float getXValue(String str) {
        try {
            return Float.parseFloat(str);
        } catch (Exception e) {
            JLog.m41643e(this.TAG, e);
            return 0.0f;
        }
    }

    private void setChartData(ScatterChart scatterChart) {
        scatterChart.setData(getChartData());
    }

    private void setScatterChart(ScatterChart scatterChart) {
        setLegend(scatterChart.getLegend());
        scatterChart.getDescription().setEnabled(false);
        scatterChart.setDrawMarkers(false);
        scatterChart.setDrawGridBackground(false);
        scatterChart.setMinOffset(5.0f);
        scatterChart.setExtraTopOffset(12.0f);
        scatterChart.setExtraRightOffset(12.0f);
        scatterChart.setExtraBottomOffset(5.0f);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public <N extends Number> Entry createEntry(N n, N n2) {
        return new Entry(n.floatValue(), n2.floatValue());
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public CTCatAx getCatAx() {
        return null;
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public List<String> getCategory(XSLFChartData.XSLFSeries xSLFSeries) {
        return new ArrayList();
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public Color getDataSetColor(XSLFChartData.XSLFSeries xSLFSeries) {
        CTMarker marker = ((CTScatterSer) xSLFSeries.getInternalSeries()).getMarker();
        if (marker == null) {
            return null;
        }
        return getColor(marker.getSpPr());
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public CTValAx getValAx() {
        CTPlotArea ploArea = getPloArea();
        if (ploArea.sizeOfValAxArray() <= 1) {
            return null;
        }
        return ploArea.getValAxArray(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public List<Entry> getValues(XSLFChartData.XSLFSeries xSLFSeries) {
        ArrayList arrayList = new ArrayList();
        XDDFDataSource<?> categoryData = xSLFSeries.getCategoryData();
        XDDFNumericalDataSource<? extends Number> valuesData = xSLFSeries.getValuesData();
        int pointCount = valuesData.getPointCount();
        for (int i = 0; i < pointCount; i++) {
            arrayList.add(createEntry(Float.valueOf(getXValue(categoryData.getPointAt(i).toString())), (Number) valuesData.getPointAt(i)));
        }
        return arrayList;
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public CTChartLines getXGridlines() {
        CTPlotArea ploArea = getPloArea();
        if (ploArea.sizeOfValAxArray() <= 0) {
            return null;
        }
        return ploArea.getValAxArray(0).getMajorGridlines();
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public CTChartLines getYGridlines() {
        return super.getYGridlines();
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void init() {
    }

    public void setDataSetScatterShape(ScatterDataSet scatterDataSet, XSLFChartData.XSLFSeries xSLFSeries) {
        STMarkerStyle.Enum val;
        CTMarker marker = ((CTScatterSer) xSLFSeries.getInternalSeries()).getMarker();
        if (marker == null) {
            return;
        }
        if (marker.getSize() != null) {
            scatterDataSet.setScatterShapeSize(r2.getVal());
        }
        CTMarkerStyle symbol = marker.getSymbol();
        if (symbol == null || (val = symbol.getVal()) == null) {
            return;
        }
        switch (val.intValue()) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                scatterDataSet.setScatterShape(ScatterChart.ScatterShape.CIRCLE);
                return;
            case 7:
                scatterDataSet.setScatterShape(ScatterChart.ScatterShape.CROSS);
                return;
            case 8:
                scatterDataSet.setScatterShape(ScatterChart.ScatterShape.SQUARE);
                return;
            case 9:
                scatterDataSet.setScatterShape(ScatterChart.ScatterShape.CHEVRON_UP);
                return;
            case 10:
                scatterDataSet.setScatterShape(ScatterChart.ScatterShape.TRIANGLE);
                return;
            case 11:
                scatterDataSet.setScatterShape(ScatterChart.ScatterShape.X);
                return;
            default:
                return;
        }
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public boolean showXAxis(CTCatAx cTCatAx, CTDateAx cTDateAx) {
        CTPlotArea ploArea = getPloArea();
        return showYAxis(ploArea.sizeOfValAxArray() <= 1 ? null : ploArea.getValAxArray(1));
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public ScatterChart getChart() {
        return new ScatterChart(getContext());
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public ScatterData getChartData() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.seriesCount; i++) {
            XSLFChartData.XSLFSeries xSLFSeries = ((XSLFScatterChartData) this.chartData).getXSLFSeries(i);
            ScatterDataSet scatterDataSet = new ScatterDataSet(getValues(xSLFSeries), getLabel(xSLFSeries));
            scatterDataSet.setAxisDependency(this.yAxisDependency);
            CTDLbls cTDLBls = xSLFSeries.getCTDLBls();
            setDataSetScatterShape(scatterDataSet, xSLFSeries);
            setDataSetColor(scatterDataSet, xSLFSeries, i);
            setDataSetDrawValues(scatterDataSet, cTDLBls);
            setDataSetValueTextColor(scatterDataSet, cTDLBls);
            setDataSetValueFormatter(scatterDataSet, xSLFSeries, cTDLBls);
            arrayList.add(scatterDataSet);
        }
        return new ScatterData(arrayList);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setChart(ScatterChart scatterChart) {
        setScatterChart(scatterChart);
        setChartData(scatterChart);
        setAxis(scatterChart);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setCustomXAXis(ScatterChart scatterChart, XAxis xAxis) {
        xAxis.setAxisMinimum(0.0f);
        xAxis.setGranularity(0.5f);
        xAxis.setAxisMaximum(((ScatterData) scatterChart.getData()).getXMax() + 0.5f);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setCustomYAxisLeft(ScatterChart scatterChart, YAxis yAxis) {
        yAxis.setAxisMinimum(0.0f);
        yAxis.setGranularity(0.5f);
        yAxis.setAxisMaximum(scatterChart.getYMax() + 0.5f);
    }
}
