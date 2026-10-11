package com.github.mikephil.charting.data;

import android.annotation.TargetApi;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.interfaces.datasets.ILineRadarDataSet;
import com.github.mikephil.charting.utils.Utils;
import java.util.List;

/* loaded from: classes4.dex */
public abstract class LineRadarDataSet<T extends Entry> extends LineScatterCandleRadarDataSet<T> implements ILineRadarDataSet<T> {

    /* renamed from: f */
    public int f21619f;

    /* renamed from: g */
    public int f21620g;

    /* renamed from: h */
    public float f21621h;

    /* renamed from: i */
    public boolean f21622i;
    protected Drawable mFillDrawable;

    public LineRadarDataSet(List<T> list, String str) {
        super(list, str);
        this.f21619f = Color.rgb(140, 234, 255);
        this.f21620g = 85;
        this.f21621h = 2.5f;
        this.f21622i = false;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineRadarDataSet
    public int getFillAlpha() {
        return this.f21620g;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineRadarDataSet
    public int getFillColor() {
        return this.f21619f;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineRadarDataSet
    public Drawable getFillDrawable() {
        return this.mFillDrawable;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineRadarDataSet
    public float getLineWidth() {
        return this.f21621h;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineRadarDataSet
    public boolean isDrawFilledEnabled() {
        return this.f21622i;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.ILineRadarDataSet
    public void setDrawFilled(boolean z) {
        this.f21622i = z;
    }

    public void setFillAlpha(int i) {
        this.f21620g = i;
    }

    public void setFillColor(int i) {
        this.f21619f = i;
        this.mFillDrawable = null;
    }

    @TargetApi(18)
    public void setFillDrawable(Drawable drawable) {
        this.mFillDrawable = drawable;
    }

    public void setLineWidth(float f) {
        if (f < 0.2f) {
            f = 0.2f;
        }
        if (f > 10.0f) {
            f = 10.0f;
        }
        this.f21621h = Utils.convertDpToPixel(f);
    }
}
