package com.github.mikephil.charting.components;

import android.content.Context;
import android.graphics.Canvas;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.utils.MPPointF;
import java.lang.ref.WeakReference;

/* loaded from: classes4.dex */
public class MarkerView extends RelativeLayout implements IMarker {

    /* renamed from: e */
    public MPPointF f21575e;

    /* renamed from: f */
    public MPPointF f21576f;

    /* renamed from: g */
    public WeakReference<Chart> f21577g;

    public MarkerView(Context context, int i) {
        super(context);
        this.f21575e = new MPPointF();
        this.f21576f = new MPPointF();
        setupLayoutResource(i);
    }

    private void setupLayoutResource(int i) {
        View inflate = LayoutInflater.from(getContext()).inflate(i, this);
        inflate.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        inflate.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        inflate.layout(0, 0, inflate.getMeasuredWidth(), inflate.getMeasuredHeight());
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public void draw(Canvas canvas, float f, float f2) {
        MPPointF offsetForDrawingAtPoint = getOffsetForDrawingAtPoint(f, f2);
        int save = canvas.save();
        canvas.translate(f + offsetForDrawingAtPoint.f21741x, f2 + offsetForDrawingAtPoint.f21742y);
        draw(canvas);
        canvas.restoreToCount(save);
    }

    public Chart getChartView() {
        WeakReference<Chart> weakReference = this.f21577g;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public MPPointF getOffset() {
        return this.f21575e;
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public MPPointF getOffsetForDrawingAtPoint(float f, float f2) {
        MPPointF offset = getOffset();
        MPPointF mPPointF = this.f21576f;
        mPPointF.f21741x = offset.f21741x;
        mPPointF.f21742y = offset.f21742y;
        Chart chartView = getChartView();
        float width = getWidth();
        float height = getHeight();
        MPPointF mPPointF2 = this.f21576f;
        float f3 = mPPointF2.f21741x;
        if (f + f3 < 0.0f) {
            mPPointF2.f21741x = -f;
        } else if (chartView != null && f + width + f3 > chartView.getWidth()) {
            this.f21576f.f21741x = (chartView.getWidth() - f) - width;
        }
        MPPointF mPPointF3 = this.f21576f;
        float f4 = mPPointF3.f21742y;
        if (f2 + f4 < 0.0f) {
            mPPointF3.f21742y = -f2;
        } else if (chartView != null && f2 + height + f4 > chartView.getHeight()) {
            this.f21576f.f21742y = (chartView.getHeight() - f2) - height;
        }
        return this.f21576f;
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public void refreshContent(Entry entry, Highlight highlight) {
        measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        layout(0, 0, getMeasuredWidth(), getMeasuredHeight());
    }

    public void setChartView(Chart chart) {
        this.f21577g = new WeakReference<>(chart);
    }

    public void setOffset(MPPointF mPPointF) {
        this.f21575e = mPPointF;
        if (mPPointF == null) {
            this.f21575e = new MPPointF();
        }
    }

    public void setOffset(float f, float f2) {
        MPPointF mPPointF = this.f21575e;
        mPPointF.f21741x = f;
        mPPointF.f21742y = f2;
    }
}
