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
public class SVBar extends View {

    /* renamed from: J */
    public static final String f39946J = "orientation";

    /* renamed from: O */
    public static final boolean f39947O = true;

    /* renamed from: Q */
    public static final boolean f39948Q = false;

    /* renamed from: k0 */
    public static final boolean f39949k0 = true;

    /* renamed from: w */
    public static final String f39950w = "parent";

    /* renamed from: x */
    public static final String f39951x = "color";

    /* renamed from: y */
    public static final String f39952y = "saturation";

    /* renamed from: z */
    public static final String f39953z = "value";

    /* renamed from: e */
    public int f39954e;

    /* renamed from: f */
    public int f39955f;

    /* renamed from: g */
    public int f39956g;

    /* renamed from: h */
    public int f39957h;

    /* renamed from: i */
    public int f39958i;

    /* renamed from: j */
    public int f39959j;

    /* renamed from: k */
    public Paint f39960k;

    /* renamed from: l */
    public Paint f39961l;

    /* renamed from: m */
    public Paint f39962m;

    /* renamed from: n */
    public final RectF f39963n;

    /* renamed from: o */
    public Shader f39964o;

    /* renamed from: p */
    public boolean f39965p;

    /* renamed from: q */
    public int f39966q;

    /* renamed from: r */
    public final float[] f39967r;

    /* renamed from: s */
    public float f39968s;

    /* renamed from: t */
    public float f39969t;

    /* renamed from: u */
    public ColorWheelView f39970u;

    /* renamed from: v */
    public boolean f39971v;

    public SVBar(Context context) {
        super(context);
        this.f39963n = new RectF();
        this.f39967r = new float[3];
        this.f39970u = null;
        m31488b(null, 0);
    }

    /* renamed from: a */
    public final void m31487a(int i) {
        int i2 = this.f39958i;
        int i3 = i - i2;
        if (i3 < 0) {
            i3 = 0;
        } else {
            int i4 = this.f39955f;
            if (i3 > i4) {
                i3 = i4;
            }
        }
        int i5 = this.f39955f;
        if (i3 > (i5 / 2) + i2 && i3 < i2 + i5) {
            this.f39966q = Color.HSVToColor(new float[]{this.f39967r[0], 1.0f, 1.0f - (this.f39968s * (i3 - (i2 + (i5 / 2))))});
            return;
        }
        if (i3 > i2 && i3 < i2 + i5) {
            this.f39966q = Color.HSVToColor(new float[]{this.f39967r[0], this.f39968s * (i3 - i2), 1.0f});
        } else if (i3 == i2) {
            this.f39966q = -1;
        } else if (i3 == i2 + i5) {
            this.f39966q = -16777216;
        }
    }

