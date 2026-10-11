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
public class SaturationBar extends View {

    /* renamed from: J */
    public static final String f39972J = "saturation";

    /* renamed from: O */
    public static final String f39973O = "orientation";

    /* renamed from: Q */
    public static final boolean f39974Q = true;

    /* renamed from: k0 */
    public static final boolean f39975k0 = false;

    /* renamed from: q0 */
    public static final boolean f39976q0 = true;

    /* renamed from: y */
    public static final String f39977y = "parent";

    /* renamed from: z */
    public static final String f39978z = "color";

    /* renamed from: e */
    public int f39979e;

    /* renamed from: f */
    public int f39980f;

    /* renamed from: g */
    public int f39981g;

    /* renamed from: h */
    public int f39982h;

    /* renamed from: i */
    public int f39983i;

    /* renamed from: j */
    public int f39984j;

    /* renamed from: k */
    public Paint f39985k;

    /* renamed from: l */
    public Paint f39986l;

    /* renamed from: m */
    public Paint f39987m;

    /* renamed from: n */
    public RectF f39988n;

    /* renamed from: o */
    public Shader f39989o;

    /* renamed from: p */
    public boolean f39990p;

    /* renamed from: q */
    public int f39991q;

    /* renamed from: r */
    public float[] f39992r;

    /* renamed from: s */
    public float f39993s;

    /* renamed from: t */
    public float f39994t;

    /* renamed from: u */
    public ColorWheelView f39995u;

    /* renamed from: v */
    public boolean f39996v;

    /* renamed from: w */
    public OnSaturationChangedListener f39997w;

    /* renamed from: x */
    public int f39998x;

    /* loaded from: classes7.dex */
    public interface OnSaturationChangedListener {
        void onSaturationChanged(int i);
    }

    public SaturationBar(Context context) {
        super(context);
        this.f39988n = new RectF();
        this.f39992r = new float[3];
        this.f39995u = null;
        m31490b(null, 0);
    }

    /* renamed from: a */
    public final void m31489a(int i) {
        int i2 = i - this.f39983i;
        if (i2 < 0) {
            i2 = 0;
        } else {
            int i3 = this.f39980f;
            if (i2 > i3) {
                i2 = i3;
            }
        }
        this.f39991q = Color.HSVToColor(new float[]{this.f39992r[0], this.f39993s * i2, 1.0f});
    }

