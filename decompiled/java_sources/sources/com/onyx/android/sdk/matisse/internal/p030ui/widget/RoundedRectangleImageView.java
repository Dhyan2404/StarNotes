package com.onyx.android.sdk.matisse.internal.p030ui.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes7.dex */
public class RoundedRectangleImageView extends AppCompatImageView {

    /* renamed from: h */
    public float f42827h;

    /* renamed from: i */
    public Path f42828i;

    /* renamed from: j */
    public RectF f42829j;

    public RoundedRectangleImageView(Context context) {
        super(context);
        m33468a(context);
    }

    /* renamed from: a */
    public final void m33468a(Context context) {
        this.f42827h = context.getResources().getDisplayMetrics().density * 2.0f;
        this.f42828i = new Path();
        this.f42829j = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        canvas.clipPath(this.f42828i);
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f42829j.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
        Path path = this.f42828i;
        RectF rectF = this.f42829j;
        float f = this.f42827h;
        path.addRoundRect(rectF, f, f, Path.Direction.CW);
    }

    public RoundedRectangleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m33468a(context);
    }

    public RoundedRectangleImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m33468a(context);
    }
}
