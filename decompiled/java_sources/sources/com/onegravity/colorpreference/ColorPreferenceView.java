package com.onegravity.colorpreference;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import com.onegravity.colorpicker.Util;
import com.onegravity.utils.AlphaPatternDrawable;

/* loaded from: classes7.dex */
public class ColorPreferenceView extends AppCompatImageView {

    /* renamed from: n */
    public static final String f40053n = "#IMAGE_VIEW_TAG#";

    /* renamed from: h */
    public int f40054h;

    /* renamed from: i */
    public int f40055i;

    /* renamed from: j */
    public Paint f40056j;

    /* renamed from: k */
    public Paint f40057k;

    /* renamed from: l */
    public final Rect f40058l;

    /* renamed from: m */
    public AlphaPatternDrawable f40059m;

    public ColorPreferenceView(Context context) {
        super(context);
        this.f40058l = new Rect();
        m31498a(context);
    }

    /* renamed from: b */
    public static int m31496b(int i, int i2) {
        return ((-16777216) & i) + m31497c(i, 16711680, i2) + m31497c(i, 65280, i2) + m31497c(i, 255, i2);
    }

    /* renamed from: c */
    public static int m31497c(int i, int i2, int i3) {
        return ((i & i2) >>> i3) & i2;
    }

    /* renamed from: a */
    public final void m31498a(Context context) {
        setTag(f40053n);
        setBackgroundColor(0);
        int displayDensity = (int) (Util.getDisplayDensity(context) * 31.0f);
        this.f40054h = displayDensity;
        this.f40055i = displayDensity;
        m31500e(context, displayDensity);
        setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    }

    /* renamed from: d */
    public final void m31499d(int i, int i2) {
        int min = Math.min(Math.min(this.f40054h, i), i2);
        if (min != this.f40055i) {
            this.f40055i = min;
            m31500e(getContext(), this.f40055i);
        }
    }

    /* renamed from: e */
    public final void m31500e(Context context, int i) {
        AlphaPatternDrawable alphaPatternDrawable = new AlphaPatternDrawable(context);
        this.f40059m = alphaPatternDrawable;
        int i2 = i - 2;
        alphaPatternDrawable.generatePatternBitmap(i2, i2);
        this.f40058l.set(new Rect(0, 0, i, i));
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        AlphaPatternDrawable alphaPatternDrawable = this.f40059m;
        if (alphaPatternDrawable != null) {
            alphaPatternDrawable.setBounds(this.f40058l);
            this.f40059m.draw(canvas);
        }
        float f = 0;
        int i = this.f40055i;
        canvas.drawRect(f, f, i, i, this.f40056j);
        canvas.drawLine(f, f, this.f40055i + 0, f, this.f40057k);
        canvas.drawLine(f, f, f, this.f40055i + 0, this.f40057k);
        int i2 = this.f40055i;
        canvas.drawLine(0 + i2, f, 0 + i2, i2 + 0, this.f40057k);
        int i3 = this.f40055i;
        canvas.drawLine(f, 0 + i3, 0 + i3, 0 + i3, this.f40057k);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m31499d(getWidth(), getHeight());
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        m31499d(getWidth(), getHeight());
    }

    public void setColor(int i, int i2) {
        Paint paint = new Paint();
        this.f40056j = paint;
        paint.setColor(i);
        Paint paint2 = new Paint();
        this.f40057k = paint2;
        paint2.setColor(i2);
        this.f40057k.setStrokeWidth(2.0f);
        invalidate();
    }

    public void setPreviewColor(int i, boolean z) {
        setTag(f40053n);
        int i2 = -1;
        if (!z) {
            i = m31496b(i, 1);
            i2 = m31496b(-1, 1);
        }
        setColor(i, i2);
    }

    public ColorPreferenceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40058l = new Rect();
        m31498a(context);
    }

    public ColorPreferenceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f40058l = new Rect();
        m31498a(context);
    }
}
