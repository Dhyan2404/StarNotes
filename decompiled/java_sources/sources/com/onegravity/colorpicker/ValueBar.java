package com.onegravity.colorpicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes7.dex */
public class ValueBar extends View {

    /* renamed from: J */
    public static final String f40000J = "value";

    /* renamed from: O */
    public static final String f40001O = "orientation";

    /* renamed from: Q */
    public static final boolean f40002Q = true;

    /* renamed from: k0 */
    public static final boolean f40003k0 = false;

    /* renamed from: q0 */
    public static final boolean f40004q0 = true;

    /* renamed from: y */
    public static final String f40005y = "parent";

    /* renamed from: z */
    public static final String f40006z = "color";

    /* renamed from: e */
    public int f40007e;

    /* renamed from: f */
    public int f40008f;

    /* renamed from: g */
    public int f40009g;

    /* renamed from: h */
    public int f40010h;

    /* renamed from: i */
    public int f40011i;

    /* renamed from: j */
    public int f40012j;

    /* renamed from: k */
    public Paint f40013k;

    /* renamed from: l */
    public Paint f40014l;

    /* renamed from: m */
    public Paint f40015m;

    /* renamed from: n */
    public RectF f40016n;

    /* renamed from: o */
    public Shader f40017o;

    /* renamed from: p */
    public boolean f40018p;

    /* renamed from: q */
    public int f40019q;

    /* renamed from: r */
    public float[] f40020r;

    /* renamed from: s */
    public float f40021s;

    /* renamed from: t */
    public float f40022t;

    /* renamed from: u */
    public ColorWheelView f40023u;

    /* renamed from: v */
    public boolean f40024v;

    /* renamed from: w */
    public OnValueChangedListener f40025w;

    /* renamed from: x */
    public int f40026x;

    /* loaded from: classes7.dex */
    public interface OnValueChangedListener {
        void onValueChanged(int i);
    }

    public ValueBar(Context context) {
        super(context);
        this.f40016n = new RectF();
        this.f40020r = new float[3];
        this.f40023u = null;
        m31492b(null, 0);
    }

    /* renamed from: a */
    public final void m31491a(int i) {
        int i2 = i - this.f40011i;
        if (i2 < 0) {
            i2 = 0;
        } else {
            int i3 = this.f40008f;
            if (i2 > i3) {
                i2 = i3;
            }
        }
        float[] fArr = this.f40020r;
        this.f40019q = Color.HSVToColor(new float[]{fArr[0], fArr[1], 1.0f - (this.f40021s * i2)});
    }

