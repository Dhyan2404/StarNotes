package org.apache.poi.xslf.draw.chart;

import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.data.BaseDataSet;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.onyx.common.util.CollectionUtils;
import java.awt.Color;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.XSLFChartData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDPt;

/* loaded from: classes13.dex */
public abstract class BaseDrawPieChart<T extends XSLFChartData> extends AbstractDrawChart<T, PieChart, PieData, PieEntry> {
    public BaseDrawPieChart(XSLFChart xSLFChart, T t) {
        super(xSLFChart, t);
    }

    private List<Integer> getDataSetColors(XSLFChartData.XSLFSeries xSLFSeries) {
        ArrayList arrayList = new ArrayList();
        List<CTDPt> dPtList = xSLFSeries.getDPtList();
        if (CollectionUtils.isNonBlank(dPtList)) {
            Iterator<CTDPt> it2 = dPtList.iterator();
            while (it2.hasNext()) {
                Color color = getColor(it2.next().getSpPr());
                if (color != null) {
                    arrayList.add(Integer.valueOf(color.getRGB()));
                }
            }
        }
        return arrayList;
    }

    private void setChartData(PieChart pieChart) {
        pieChart.setData(getChartData());
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void init() {
    }

    public void setDataSetColor(BaseDataSet<PieEntry> baseDataSet, XSLFChartData.XSLFSeries xSLFSeries) {
        List<Integer> dataSetColors = getDataSetColors(xSLFSeries);
        if (dataSetColors.isEmpty()) {
            return;
        }
        baseDataSet.setColors(dataSetColors);
    }

    public void setPieChart(PieChart pieChart) {
        setLegend(pieChart.getLegend());
        pieChart.setHoleRadius(0.0f);
        pieChart.setTransparentCircleRadius(0.0f);
        pieChart.setDrawEntryLabels(false);
        pieChart.setDrawCenterText(false);
        pieChart.setDrawSlicesUnderHole(false);
        pieChart.setDrawHoleEnabled(false);
        pieChart.setDrawMarkers(false);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public <N extends Number> PieEntry createEntry(N n, N n2) {
        return new PieEntry(n2.floatValue(), "");
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public PieChart getChart() {
        return new PieChart(getContext());
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public PieData getChartData() {
        XSLFChartData.XSLFSeries xSLFSeries = this.chartData.getXSLFSeries(0);
        CTDLbls cTDLBls = xSLFSeries.getCTDLBls();
        PieDataSet pieDataSet = new PieDataSet(getValues(xSLFSeries), getLabel(xSLFSeries));
        pieDataSet.setAxisDependency(this.yAxisDependency);
        pieDataSet.setSliceSpace(0.0f);
        pieDataSet.setSelectionShift(2.0f);
        setDataSetDrawValues(pieDataSet, cTDLBls);
        setDataSetValueTextColor(pieDataSet, cTDLBls);
        setDataSetValueFormatter(pieDataSet, xSLFSeries, cTDLBls);
        setDataSetColor(pieDataSet, xSLFSeries);
        return new PieData(pieDataSet);
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setChart(PieChart pieChart) {
        setPieChart(pieChart);
        setChartData(pieChart);
    }
}
