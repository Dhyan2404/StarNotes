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
public class OpacityBar extends View {

    /* renamed from: J */
    public static final String f39917J = "opacity";

    /* renamed from: O */
    public static final String f39918O = "orientation";

    /* renamed from: Q */
    public static final boolean f39919Q = true;

    /* renamed from: k0 */
    public static final boolean f39920k0 = false;

    /* renamed from: q0 */
    public static final boolean f39921q0 = true;

    /* renamed from: y */
    public static final String f39922y = "parent";

    /* renamed from: z */
    public static final String f39923z = "color";

    /* renamed from: e */
    public int f39924e;

    /* renamed from: f */
    public int f39925f;

    /* renamed from: g */
    public int f39926g;

    /* renamed from: h */
    public int f39927h;

    /* renamed from: i */
    public int f39928i;

    /* renamed from: j */
    public int f39929j;

    /* renamed from: k */
    public Paint f39930k;

    /* renamed from: l */
    public Paint f39931l;

    /* renamed from: m */
    public Paint f39932m;

    /* renamed from: n */
    public RectF f39933n;

    /* renamed from: o */
    public Shader f39934o;

    /* renamed from: p */
    public boolean f39935p;

    /* renamed from: q */
    public int f39936q;

    /* renamed from: r */
    public float[] f39937r;

    /* renamed from: s */
    public float f39938s;

    /* renamed from: t */
    public float f39939t;

    /* renamed from: u */
    public OnOpacityChangedListener f39940u;

    /* renamed from: v */
    public int f39941v;

    /* renamed from: w */
    public ColorWheelView f39942w;

    /* renamed from: x */
    public boolean f39943x;

    /* loaded from: classes7.dex */
    public interface OnOpacityChangedListener {
        void onOpacityChanged(int i);
    }

    public OpacityBar(Context context) {
        super(context);
        this.f39933n = new RectF();
        this.f39937r = new float[3];
        this.f39942w = null;
        m31486b(null, 0);
    }

    /* renamed from: a */
    public final void m31485a(int i) {
        int i2 = i - this.f39928i;
        if (i2 < 0) {
            i2 = 0;
        } else {
            int i3 = this.f39925f;
            if (i2 > i3) {
                i2 = i3;
            }
        }
        int HSVToColor = Color.HSVToColor(Math.round(this.f39938s * i2), this.f39937r);
        this.f39936q = HSVToColor;
        if (Color.alpha(HSVToColor) > 250) {
            this.f39936q = Color.HSVToColor(this.f39937r);
        } else if (Color.alpha(this.f39936q) < 5) {
            this.f39936q = 0;
        }
    }

