package com.github.mikephil.charting.data;

import android.graphics.Color;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class BarDataSet extends BarLineScatterCandleBubbleDataSet<BarEntry> implements IBarDataSet {

    /* renamed from: f */
    public int f21584f;

    /* renamed from: g */
    public int f21585g;

    /* renamed from: h */
    public float f21586h;

    /* renamed from: i */
    public int f21587i;

    /* renamed from: j */
    public int f21588j;

    /* renamed from: k */
    public int f21589k;

    /* renamed from: l */
    public String[] f21590l;

    public BarDataSet(List<BarEntry> list, String str) {
        super(list, str);
        this.f21584f = 1;
        this.f21585g = Color.rgb(215, 215, 215);
        this.f21586h = 0.0f;
        this.f21587i = -16777216;
        this.f21588j = 120;
        this.f21589k = 0;
        this.f21590l = new String[]{"Stack"};
        this.mHighLightColor = Color.rgb(0, 0, 0);
        m17358b(list);
        m17357a(list);
    }

    /* renamed from: a */
    public final void m17357a(List<BarEntry> list) {
        this.f21589k = 0;
        for (int i = 0; i < list.size(); i++) {
            float[] yVals = list.get(i).getYVals();
            if (yVals == null) {
                this.f21589k++;
            } else {
                this.f21589k += yVals.length;
            }
        }
    }

    /* renamed from: b */
    public final void m17358b(List<BarEntry> list) {
        for (int i = 0; i < list.size(); i++) {
            float[] yVals = list.get(i).getYVals();
            if (yVals != null && yVals.length > this.f21584f) {
                this.f21584f = yVals.length;
            }
        }
    }

    @Override // com.github.mikephil.charting.data.DataSet
    public DataSet<BarEntry> copy() {
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        for (int i = 0; i < this.mValues.size(); i++) {
            arrayList.add(((BarEntry) this.mValues.get(i)).copy());
        }
        BarDataSet barDataSet = new BarDataSet(arrayList, getLabel());
        barDataSet.mColors = this.mColors;
        barDataSet.f21584f = this.f21584f;
        barDataSet.f21585g = this.f21585g;
        barDataSet.f21590l = this.f21590l;
        barDataSet.mHighLightColor = this.mHighLightColor;
        barDataSet.f21588j = this.f21588j;
        return barDataSet;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IBarDataSet
    public int getBarBorderColor() {
        return this.f21587i;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IBarDataSet
    public float getBarBorderWidth() {
        return this.f21586h;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IBarDataSet
    public int getBarShadowColor() {
        return this.f21585g;
    }

    public int getEntryCountStacks() {
        return this.f21589k;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IBarDataSet
    public int getHighLightAlpha() {
        return this.f21588j;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IBarDataSet
    public String[] getStackLabels() {
        return this.f21590l;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IBarDataSet
    public int getStackSize() {
        return this.f21584f;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IBarDataSet
    public boolean isStacked() {
        return this.f21584f > 1;
    }

    public void setBarBorderColor(int i) {
        this.f21587i = i;
    }

    public void setBarBorderWidth(float f) {
        this.f21586h = f;
    }

    public void setBarShadowColor(int i) {
        this.f21585g = i;
    }

    public void setHighLightAlpha(int i) {
        this.f21588j = i;
    }

    public void setStackLabels(String[] strArr) {
        this.f21590l = strArr;
    }

    @Override // com.github.mikephil.charting.data.DataSet
    public void calcMinMax(BarEntry barEntry) {
        if (barEntry == null || Float.isNaN(barEntry.getY())) {
            return;
        }
        if (barEntry.getYVals() == null) {
            if (barEntry.getY() < this.mYMin) {
                this.mYMin = barEntry.getY();
            }
            if (barEntry.getY() > this.mYMax) {
                this.mYMax = barEntry.getY();
            }
        } else {
            if ((-barEntry.getNegativeSum()) < this.mYMin) {
                this.mYMin = -barEntry.getNegativeSum();
            }
            if (barEntry.getPositiveSum() > this.mYMax) {
                this.mYMax = barEntry.getPositiveSum();
            }
        }
        calcMinMaxX(barEntry);
    }
}
