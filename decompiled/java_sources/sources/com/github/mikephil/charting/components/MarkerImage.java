package com.github.mikephil.charting.components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.utils.FSize;
import com.github.mikephil.charting.utils.MPPointF;
import java.lang.ref.WeakReference;

/* loaded from: classes4.dex */
public class MarkerImage implements IMarker {

    /* renamed from: e */
    public Context f21568e;

    /* renamed from: f */
    public Drawable f21569f;

    /* renamed from: i */
    public WeakReference<Chart> f21572i;

    /* renamed from: g */
    public MPPointF f21570g = new MPPointF();

    /* renamed from: h */
    public MPPointF f21571h = new MPPointF();

    /* renamed from: j */
    public FSize f21573j = new FSize();

    /* renamed from: k */
    public Rect f21574k = new Rect();

    public MarkerImage(Context context, int i) {
        this.f21568e = context;
        this.f21569f = context.getResources().getDrawable(i, null);
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public void draw(Canvas canvas, float f, float f2) {
        Drawable drawable;
        Drawable drawable2;
        if (this.f21569f == null) {
            return;
        }
        MPPointF offsetForDrawingAtPoint = getOffsetForDrawingAtPoint(f, f2);
        FSize fSize = this.f21573j;
        float f3 = fSize.width;
        float f4 = fSize.height;
        if (f3 == 0.0f && (drawable2 = this.f21569f) != null) {
            f3 = drawable2.getIntrinsicWidth();
        }
        if (f4 == 0.0f && (drawable = this.f21569f) != null) {
            f4 = drawable.getIntrinsicHeight();
        }
        this.f21569f.copyBounds(this.f21574k);
        Drawable drawable3 = this.f21569f;
        Rect rect = this.f21574k;
        int i = rect.left;
        int i2 = rect.top;
        drawable3.setBounds(i, i2, ((int) f3) + i, ((int) f4) + i2);
        int save = canvas.save();
        canvas.translate(f + offsetForDrawingAtPoint.f21741x, f2 + offsetForDrawingAtPoint.f21742y);
        this.f21569f.draw(canvas);
        canvas.restoreToCount(save);
        this.f21569f.setBounds(this.f21574k);
    }

    public Chart getChartView() {
        WeakReference<Chart> weakReference = this.f21572i;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public MPPointF getOffset() {
        return this.f21570g;
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public MPPointF getOffsetForDrawingAtPoint(float f, float f2) {
        Drawable drawable;
        Drawable drawable2;
        MPPointF offset = getOffset();
        MPPointF mPPointF = this.f21571h;
        mPPointF.f21741x = offset.f21741x;
        mPPointF.f21742y = offset.f21742y;
        Chart chartView = getChartView();
        FSize fSize = this.f21573j;
        float f3 = fSize.width;
        float f4 = fSize.height;
        if (f3 == 0.0f && (drawable2 = this.f21569f) != null) {
            f3 = drawable2.getIntrinsicWidth();
        }
        if (f4 == 0.0f && (drawable = this.f21569f) != null) {
            f4 = drawable.getIntrinsicHeight();
        }
        MPPointF mPPointF2 = this.f21571h;
        float f5 = mPPointF2.f21741x;
        if (f + f5 < 0.0f) {
            mPPointF2.f21741x = -f;
        } else if (chartView != null && f + f3 + f5 > chartView.getWidth()) {
            this.f21571h.f21741x = (chartView.getWidth() - f) - f3;
        }
        MPPointF mPPointF3 = this.f21571h;
        float f6 = mPPointF3.f21742y;
        if (f2 + f6 < 0.0f) {
            mPPointF3.f21742y = -f2;
        } else if (chartView != null && f2 + f4 + f6 > chartView.getHeight()) {
            this.f21571h.f21742y = (chartView.getHeight() - f2) - f4;
        }
        return this.f21571h;
    }

    public FSize getSize() {
        return this.f21573j;
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public void refreshContent(Entry entry, Highlight highlight) {
    }

    public void setChartView(Chart chart) {
        this.f21572i = new WeakReference<>(chart);
    }

    public void setOffset(MPPointF mPPointF) {
        this.f21570g = mPPointF;
        if (mPPointF == null) {
            this.f21570g = new MPPointF();
        }
    }

    public void setSize(FSize fSize) {
        this.f21573j = fSize;
        if (fSize == null) {
            this.f21573j = new FSize();
        }
    }

    public void setOffset(float f, float f2) {
        MPPointF mPPointF = this.f21570g;
        mPPointF.f21741x = f;
        mPPointF.f21742y = f2;
    }
}
