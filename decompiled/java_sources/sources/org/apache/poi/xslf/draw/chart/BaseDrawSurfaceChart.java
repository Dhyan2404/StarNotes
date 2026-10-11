package org.apache.poi.xslf.draw.chart;

import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.chart.BarGrouping;
import org.apache.poi.xslf.usermodel.chart.XSLFChartData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBarDir;
import org.openxmlformats.schemas.drawingml.x2006.chart.STBarDir;

/* loaded from: classes13.dex */
public abstract class BaseDrawSurfaceChart<T extends XSLFChartData> extends BaseDrawBarChart<T> {
    public BaseDrawSurfaceChart(XSLFChart xSLFChart, T t) {
        super(xSLFChart, t);
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawBarChart
    public BarGrouping getBarGrouping() {
        return null;
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawBarChart
    public CTBarDir getCTBarDir() {
        return null;
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawBarChart
    public Integer getGapWidth() {
        return null;
    }

    @Override // org.apache.poi.xslf.draw.chart.BaseDrawBarChart, org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public void init() {
        this.direction = STBarDir.COL;
        this.isStackedBar = false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.xslf.draw.chart.BaseDrawBarChart, org.apache.poi.xslf.draw.chart.AbstractDrawChart
    public BarData getChartData() {
        BarData barData = new BarData();
        List<BarDataSet> barDataSet = getBarDataSet();
        Iterator<BarDataSet> it2 = barDataSet.iterator();
        while (it2.hasNext()) {
            barData.addDataSet(it2.next());
        }
        int size = barDataSet.size();
        if (size > 1) {
            this.isGroupBar = true;
            float f = size <= 5 ? 0.3f : 0.2f;
            float f2 = size;
            barData.setBarWidth(((1.0f - f) - (f2 * 0.0f)) / f2);
            barData.groupBars(0.0f, f, 0.0f);
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
}
