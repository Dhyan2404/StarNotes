package org.apache.poi.xslf.draw.chart;

import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.charts.HorizontalBarChart;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.utils.Utils;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.xslf.draw.formatter.StackedBarValueFormatter;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.BarGrouping;
import org.apache.poi.xslf.usermodel.chart.XSLFChartData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBarDir;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.STBarDir;
import org.openxmlformats.schemas.drawingml.x2006.chart.STDLblPos;

/* loaded from: classes13.dex */
public abstract class BaseDrawBarChart<T extends XSLFChartData> extends AbstractDrawChart<T, BarChart, BarData, BarEntry> {
    protected static final float BAR_WIDTH = 0.75f;
    protected STBarDir.Enum direction;
    protected boolean drawValueAboveBar;
    protected boolean isGroupBar;
    protected boolean isStackedBar;

    public BaseDrawBarChart(XSLFChart xSLFChart, T t) {
        super(xSLFChart, t);
    }

    private boolean isHorizontal() {
        return this.direction == STBarDir.BAR;
    }

    private void resetStackedBar(List<BarDataSet> list, BarDataSet barDataSet) {
        int size = list.size();
        if (!isStackedBar() || size <= 1) {
            return;
        }
        if (barDataSet == null) {
            barDataSet = list.get(0);
        }
        List<T> values = barDataSet.getValues();
        String[] strArr = new String[size];
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, values.size(), size);
        int[] iArr = new int[size];
        boolean[] zArr = new boolean[size];
        for (int i = 0; i < size; i++) {
            BarDataSet barDataSet2 = list.get(i);
            List<T> values2 = barDataSet2.getValues();
            strArr[i] = barDataSet2.getLabel();
            iArr[i] = barDataSet2.getColor();
            zArr[i] = barDataSet2.isDrawValuesEnabled();
            for (int i2 = 0; i2 < values2.size(); i2++) {
                fArr[i2][i] = ((BarEntry) values2.get(i2)).getY();
            }
        }
        for (int i3 = 0; i3 < values.size(); i3++) {
            ((BarEntry) values.get(i3)).setVals(fArr[i3]);
        }
        BarDataSet barDataSet3 = new BarDataSet(values, "");
        barDataSet3.setAxisDependency(this.yAxisDependency);
        barDataSet3.setDrawValues(barDataSet.isDrawValuesEnabled());
        barDataSet3.setValueTextColor(barDataSet.getValueTextColor());
        barDataSet3.setValueTextSize(Utils.convertPixelsToDp(barDataSet.getValueTextSize()));
        barDataSet3.setValueFormatter(new StackedBarValueFormatter(barDataSet.getValueFormatter(), zArr));
        barDataSet3.setStackLabels(strArr);
        barDataSet3.setColors(iArr);
        list.clear();
        list.add(barDataSet3);
    }

    private void setBarChart(BarChart barChart) {
        setLegend(barChart.getLegend());
        barChart.setDrawMarkers(false);
        barChart.setDrawGridBackground(false);
        barChart.getDescription().setEnabled(false);
        barChart.setMinOffset(0.0f);
    }

    private void setChartData(BarChart barChart) {
        BarData chartData = getChartData();
        barChart.setDrawValueAboveBar(this.drawValueAboveBar);
        barChart.setFitBars(!this.isGroupBar);
        barChart.setData(chartData);
    }

    private void setChartOffset(BarChart barChart) {
        float f = this.drawValueAboveBar ? 16.0f : 10.0f;
        if (!isHorizontal()) {
            barChart.setExtraTopOffset(f);
            barChart.setExtraBottomOffset(5.0f);
            return;
        }
        barChart.setExtraTopOffset(5.0f);
        barChart.setExtraBottomOffset(5.0f);
        float convertPixelsToDp = Utils.convertPixelsToDp(Utils.calcTextSize(barChart.getRendererXAxis().getPaintAxisLabels(), barChart.getXAxis().getLongestLabel()).width);
        if (barChart.getXAxis().getPosition() == XAxis.XAxisPosition.BOTTOM) {
            barChart.setExtraLeftOffset(convertPixelsToDp);
            barChart.setExtraRightOffset(f);
        } else {
            barChart.setExtraLeftOffset(f);
            barChart.setExtraRightOffset(convertPixelsToDp);
        }
    }

    public boolean drawValueAboveBar(CTDLbls cTDLbls) {
        return getDlblsPos(cTDLbls) == STDLblPos.OUT_END;
    }

    public List<BarDataSet> getBarDataSet() {
        ArrayList arrayList = new ArrayList();
        this.drawValueAboveBar = false;
        BarDataSet barDataSet = null;
        for (int i = 0; i < this.seriesCount; i++) {
            XSLFChartData.XSLFSeries xSLFSeries = this.chartData.getXSLFSeries(i);
            CTDLbls cTDLBls = xSLFSeries.getCTDLBls();
            this.drawValueAboveBar |= drawValueAboveBar(cTDLBls);
            BarDataSet barDataSet2 = new BarDataSet(getValues(xSLFSeries), getLabel(xSLFSeries));
            barDataSet2.setAxisDependency(this.yAxisDependency);
            setDataSetColor(barDataSet2, xSLFSeries, i);
            setDataSetDrawValues(barDataSet2, cTDLBls);
            setDataSetValueTextColor(barDataSet2, cTDLBls);
            setDataSetValueTextSize(barDataSet2, cTDLBls);
            setDataSetValueFormatter(barDataSet2, xSLFSeries, cTDLBls);
            arrayList.add(barDataSet2);
            if (barDataSet == null && !isDelete(cTDLBls)) {
                barDataSet = barDataSet2;
            }
        }
        resetStackedBar(arrayList, barDataSet);
        return arrayList;
    }

    public abstract BarGrouping getBarGrouping();

    public abstract CTBarDir getCTBarDir();

    public abstract Integer getGapWidth();

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void init() {
        BarGrouping barGrouping = getBarGrouping();
        this.isStackedBar = barGrouping == BarGrouping.PERCENT_STACKED || barGrouping == BarGrouping.STACKED;
        CTBarDir cTBarDir = getCTBarDir();
        if (cTBarDir == null || !cTBarDir.isSetVal()) {
            this.direction = STBarDir.COL;
        } else {
            this.direction = cTBarDir.getVal();
        }
    }

    public boolean isDelete(CTDLbls cTDLbls) {
        return cTDLbls != null && cTDLbls.isSetDelete() && cTDLbls.getDelete().getVal();
    }

    public boolean isPercentChart() {
        return getBarGrouping() == BarGrouping.PERCENT_STACKED;
    }

    public boolean isStackedBar() {
        return this.isStackedBar;
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public boolean isXAxisInverted() {
        return isHorizontal() != super.isXAxisInverted();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public <N extends Number> BarEntry createEntry(N n, N n2) {
        return new BarEntry(n.floatValue(), n2.floatValue());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public BarChart getChart() {
        if (isHorizontal()) {
            return new HorizontalBarChart(getContext());
        }
        return new BarChart(getContext());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public BarData getChartData() {
        float f;
        float f2;
        BarData barData = new BarData();
        List<BarDataSet> barDataSet = getBarDataSet();
        Iterator<BarDataSet> it2 = barDataSet.iterator();
        while (it2.hasNext()) {
            barData.addDataSet(it2.next());
        }
        int size = barDataSet.size();
        if (size > 1) {
            this.isGroupBar = true;
            if (size <= 5) {
                f2 = 0.3f;
                f = 0.05f;
            } else {
                f = 0.2f / size;
                f2 = 0.2f;
            }
            float f3 = size;
            barData.setBarWidth(((1.0f - f2) - (f * f3)) / f3);
            barData.groupBars(0.0f, f2, f);
        } else {
            Integer gapWidth = getGapWidth();
            if (gapWidth != null && gapWidth.intValue() > 0) {
                barData.setBarWidth(1.0f / ((gapWidth.intValue() * 0.01f) + 1.0f));
            } else {
                barData.setBarWidth(0.75f);
            }
        }
        return barData;
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setChart(BarChart barChart) {
        setBarChart(barChart);
        setChartData(barChart);
        setAxis(barChart);
        setChartOffset(barChart);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setCustomXAXis(BarChart barChart, XAxis xAxis) {
        xAxis.setGranularityEnabled(true);
        if (this.isGroupBar) {
            xAxis.setCenterAxisLabels(true);
            xAxis.setAxisMinimum(0.0f);
            xAxis.setAxisMaximum(((BarData) barChart.getData()).getXMax() + 1.0f);
        }
    }

    @Override // org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void setCustomYAxisLeft(BarChart barChart, YAxis yAxis) {
        super.setCustomYAxisLeft((BaseDrawBarChart<T>) barChart, yAxis);
        if (isPercentChart()) {
            yAxis.setAxisMaximum(barChart.getYMax());
            yAxis.setGranularityEnabled(false);
        }
    }
}
