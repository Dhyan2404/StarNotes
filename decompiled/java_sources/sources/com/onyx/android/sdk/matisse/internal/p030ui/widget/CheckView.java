package com.onyx.android.sdk.matisse.internal.p030ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.res.ResourcesCompat;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.imagepicker.C7453R;

/* loaded from: classes7.dex */
public class CheckView extends View {
    public static final int UNCHECKED = Integer.MIN_VALUE;

    /* renamed from: p */
    public static final float f42795p = 3.0f;

    /* renamed from: q */
    public static final float f42796q = 6.0f;

    /* renamed from: r */
    public static final int f42797r = 48;

    /* renamed from: s */
    public static final float f42798s = 11.5f;

    /* renamed from: t */
    public static final float f42799t = 11.0f;

    /* renamed from: u */
    public static final int f42800u = 16;

    /* renamed from: e */
    public boolean f42801e;

    /* renamed from: f */
    public boolean f42802f;

    /* renamed from: g */
    public int f42803g;

    /* renamed from: h */
    public Paint f42804h;

    /* renamed from: i */
    public Paint f42805i;

    /* renamed from: j */
    public TextPaint f42806j;

    /* renamed from: k */
    public Paint f42807k;

    /* renamed from: l */
    public Drawable f42808l;

    /* renamed from: m */
    public float f42809m;

    /* renamed from: n */
    public Rect f42810n;

    /* renamed from: o */
    public boolean f42811o;

    public CheckView(Context context) {
        super(context);
        this.f42811o = true;
        m33458e(context);
    }

    private Rect getCheckRect() {
        if (this.f42810n == null) {
            float f = this.f42809m;
            int i = (int) (((f * 48.0f) / 2.0f) - ((f * 16.0f) / 2.0f));
            float f2 = this.f42809m;
            float f3 = i;
            this.f42810n = new Rect(i, i, (int) ((f2 * 48.0f) - f3), (int) ((f2 * 48.0f) - f3));
        }
        return this.f42810n;
    }

    /* renamed from: a */
    public final void m33454a(boolean z, Canvas canvas) {
        m33459f(z);
        float f = this.f42809m;
        canvas.drawCircle((f * 48.0f) / 2.0f, (48.0f * f) / 2.0f, f * 11.0f, this.f42805i);
    }

    /* renamed from: b */
    public final void m33455b(boolean z, Canvas canvas) {
        if (z) {
            if (!this.f42801e) {
                this.f42808l.setBounds(getCheckRect());
                this.f42808l.draw(canvas);
            } else {
                m33461h();
                canvas.drawText(String.valueOf(this.f42803g), ((int) (canvas.getWidth() - this.f42806j.measureText(r4))) / 2, ((int) ((canvas.getHeight() - this.f42806j.descent()) - this.f42806j.ascent())) / 2, this.f42806j);
            }
        }
    }

    /* renamed from: c */
    public final void m33456c(Canvas canvas) {
        m33460g();
        float f = this.f42809m;
        canvas.drawCircle((f * 48.0f) / 2.0f, (48.0f * f) / 2.0f, f * 19.0f, this.f42807k);
    }

    /* renamed from: d */
    public final void m33457d(Canvas canvas) {
        m33462i();
        float f = this.f42809m;
        canvas.drawCircle((f * 48.0f) / 2.0f, (48.0f * f) / 2.0f, f * 11.5f, this.f42804h);
    }

    /* renamed from: e */
    public final void m33458e(Context context) {
        this.f42809m = context.getResources().getDisplayMetrics().density;
        Paint paint = new Paint();
        this.f42804h = paint;
        paint.setAntiAlias(true);
        this.f42804h.setStyle(Paint.Style.STROKE);
        this.f42804h.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
        this.f42804h.setStrokeWidth(this.f42809m * 3.0f);
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(new int[]{C7453R.attr.item_checkCircle_borderColor});
        int color = obtainStyledAttributes.getColor(0, ResourcesCompat.getColor(getResources(), C7453R.color.zhihu_item_checkCircle_borderColor, getContext().getTheme()));
        obtainStyledAttributes.recycle();
        this.f42804h.setColor(color);
        this.f42808l = ResourcesCompat.getDrawable(context.getResources(), C7453R.drawable.ic_check_white_18dp, context.getTheme());
    }

    /* renamed from: f */
    public final void m33459f(boolean z) {
        if (this.f42805i == null) {
            Paint paint = new Paint();
            this.f42805i = paint;
            paint.setAntiAlias(true);
            this.f42805i.setStyle(Paint.Style.FILL);
        }
        this.f42805i.setColor(z ? ResManager.INSTANCE.getColor(C7453R.color.checked_bg_color) : ResManager.INSTANCE.getColor(C7453R.color.un_checked_bg_color));
    }

    /* renamed from: g */
    public final void m33460g() {
        if (this.f42807k == null) {
            Paint paint = new Paint();
            this.f42807k = paint;
            paint.setAntiAlias(true);
            Paint paint2 = this.f42807k;
            float f = this.f42809m;
            paint2.setShader(new RadialGradient((f * 48.0f) / 2.0f, (48.0f * f) / 2.0f, 19.0f * f, new int[]{Color.parseColor("#00000000"), Color.parseColor("#0D000000"), Color.parseColor("#0D000000"), Color.parseColor("#00000000")}, new float[]{0.21052632f, 0.5263158f, 0.68421054f, 1.0f}, Shader.TileMode.CLAMP));
        }
    }

    /* renamed from: h */
    public final void m33461h() {
        if (this.f42806j == null) {
            TextPaint textPaint = new TextPaint();
            this.f42806j = textPaint;
            textPaint.setAntiAlias(true);
            this.f42806j.setColor(-1);
            this.f42806j.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            this.f42806j.setTextSize(this.f42809m * 12.0f);
        }
    }

    /* renamed from: i */
    public final void m33462i() {
        this.f42804h.setColor(getResources().getColor(C7453R.color.white));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        boolean z = this.f42803g != Integer.MIN_VALUE || this.f42802f;
        m33456c(canvas);
        m33454a(z, canvas);
        m33457d(canvas);
        m33455b(z, canvas);
        setAlpha(this.f42811o ? 1.0f : 0.5f);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) (this.f42809m * 48.0f), 1073741824);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    public void setChecked(boolean z) {
        if (this.f42801e) {
            throw new IllegalStateException("CheckView is countable, call setCheckedNum() instead.");
        }
        this.f42802f = z;
        invalidate();
    }

    public void setCheckedNum(int i) {
        if (!this.f42801e) {
            throw new IllegalStateException("CheckView is not countable, call setChecked() instead.");
        }
        if (i != Integer.MIN_VALUE && i <= 0) {
            throw new IllegalArgumentException("checked num can't be negative.");
        }
        this.f42803g = i;
        invalidate();
    }

    public void setCountable(boolean z) {
        this.f42801e = z;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        if (this.f42811o != z) {
            this.f42811o = z;
            invalidate();
        }
    }

    public CheckView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f42811o = true;
        m33458e(context);
    }

    public CheckView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f42811o = true;
        m33458e(context);
    }
}