    /* renamed from: b */
    public final void m31490b(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C7020R.styleable.ColorBars, i, 0);
        Resources resources = getContext().getResources();
        this.f39979e = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_thickness, resources.getDimensionPixelSize(C7020R.dimen.bar_thickness));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_length, resources.getDimensionPixelSize(C7020R.dimen.bar_length));
        this.f39980f = dimensionPixelSize;
        this.f39981g = dimensionPixelSize;
        this.f39982h = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_pointer_radius, resources.getDimensionPixelSize(C7020R.dimen.bar_pointer_radius));
        this.f39983i = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_pointer_halo_radius, resources.getDimensionPixelSize(C7020R.dimen.bar_pointer_halo_radius));
        this.f39996v = obtainStyledAttributes.getBoolean(C7020R.styleable.ColorBars_bar_orientation_horizontal, true);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.f39985k = paint;
        paint.setShader(this.f39989o);
        this.f39984j = this.f39980f + this.f39983i;
        Paint paint2 = new Paint(1);
        this.f39987m = paint2;
        paint2.setColor(-16777216);
        this.f39987m.setAlpha(80);
        Paint paint3 = new Paint(1);
        this.f39986l = paint3;
        paint3.setColor(-8257792);
        int i2 = this.f39980f;
        this.f39993s = 1.0f / i2;
        this.f39994t = i2 / 1.0f;
    }

    public int getColor() {
        return this.f39991q;
    }

    public OnSaturationChangedListener getOnSaturationChangedListener() {
        return this.f39997w;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        canvas.drawRect(this.f39988n, this.f39985k);
        if (this.f39996v) {
            i = this.f39984j;
            i2 = this.f39983i;
        } else {
            i = this.f39983i;
            i2 = this.f39984j;
        }
        float f = i;
        float f2 = i2;
        canvas.drawCircle(f, f2, this.f39983i, this.f39987m);
        canvas.drawCircle(f, f2, this.f39982h, this.f39986l);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f39981g + (this.f39983i * 2);
        if (!this.f39996v) {
            i = i2;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            i3 = size;
        } else if (mode == Integer.MIN_VALUE) {
            i3 = Math.min(i3, size);
        }
        int i4 = this.f39983i * 2;
        int i5 = i3 - i4;
        this.f39980f = i5;
        if (this.f39996v) {
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
        setSaturation(bundle.getFloat("saturation"));
        this.f39996v = bundle.getBoolean("orientation", true);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("parent", onSaveInstanceState);
        bundle.putFloatArray("color", this.f39992r);
        bundle.putBoolean("orientation", this.f39996v);
        float[] fArr = new float[3];
        Color.colorToHSV(this.f39991q, fArr);
        bundle.putFloat("saturation", fArr[1]);
        return bundle;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f39996v) {
            int i7 = this.f39980f;
            int i8 = this.f39983i;
            i5 = i7 + i8;
            i6 = this.f39979e;
            this.f39980f = i - (i8 * 2);
            this.f39988n.set(i8, i8 - (i6 / 2), r5 + i8, i8 + (i6 / 2));
        } else {
            i5 = this.f39979e;
            int i9 = this.f39980f;
            int i10 = this.f39983i;
            this.f39980f = i2 - (i10 * 2);
            this.f39988n.set(i10, i10 - (i5 / 2), (i5 / 2) + i10, r5 + i10);
            i6 = i9 + i10;
        }
        if (isInEditMode()) {
            this.f39989o = new LinearGradient(this.f39983i, 0.0f, i5, i6, new int[]{-1, -8257792}, (float[]) null, Shader.TileMode.CLAMP);
            Color.colorToHSV(-8257792, this.f39992r);
        } else {
            this.f39989o = new LinearGradient(this.f39983i, 0.0f, i5, i6, new int[]{-1, Color.HSVToColor(255, this.f39992r)}, (float[]) null, Shader.TileMode.CLAMP);
        }
        this.f39985k.setShader(this.f39989o);
        int i11 = this.f39980f;
        this.f39993s = 1.0f / i11;
        this.f39994t = i11 / 1.0f;
        float[] fArr = new float[3];
        Color.colorToHSV(this.f39991q, fArr);
        if (isInEditMode()) {
            this.f39984j = this.f39980f + this.f39983i;
        } else {
            this.f39984j = Math.round((this.f39994t * fArr[1]) + this.f39983i);
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        getParent().requestDisallowInterceptTouchEvent(true);
        float x = this.f39996v ? motionEvent.getX() : motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f39990p = true;
            if (x >= this.f39983i && x <= r5 + this.f39980f) {
                this.f39984j = Math.round(x);
                m31489a(Math.round(x));
                this.f39986l.setColor(this.f39991q);
                invalidate();
            }
        } else if (action == 1) {
            ColorWheelView colorWheelView = this.f39995u;
            if (colorWheelView != null) {
                colorWheelView.setNewCenterColor(this.f39991q);
                this.f39995u.changeValueBarColor(this.f39991q);
                this.f39995u.changeOpacityBarColor(this.f39991q);
            }
            this.f39990p = false;
        } else if (action == 2) {
            if (this.f39990p) {
                int i = this.f39983i;
                if (x >= i && x <= this.f39980f + i) {
                    this.f39984j = Math.round(x);
                    m31489a(Math.round(x));
                    this.f39986l.setColor(this.f39991q);
                    ColorWheelView colorWheelView2 = this.f39995u;
                    if (colorWheelView2 != null) {
                        colorWheelView2.setNewCenterColor(this.f39991q);
                        this.f39995u.changeValueBarColor(this.f39991q);
                        this.f39995u.changeOpacityBarColor(this.f39991q);
                    }
                    invalidate();
                } else if (x < i) {
                    this.f39984j = i;
                    this.f39991q = -1;
                    this.f39986l.setColor(-1);
                    ColorWheelView colorWheelView3 = this.f39995u;
                    if (colorWheelView3 != null) {
                        colorWheelView3.setNewCenterColor(this.f39991q);
                        this.f39995u.changeValueBarColor(this.f39991q);
                        this.f39995u.changeOpacityBarColor(this.f39991q);
                    }
                    invalidate();
                } else {
                    int i2 = this.f39980f;
                    if (x > i + i2) {
                        this.f39984j = i + i2;
                        int HSVToColor = Color.HSVToColor(this.f39992r);
                        this.f39991q = HSVToColor;
                        this.f39986l.setColor(HSVToColor);
                        ColorWheelView colorWheelView4 = this.f39995u;
                        if (colorWheelView4 != null) {
                            colorWheelView4.setNewCenterColor(this.f39991q);
                            this.f39995u.changeValueBarColor(this.f39991q);
                            this.f39995u.changeOpacityBarColor(this.f39991q);
                        }
                        invalidate();
                    }
                }
            }
            OnSaturationChangedListener onSaturationChangedListener = this.f39997w;
            if (onSaturationChangedListener != null) {
                int i3 = this.f39998x;
                int i4 = this.f39991q;
                if (i3 != i4) {
                    onSaturationChangedListener.onSaturationChanged(i4);
                    this.f39998x = this.f39991q;
                }
            }
        }
        return true;
    }

    public void setColor(int i) {
        int i2;
        int i3;
        if (this.f39996v) {
            i2 = this.f39980f + this.f39983i;
            i3 = this.f39979e;
        } else {
            i2 = this.f39979e;
            i3 = this.f39980f + this.f39983i;
        }
        Color.colorToHSV(i, this.f39992r);
        LinearGradient linearGradient = new LinearGradient(this.f39983i, 0.0f, i2, i3, new int[]{-1, i}, (float[]) null, Shader.TileMode.CLAMP);
        this.f39989o = linearGradient;
        this.f39985k.setShader(linearGradient);
        m31489a(this.f39984j);
        this.f39986l.setColor(this.f39991q);
        ColorWheelView colorWheelView = this.f39995u;
        if (colorWheelView != null) {
            colorWheelView.setNewCenterColor(this.f39991q);
            if (this.f39995u.hasValueBar()) {
                this.f39995u.changeValueBarColor(this.f39991q);
            } else if (this.f39995u.hasOpacityBar()) {
                this.f39995u.changeOpacityBarColor(this.f39991q);
            }
        }
        invalidate();
    }

    public void setColorPicker(ColorWheelView colorWheelView) {
        this.f39995u = colorWheelView;
    }

    public void setOnSaturationChangedListener(OnSaturationChangedListener onSaturationChangedListener) {
        this.f39997w = onSaturationChangedListener;
    }

    public void setSaturation(float f) {
        int round = Math.round(this.f39994t * f) + this.f39983i;
        this.f39984j = round;
        m31489a(round);
        this.f39986l.setColor(this.f39991q);
        ColorWheelView colorWheelView = this.f39995u;
        if (colorWheelView != null) {
            colorWheelView.setNewCenterColor(this.f39991q);
            this.f39995u.changeValueBarColor(this.f39991q);
            this.f39995u.changeOpacityBarColor(this.f39991q);
        }
        invalidate();
    }

    public SaturationBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39988n = new RectF();
        this.f39992r = new float[3];
        this.f39995u = null;
        m31490b(attributeSet, 0);
    }

    public SaturationBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f39988n = new RectF();
        this.f39992r = new float[3];
        this.f39995u = null;
        m31490b(attributeSet, i);
    }
}