    /* renamed from: b */
    public final void m31486b(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C7020R.styleable.ColorBars, i, 0);
        Resources resources = getContext().getResources();
        this.f39924e = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_thickness, resources.getDimensionPixelSize(C7020R.dimen.bar_thickness));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_length, resources.getDimensionPixelSize(C7020R.dimen.bar_length));
        this.f39925f = dimensionPixelSize;
        this.f39926g = dimensionPixelSize;
        this.f39927h = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_pointer_radius, resources.getDimensionPixelSize(C7020R.dimen.bar_pointer_radius));
        this.f39928i = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_pointer_halo_radius, resources.getDimensionPixelSize(C7020R.dimen.bar_pointer_halo_radius));
        this.f39943x = obtainStyledAttributes.getBoolean(C7020R.styleable.ColorBars_bar_orientation_horizontal, true);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.f39930k = paint;
        paint.setShader(this.f39934o);
        this.f39929j = this.f39925f + this.f39928i;
        Paint paint2 = new Paint(1);
        this.f39932m = paint2;
        paint2.setColor(-16777216);
        this.f39932m.setAlpha(80);
        Paint paint3 = new Paint(1);
        this.f39931l = paint3;
        paint3.setColor(-8257792);
        int i2 = this.f39925f;
        this.f39938s = 255.0f / i2;
        this.f39939t = i2 / 255.0f;
    }

    public int getColor() {
        return this.f39936q;
    }

    public OnOpacityChangedListener getOnOpacityChangedListener() {
        return this.f39940u;
    }

    public int getOpacity() {
        int round = Math.round(this.f39938s * (this.f39929j - this.f39928i));
        if (round < 5) {
            return 0;
        }
        if (round > 250) {
            return 255;
        }
        return round;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        canvas.drawRect(this.f39933n, this.f39930k);
        if (this.f39943x) {
            i = this.f39929j;
            i2 = this.f39928i;
        } else {
            i = this.f39928i;
            i2 = this.f39929j;
        }
        float f = i;
        float f2 = i2;
        canvas.drawCircle(f, f2, this.f39928i, this.f39932m);
        canvas.drawCircle(f, f2, this.f39927h, this.f39931l);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f39926g + (this.f39928i * 2);
        if (!this.f39943x) {
            i = i2;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            i3 = size;
        } else if (mode == Integer.MIN_VALUE) {
            i3 = Math.min(i3, size);
        }
        int i4 = this.f39928i * 2;
        int i5 = i3 - i4;
        this.f39925f = i5;
        if (this.f39943x) {
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
        setOpacity(bundle.getInt(f39917J));
        this.f39943x = bundle.getBoolean("orientation", true);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("parent", onSaveInstanceState);
        bundle.putFloatArray("color", this.f39937r);
        bundle.putInt(f39917J, getOpacity());
        bundle.putBoolean("orientation", true);
        return bundle;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f39943x) {
            int i7 = this.f39925f;
            int i8 = this.f39928i;
            i5 = i7 + i8;
            i6 = this.f39924e;
            this.f39925f = i - (i8 * 2);
            this.f39933n.set(i8, i8 - (i6 / 2), r4 + i8, i8 + (i6 / 2));
        } else {
            i5 = this.f39924e;
            int i9 = this.f39925f;
            int i10 = this.f39928i;
            this.f39925f = i2 - (i10 * 2);
            this.f39933n.set(i10, i10 - (i5 / 2), (i5 / 2) + i10, r4 + i10);
            i6 = i9 + i10;
        }
        if (isInEditMode()) {
            this.f39934o = new LinearGradient(this.f39928i, 0.0f, i5, i6, new int[]{8519424, -8257792}, (float[]) null, Shader.TileMode.CLAMP);
            Color.colorToHSV(-8257792, this.f39937r);
        } else {
            this.f39934o = new LinearGradient(this.f39928i, 0.0f, i5, i6, new int[]{Color.HSVToColor(0, this.f39937r), Color.HSVToColor(255, this.f39937r)}, (float[]) null, Shader.TileMode.CLAMP);
        }
        this.f39930k.setShader(this.f39934o);
        int i11 = this.f39925f;
        this.f39938s = 255.0f / i11;
        this.f39939t = i11 / 255.0f;
        Color.colorToHSV(this.f39936q, new float[3]);
        if (isInEditMode()) {
            this.f39929j = this.f39925f + this.f39928i;
        } else {
            this.f39929j = Math.round((this.f39939t * Color.alpha(this.f39936q)) + this.f39928i);
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        getParent().requestDisallowInterceptTouchEvent(true);
        float x = this.f39943x ? motionEvent.getX() : motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f39935p = true;
            if (x >= this.f39928i && x <= r5 + this.f39925f) {
                this.f39929j = Math.round(x);
                m31485a(Math.round(x));
                this.f39931l.setColor(this.f39936q);
                invalidate();
            }
        } else if (action == 1) {
            ColorWheelView colorWheelView = this.f39942w;
            if (colorWheelView != null) {
                colorWheelView.setNewCenterColor(this.f39936q);
            }
            this.f39935p = false;
        } else if (action == 2) {
            if (this.f39935p) {
                int i = this.f39928i;
                if (x >= i && x <= this.f39925f + i) {
                    this.f39929j = Math.round(x);
                    m31485a(Math.round(x));
                    this.f39931l.setColor(this.f39936q);
                    ColorWheelView colorWheelView2 = this.f39942w;
                    if (colorWheelView2 != null) {
                        colorWheelView2.setNewCenterColor(this.f39936q);
                    }
                    invalidate();
                } else if (x < i) {
                    this.f39929j = i;
                    this.f39936q = 0;
                    this.f39931l.setColor(0);
                    ColorWheelView colorWheelView3 = this.f39942w;
                    if (colorWheelView3 != null) {
                        colorWheelView3.setNewCenterColor(this.f39936q);
                    }
                    invalidate();
                } else {
                    int i2 = this.f39925f;
                    if (x > i + i2) {
                        this.f39929j = i + i2;
                        int HSVToColor = Color.HSVToColor(this.f39937r);
                        this.f39936q = HSVToColor;
                        this.f39931l.setColor(HSVToColor);
                        ColorWheelView colorWheelView4 = this.f39942w;
                        if (colorWheelView4 != null) {
                            colorWheelView4.setNewCenterColor(this.f39936q);
                        }
                        invalidate();
                    }
                }
            }
            if (this.f39940u != null && this.f39941v != getOpacity()) {
                this.f39940u.onOpacityChanged(getOpacity());
                this.f39941v = getOpacity();
            }
        }
        return true;
    }

    public void setColor(int i) {
        int i2;
        int i3;
        if (this.f39943x) {
            i2 = this.f39925f + this.f39928i;
            i3 = this.f39924e;
        } else {
            i2 = this.f39924e;
            i3 = this.f39925f + this.f39928i;
        }
        Color.colorToHSV(i, this.f39937r);
        LinearGradient linearGradient = new LinearGradient(this.f39928i, 0.0f, i2, i3, new int[]{Color.HSVToColor(0, this.f39937r), i}, (float[]) null, Shader.TileMode.CLAMP);
        this.f39934o = linearGradient;
        this.f39930k.setShader(linearGradient);
        m31485a(this.f39929j);
        this.f39931l.setColor(this.f39936q);
        ColorWheelView colorWheelView = this.f39942w;
        if (colorWheelView != null) {
            colorWheelView.setNewCenterColor(this.f39936q);
        }
        invalidate();
    }

    public void setColorPicker(ColorWheelView colorWheelView) {
        this.f39942w = colorWheelView;
    }

    public void setOnOpacityChangedListener(OnOpacityChangedListener onOpacityChangedListener) {
        this.f39940u = onOpacityChangedListener;
    }

    public void setOpacity(int i) {
        int round = Math.round(this.f39939t * i) + this.f39928i;
        this.f39929j = round;
        m31485a(round);
        this.f39931l.setColor(this.f39936q);
        ColorWheelView colorWheelView = this.f39942w;
        if (colorWheelView != null) {
            colorWheelView.setNewCenterColor(this.f39936q);
        }
        invalidate();
    }

    public OpacityBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39933n = new RectF();
        this.f39937r = new float[3];
        this.f39942w = null;
        m31486b(attributeSet, 0);
    }

    public OpacityBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f39933n = new RectF();
        this.f39937r = new float[3];
        this.f39942w = null;
        m31486b(attributeSet, i);
    }
}