    /* renamed from: b */
    public final void m31492b(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C7020R.styleable.ColorBars, i, 0);
        Resources resources = getContext().getResources();
        this.f40007e = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_thickness, resources.getDimensionPixelSize(C7020R.dimen.bar_thickness));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_length, resources.getDimensionPixelSize(C7020R.dimen.bar_length));
        this.f40008f = dimensionPixelSize;
        this.f40009g = dimensionPixelSize;
        this.f40010h = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_pointer_radius, resources.getDimensionPixelSize(C7020R.dimen.bar_pointer_radius));
        this.f40011i = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_pointer_halo_radius, resources.getDimensionPixelSize(C7020R.dimen.bar_pointer_halo_radius));
        this.f40024v = obtainStyledAttributes.getBoolean(C7020R.styleable.ColorBars_bar_orientation_horizontal, true);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.f40013k = paint;
        paint.setShader(this.f40017o);
        this.f40012j = this.f40011i;
        Paint paint2 = new Paint(1);
        this.f40015m = paint2;
        paint2.setColor(-16777216);
        this.f40015m.setAlpha(80);
        Paint paint3 = new Paint(1);
        this.f40014l = paint3;
        paint3.setColor(-8257792);
        int i2 = this.f40008f;
        this.f40021s = 1.0f / i2;
        this.f40022t = i2 / 1.0f;
    }

    public int getColor() {
        return this.f40019q;
    }

    public OnValueChangedListener getOnValueChangedListener() {
        return this.f40025w;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        canvas.drawRect(this.f40016n, this.f40013k);
        if (this.f40024v) {
            i = this.f40012j;
            i2 = this.f40011i;
        } else {
            i = this.f40011i;
            i2 = this.f40012j;
        }
        float f = i;
        float f2 = i2;
        canvas.drawCircle(f, f2, this.f40011i, this.f40015m);
        canvas.drawCircle(f, f2, this.f40010h, this.f40014l);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f40009g + (this.f40011i * 2);
        if (!this.f40024v) {
            i = i2;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            i3 = size;
        } else if (mode == Integer.MIN_VALUE) {
            i3 = Math.min(i3, size);
        }
        int i4 = this.f40011i * 2;
        int i5 = i3 - i4;
        this.f40008f = i5;
        if (this.f40024v) {
            setMeasuredDimension(i5 + i4, i4);
        } else {
            setMeasuredDimension(i4, i5 + i4);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("parent"));
        setColor(Color.HSVToColor(bundle.getFloatArray("color")));
        setValue(bundle.getFloat("value"));
        this.f40024v = bundle.getBoolean("orientation", true);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("parent", onSaveInstanceState);
        bundle.putFloatArray("color", this.f40020r);
        float[] fArr = new float[3];
        Color.colorToHSV(this.f40019q, fArr);
        bundle.putFloat("value", fArr[2]);
        bundle.putBoolean("orientation", true);
        return bundle;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f40024v) {
            int i7 = this.f40008f;
            int i8 = this.f40011i;
            i5 = i7 + i8;
            i6 = this.f40007e;
            this.f40008f = i - (i8 * 2);
            this.f40016n.set(i8, i8 - (i6 / 2), r4 + i8, i8 + (i6 / 2));
        } else {
            i5 = this.f40007e;
            int i9 = this.f40008f;
            int i10 = this.f40011i;
            this.f40008f = i2 - (i10 * 2);
            this.f40016n.set(i10, i10 - (i5 / 2), (i5 / 2) + i10, r4 + i10);
            i6 = i9 + i10;
        }
        if (isInEditMode()) {
            this.f40017o = new LinearGradient(this.f40011i, 0.0f, i5, i6, new int[]{-8257792, -16777216}, (float[]) null, Shader.TileMode.CLAMP);
            Color.colorToHSV(-8257792, this.f40020r);
        } else {
            this.f40017o = new LinearGradient(this.f40011i, 0.0f, i5, i6, new int[]{Color.HSVToColor(255, this.f40020r), -16777216}, (float[]) null, Shader.TileMode.CLAMP);
        }
        this.f40013k.setShader(this.f40017o);
        int i11 = this.f40008f;
        this.f40021s = 1.0f / i11;
        this.f40022t = i11 / 1.0f;
        float[] fArr = new float[3];
        Color.colorToHSV(this.f40019q, fArr);
        if (isInEditMode()) {
            this.f40012j = this.f40011i;
        } else {
            this.f40012j = Math.round((this.f40008f - (this.f40022t * fArr[2])) + this.f40011i);
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        getParent().requestDisallowInterceptTouchEvent(true);
        float x = this.f40024v ? motionEvent.getX() : motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f40018p = true;
            if (x >= this.f40011i && x <= r5 + this.f40008f) {
                this.f40012j = Math.round(x);
                m31491a(Math.round(x));
                this.f40014l.setColor(this.f40019q);
                invalidate();
            }
        } else if (action == 1) {
            ColorWheelView colorWheelView = this.f40023u;
            if (colorWheelView != null) {
                colorWheelView.setNewCenterColor(this.f40019q);
                this.f40023u.changeOpacityBarColor(this.f40019q);
            }
            this.f40018p = false;
        } else if (action == 2) {
            if (this.f40018p) {
                int i = this.f40011i;
                if (x >= i && x <= this.f40008f + i) {
                    this.f40012j = Math.round(x);
                    m31491a(Math.round(x));
                    this.f40014l.setColor(this.f40019q);
                    ColorWheelView colorWheelView2 = this.f40023u;
                    if (colorWheelView2 != null) {
                        colorWheelView2.setNewCenterColor(this.f40019q);
                        this.f40023u.changeOpacityBarColor(this.f40019q);
                    }
                    invalidate();
                } else if (x < i) {
                    this.f40012j = i;
                    int HSVToColor = Color.HSVToColor(this.f40020r);
                    this.f40019q = HSVToColor;
                    this.f40014l.setColor(HSVToColor);
                    ColorWheelView colorWheelView3 = this.f40023u;
                    if (colorWheelView3 != null) {
                        colorWheelView3.setNewCenterColor(this.f40019q);
                        this.f40023u.changeOpacityBarColor(this.f40019q);
                    }
                    invalidate();
                } else {
                    int i2 = this.f40008f;
                    if (x > i + i2) {
                        this.f40012j = i + i2;
                        this.f40019q = -16777216;
                        this.f40014l.setColor(-16777216);
                        ColorWheelView colorWheelView4 = this.f40023u;
                        if (colorWheelView4 != null) {
                            colorWheelView4.setNewCenterColor(this.f40019q);
                            this.f40023u.changeOpacityBarColor(this.f40019q);
                        }
                        invalidate();
                    }
                }
            }
            OnValueChangedListener onValueChangedListener = this.f40025w;
            if (onValueChangedListener != null) {
                int i3 = this.f40026x;
                int i4 = this.f40019q;
                if (i3 != i4) {
                    onValueChangedListener.onValueChanged(i4);
                    this.f40026x = this.f40019q;
                }
            }
        }
        return true;
    }

    public void setColor(int i) {
        int i2;
        int i3;
        if (this.f40024v) {
            i2 = this.f40008f + this.f40011i;
            i3 = this.f40007e;
        } else {
            i2 = this.f40007e;
            i3 = this.f40008f + this.f40011i;
        }
        Color.colorToHSV(i, this.f40020r);
        LinearGradient linearGradient = new LinearGradient(this.f40011i, 0.0f, i2, i3, new int[]{i, -16777216}, (float[]) null, Shader.TileMode.CLAMP);
        this.f40017o = linearGradient;
        this.f40013k.setShader(linearGradient);
        m31491a(this.f40012j);
        this.f40014l.setColor(this.f40019q);
        ColorWheelView colorWheelView = this.f40023u;
        if (colorWheelView != null) {
            colorWheelView.setNewCenterColor(this.f40019q);
            if (this.f40023u.hasOpacityBar()) {
                this.f40023u.changeOpacityBarColor(this.f40019q);
            }
        }
        invalidate();
    }

    public void setColorPicker(ColorWheelView colorWheelView) {
        this.f40023u = colorWheelView;
    }

    public void setOnValueChangedListener(OnValueChangedListener onValueChangedListener) {
        this.f40025w = onValueChangedListener;
    }

    public void setValue(float f) {
        int round = Math.round((this.f40008f - (this.f40022t * f)) + this.f40011i);
        this.f40012j = round;
        m31491a(round);
        this.f40014l.setColor(this.f40019q);
        ColorWheelView colorWheelView = this.f40023u;
        if (colorWheelView != null) {
            colorWheelView.setNewCenterColor(this.f40019q);
            this.f40023u.changeOpacityBarColor(this.f40019q);
        }
        invalidate();
    }

    public ValueBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40016n = new RectF();
        this.f40020r = new float[3];
        this.f40023u = null;
        m31492b(attributeSet, 0);
    }

    public ValueBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f40016n = new RectF();
        this.f40020r = new float[3];
        this.f40023u = null;
        m31492b(attributeSet, i);
    }
}
