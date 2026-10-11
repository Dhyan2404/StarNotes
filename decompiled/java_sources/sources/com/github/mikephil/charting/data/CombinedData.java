package com.github.mikephil.charting.data;

import android.util.Log;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IBarLineScatterCandleBubbleDataSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class CombinedData extends BarLineScatterCandleBubbleData<IBarLineScatterCandleBubbleDataSet<? extends Entry>> {

    /* renamed from: a */
    public LineData f21602a;

    /* renamed from: b */
    public BarData f21603b;

    /* renamed from: c */
    public ScatterData f21604c;

    /* renamed from: d */
    public CandleData f21605d;

    /* renamed from: e */
    public BubbleData f21606e;

    @Override // com.github.mikephil.charting.data.ChartData
    public void calcMinMax() {
        if (this.mDataSets == null) {
            this.mDataSets = new ArrayList();
        }
        this.mDataSets.clear();
        this.mYMax = -3.4028235E38f;
        this.mYMin = Float.MAX_VALUE;
        this.mXMax = -3.4028235E38f;
        this.mXMin = Float.MAX_VALUE;
        this.mLeftAxisMax = -3.4028235E38f;
        this.mLeftAxisMin = Float.MAX_VALUE;
        this.mRightAxisMax = -3.4028235E38f;
        this.mRightAxisMin = Float.MAX_VALUE;
        for (BarLineScatterCandleBubbleData barLineScatterCandleBubbleData : getAllData()) {
            barLineScatterCandleBubbleData.calcMinMax();
            this.mDataSets.addAll(barLineScatterCandleBubbleData.getDataSets());
            if (barLineScatterCandleBubbleData.getYMax() > this.mYMax) {
                this.mYMax = barLineScatterCandleBubbleData.getYMax();
            }
            if (barLineScatterCandleBubbleData.getYMin() < this.mYMin) {
                this.mYMin = barLineScatterCandleBubbleData.getYMin();
            }
            if (barLineScatterCandleBubbleData.getXMax() > this.mXMax) {
                this.mXMax = barLineScatterCandleBubbleData.getXMax();
            }
            if (barLineScatterCandleBubbleData.getXMin() < this.mXMin) {
                this.mXMin = barLineScatterCandleBubbleData.getXMin();
            }
            float f = barLineScatterCandleBubbleData.mLeftAxisMax;
            if (f > this.mLeftAxisMax) {
                this.mLeftAxisMax = f;
            }
            float f2 = barLineScatterCandleBubbleData.mLeftAxisMin;
            if (f2 < this.mLeftAxisMin) {
                this.mLeftAxisMin = f2;
            }
            float f3 = barLineScatterCandleBubbleData.mRightAxisMax;
            if (f3 > this.mRightAxisMax) {
                this.mRightAxisMax = f3;
            }
            float f4 = barLineScatterCandleBubbleData.mRightAxisMin;
            if (f4 < this.mRightAxisMin) {
                this.mRightAxisMin = f4;
            }
        }
    }

    public List<BarLineScatterCandleBubbleData> getAllData() {
        ArrayList arrayList = new ArrayList();
        LineData lineData = this.f21602a;
        if (lineData != null) {
            arrayList.add(lineData);
        }
        BarData barData = this.f21603b;
        if (barData != null) {
            arrayList.add(barData);
        }
        ScatterData scatterData = this.f21604c;
        if (scatterData != null) {
            arrayList.add(scatterData);
        }
        CandleData candleData = this.f21605d;
        if (candleData != null) {
            arrayList.add(candleData);
        }
        BubbleData bubbleData = this.f21606e;
        if (bubbleData != null) {
            arrayList.add(bubbleData);
        }
        return arrayList;
    }

    public BarData getBarData() {
        return this.f21603b;
    }

    public BubbleData getBubbleData() {
        return this.f21606e;
    }

    public CandleData getCandleData() {
        return this.f21605d;
    }

    public BarLineScatterCandleBubbleData getDataByIndex(int i) {
        return getAllData().get(i);
    }

    public int getDataIndex(ChartData chartData) {
        return getAllData().indexOf(chartData);
    }

    /* JADX WARN: Type inference failed for: r4v4, types: [com.github.mikephil.charting.interfaces.datasets.IDataSet] */
    @Override // com.github.mikephil.charting.data.ChartData
    public Entry getEntryForHighlight(Highlight highlight) {
        List<BarLineScatterCandleBubbleData> allData = getAllData();
        if (highlight.getDataIndex() >= allData.size()) {
            return null;
        }
        BarLineScatterCandleBubbleData barLineScatterCandleBubbleData = allData.get(highlight.getDataIndex());
        if (highlight.getDataSetIndex() >= barLineScatterCandleBubbleData.getDataSetCount()) {
            return null;
        }
        for (Entry entry : barLineScatterCandleBubbleData.getDataSetByIndex(highlight.getDataSetIndex()).getEntriesForXValue(highlight.getX())) {
            if (entry.getY() == highlight.getY() || Float.isNaN(highlight.getY())) {
                return entry;
            }
        }
        return null;
    }

    public LineData getLineData() {
        return this.f21602a;
    }

    public ScatterData getScatterData() {
        return this.f21604c;
    }

    @Override // com.github.mikephil.charting.data.ChartData
    public void notifyDataChanged() {
        LineData lineData = this.f21602a;
        if (lineData != null) {
            lineData.notifyDataChanged();
        }
        BarData barData = this.f21603b;
        if (barData != null) {
            barData.notifyDataChanged();
        }
        CandleData candleData = this.f21605d;
        if (candleData != null) {
            candleData.notifyDataChanged();
        }
        ScatterData scatterData = this.f21604c;
        if (scatterData != null) {
            scatterData.notifyDataChanged();
        }
        BubbleData bubbleData = this.f21606e;
        if (bubbleData != null) {
            bubbleData.notifyDataChanged();
        }
        calcMinMax();
    }

    @Override // com.github.mikephil.charting.data.ChartData
    @Deprecated
    public boolean removeEntry(Entry entry, int i) {
        Log.e(Chart.LOG_TAG, "removeEntry(...) not supported for CombinedData");
        return false;
    }

    public void setData(LineData lineData) {
        this.f21602a = lineData;
        notifyDataChanged();
    }

    @Override // com.github.mikephil.charting.data.ChartData
    public boolean removeDataSet(IBarLineScatterCandleBubbleDataSet<? extends Entry> iBarLineScatterCandleBubbleDataSet) {
        Iterator<BarLineScatterCandleBubbleData> it2 = getAllData().iterator();
        boolean z = false;
        while (it2.hasNext() && !(z = it2.next().removeDataSet((BarLineScatterCandleBubbleData) iBarLineScatterCandleBubbleDataSet))) {
        }
        return z;
    }

    @Override // com.github.mikephil.charting.data.ChartData
    @Deprecated
    public boolean removeEntry(float f, int i) {
        Log.e(Chart.LOG_TAG, "removeEntry(...) not supported for CombinedData");
        return false;
    }

    public void setData(BarData barData) {
        this.f21603b = barData;
        notifyDataChanged();
    }

    @Override // com.github.mikephil.charting.data.ChartData
    @Deprecated
    public boolean removeDataSet(int i) {
        Log.e(Chart.LOG_TAG, "removeDataSet(int index) not supported for CombinedData");
        return false;
    }

    public void setData(ScatterData scatterData) {
        this.f21604c = scatterData;
        notifyDataChanged();
    }

    public void setData(CandleData candleData) {
        this.f21605d = candleData;
        notifyDataChanged();
    }

    public void setData(BubbleData bubbleData) {
        this.f21606e = bubbleData;
        notifyDataChanged();
    }
}