    /* renamed from: b */
    public final void m31488b(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C7020R.styleable.ColorBars, i, 0);
        Resources resources = getContext().getResources();
        this.f39954e = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_thickness, resources.getDimensionPixelSize(C7020R.dimen.bar_thickness));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_length, resources.getDimensionPixelSize(C7020R.dimen.bar_length));
        this.f39955f = dimensionPixelSize;
        this.f39956g = dimensionPixelSize;
        this.f39957h = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_pointer_radius, resources.getDimensionPixelSize(C7020R.dimen.bar_pointer_radius));
        this.f39958i = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorBars_bar_pointer_halo_radius, resources.getDimensionPixelSize(C7020R.dimen.bar_pointer_halo_radius));
        this.f39971v = obtainStyledAttributes.getBoolean(C7020R.styleable.ColorBars_bar_orientation_horizontal, true);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.f39960k = paint;
        paint.setShader(this.f39964o);
        this.f39959j = (this.f39955f / 2) + this.f39958i;
        Paint paint2 = new Paint(1);
        this.f39962m = paint2;
        paint2.setColor(-16777216);
        this.f39962m.setAlpha(80);
        Paint paint3 = new Paint(1);
        this.f39961l = paint3;
        paint3.setColor(-8257792);
        int i2 = this.f39955f;
        this.f39968s = 1.0f / (i2 / 2.0f);
        this.f39969t = (i2 / 2.0f) / 1.0f;
    }

    public int getColor() {
        return this.f39966q;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        canvas.drawRect(this.f39963n, this.f39960k);
        if (this.f39971v) {
            i = this.f39959j;
            i2 = this.f39958i;
        } else {
            i = this.f39958i;
            i2 = this.f39959j;
        }
        float f = i;
        float f2 = i2;
        canvas.drawCircle(f, f2, this.f39958i, this.f39962m);
        canvas.drawCircle(f, f2, this.f39957h, this.f39961l);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f39956g + (this.f39958i * 2);
        if (!this.f39971v) {
            i = i2;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            i3 = size;
        } else if (mode == Integer.MIN_VALUE) {
            i3 = Math.min(i3, size);
        }
        int i4 = this.f39958i * 2;
        int i5 = i3 - i4;
        this.f39955f = i5;
        if (this.f39971v) {
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
        if (bundle.containsKey("saturation")) {
            setSaturation(bundle.getFloat("saturation"));
        } else {
            setValue(bundle.getFloat("value"));
        }
        this.f39971v = bundle.getBoolean("orientation", true);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("parent", onSaveInstanceState);
        bundle.putFloatArray("color", this.f39967r);
        float[] fArr = new float[3];
        Color.colorToHSV(this.f39966q, fArr);
        float f = fArr[1];
        float f2 = fArr[2];
        if (f < f2) {
            bundle.putFloat("saturation", f);
        } else {
            bundle.putFloat("value", f2);
        }
        bundle.putBoolean("orientation", true);
        return bundle;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f39971v) {
            int i7 = this.f39955f;
            int i8 = this.f39958i;
            i5 = i7 + i8;
            i6 = this.f39954e;
            this.f39955f = i - (i8 * 2);
            this.f39963n.set(i8, i8 - (i6 / 2), r5 + i8, i8 + (i6 / 2));
        } else {
            i5 = this.f39954e;
            int i9 = this.f39955f;
            int i10 = this.f39958i;
            this.f39955f = i2 - (i10 * 2);
            this.f39963n.set(i10, i10 - (i5 / 2), (i5 / 2) + i10, r5 + i10);
            i6 = i9 + i10;
        }
        if (isInEditMode()) {
            this.f39964o = new LinearGradient(this.f39958i, 0.0f, i5, i6, new int[]{-1, -8257792, -16777216}, (float[]) null, Shader.TileMode.CLAMP);
            Color.colorToHSV(-8257792, this.f39967r);
        } else {
            this.f39964o = new LinearGradient(this.f39958i, 0.0f, i5, i6, new int[]{-1, Color.HSVToColor(this.f39967r), -16777216}, (float[]) null, Shader.TileMode.CLAMP);
        }
        this.f39960k.setShader(this.f39964o);
        int i11 = this.f39955f;
        this.f39968s = 1.0f / (i11 / 2.0f);
        this.f39969t = (i11 / 2.0f) / 1.0f;
        float[] fArr = new float[3];
        Color.colorToHSV(this.f39966q, fArr);
        float f = fArr[1];
        float f2 = fArr[2];
        if (f < f2) {
            this.f39959j = Math.round((this.f39969t * f) + this.f39958i);
        } else {
            this.f39959j = Math.round((this.f39969t * (1.0f - f2)) + this.f39958i + (this.f39955f / 2));
        }
        if (isInEditMode()) {
            this.f39959j = (this.f39955f / 2) + this.f39958i;
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        getParent().requestDisallowInterceptTouchEvent(true);
        float x = this.f39971v ? motionEvent.getX() : motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f39965p = true;
            if (x >= this.f39958i && x <= r5 + this.f39955f) {
                this.f39959j = Math.round(x);
                m31487a(Math.round(x));
                this.f39961l.setColor(this.f39966q);
                invalidate();
            }
        } else if (action == 1) {
            ColorWheelView colorWheelView = this.f39970u;
            if (colorWheelView != null) {
                colorWheelView.setNewCenterColor(this.f39966q);
                this.f39970u.changeOpacityBarColor(this.f39966q);
            }
            this.f39965p = false;
        } else if (action == 2 && this.f39965p) {
            int i = this.f39958i;
            if (x >= i && x <= this.f39955f + i) {
                this.f39959j = Math.round(x);
                m31487a(Math.round(x));
                this.f39961l.setColor(this.f39966q);
                ColorWheelView colorWheelView2 = this.f39970u;
                if (colorWheelView2 != null) {
                    colorWheelView2.setNewCenterColor(this.f39966q);
                    this.f39970u.changeOpacityBarColor(this.f39966q);
                }
                invalidate();
            } else if (x < i) {
                this.f39959j = i;
                this.f39966q = -1;
                this.f39961l.setColor(-1);
                ColorWheelView colorWheelView3 = this.f39970u;
                if (colorWheelView3 != null) {
                    colorWheelView3.setNewCenterColor(this.f39966q);
                    this.f39970u.changeOpacityBarColor(this.f39966q);
                }
                invalidate();
            } else {
                int i2 = this.f39955f;
                if (x > i + i2) {
                    this.f39959j = i + i2;
                    this.f39966q = -16777216;
                    this.f39961l.setColor(-16777216);
                    ColorWheelView colorWheelView4 = this.f39970u;
                    if (colorWheelView4 != null) {
                        colorWheelView4.setNewCenterColor(this.f39966q);
                        this.f39970u.changeOpacityBarColor(this.f39966q);
                    }
                    invalidate();
                }
            }
        }
        return true;
    }

    public void setColor(int i) {
        int i2;
        int i3;
        if (this.f39971v) {
            i2 = this.f39955f + this.f39958i;
            i3 = this.f39954e;
        } else {
            i2 = this.f39954e;
            i3 = this.f39955f + this.f39958i;
        }
        Color.colorToHSV(i, this.f39967r);
        LinearGradient linearGradient = new LinearGradient(this.f39958i, 0.0f, i2, i3, new int[]{-1, i, -16777216}, (float[]) null, Shader.TileMode.CLAMP);
        this.f39964o = linearGradient;
        this.f39960k.setShader(linearGradient);
        m31487a(this.f39959j);
        this.f39961l.setColor(this.f39966q);
        ColorWheelView colorWheelView = this.f39970u;
        if (colorWheelView != null) {
            colorWheelView.setNewCenterColor(this.f39966q);
            if (this.f39970u.hasOpacityBar()) {
                this.f39970u.changeOpacityBarColor(this.f39966q);
            }
        }
        invalidate();
    }

    public void setColorPicker(ColorWheelView colorWheelView) {
        this.f39970u = colorWheelView;
    }

    public void setSaturation(float f) {
        int round = Math.round((this.f39969t * f) + this.f39958i);
        this.f39959j = round;
        m31487a(round);
        this.f39961l.setColor(this.f39966q);
        ColorWheelView colorWheelView = this.f39970u;
        if (colorWheelView != null) {
            colorWheelView.setNewCenterColor(this.f39966q);
            this.f39970u.changeOpacityBarColor(this.f39966q);
        }
        invalidate();
    }

    public void setValue(float f) {
        int round = Math.round((this.f39969t * (1.0f - f)) + this.f39958i + (this.f39955f / 2));
        this.f39959j = round;
        m31487a(round);
        this.f39961l.setColor(this.f39966q);
        ColorWheelView colorWheelView = this.f39970u;
        if (colorWheelView != null) {
            colorWheelView.setNewCenterColor(this.f39966q);
            this.f39970u.changeOpacityBarColor(this.f39966q);
        }
        invalidate();
    }

    public SVBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39963n = new RectF();
        this.f39967r = new float[3];
        this.f39970u = null;
        m31488b(attributeSet, 0);
    }

    public SVBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f39963n = new RectF();
        this.f39967r = new float[3];
        this.f39970u = null;
        m31488b(attributeSet, i);
    }
}
