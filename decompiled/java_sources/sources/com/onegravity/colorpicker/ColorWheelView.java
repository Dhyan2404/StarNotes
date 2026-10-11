package com.onegravity.colorpicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.onegravity.utils.AlphaPatternDrawable;

/* loaded from: classes7.dex */
public class ColorWheelView extends View {

    /* renamed from: F0 */
    public static final String f39861F0 = "parent";

    /* renamed from: G0 */
    public static final String f39862G0 = "angle";

    /* renamed from: H0 */
    public static final String f39863H0 = "color";

    /* renamed from: I0 */
    public static final String f39864I0 = "showColor";

    /* renamed from: J0 */
    public static final int[] f39865J0 = {-65536, -65281, -16776961, -16711681, -16711936, -256, -65536};

    /* renamed from: A0 */
    public OnColorSelectedListener f39866A0;

    /* renamed from: B0 */
    public int f39867B0;

    /* renamed from: C0 */
    public int f39868C0;

    /* renamed from: D0 */
    public AlphaPatternDrawable f39869D0;

    /* renamed from: E0 */
    public boolean f39870E0;

    /* renamed from: J */
    public float f39871J;

    /* renamed from: O */
    public float f39872O;

    /* renamed from: Q */
    public float f39873Q;

    /* renamed from: e */
    public Paint f39874e;

    /* renamed from: f */
    public Paint f39875f;

    /* renamed from: g */
    public Paint f39876g;

    /* renamed from: h */
    public int f39877h;

    /* renamed from: i */
    public int f39878i;

    /* renamed from: j */
    public int f39879j;

    /* renamed from: k */
    public int f39880k;

    /* renamed from: k0 */
    public Paint f39881k0;

    /* renamed from: l */
    public int f39882l;

    /* renamed from: m */
    public int f39883m;

    /* renamed from: n */
    public int f39884n;

    /* renamed from: o */
    public int f39885o;

    /* renamed from: p */
    public int f39886p;

    /* renamed from: q */
    public final RectF f39887q;

    /* renamed from: q0 */
    public Paint f39888q0;

    /* renamed from: r */
    public final RectF f39889r;

    /* renamed from: s */
    public final Rect f39890s;

    /* renamed from: t */
    public final Path f39891t;

    /* renamed from: t0 */
    public Paint f39892t0;

    /* renamed from: u */
    public boolean f39893u;

    /* renamed from: u0 */
    public final float[] f39894u0;

    /* renamed from: v */
    public int f39895v;

    /* renamed from: v0 */
    public SVBar f39896v0;

    /* renamed from: w */
    public int f39897w;

    /* renamed from: w0 */
    public OpacityBar f39898w0;

    /* renamed from: x */
    public boolean f39899x;

    /* renamed from: x0 */
    public SaturationBar f39900x0;

    /* renamed from: y */
    public int f39901y;

    /* renamed from: y0 */
    public ValueBar f39902y0;

    /* renamed from: z */
    public float f39903z;

    /* renamed from: z0 */
    public OnColorChangedListener f39904z0;

    /* loaded from: classes7.dex */
    public interface OnColorSelectedListener {
        void onColorSelected(int i);
    }

    public ColorWheelView(Context context) {
        super(context);
        this.f39887q = new RectF();
        this.f39889r = new RectF();
        this.f39890s = new Rect();
        this.f39891t = new Path();
        this.f39893u = false;
        this.f39894u0 = new float[3];
        this.f39896v0 = null;
        this.f39898w0 = null;
        this.f39900x0 = null;
        this.f39902y0 = null;
        m31472f(context, null, 0);
    }

    /* renamed from: a */
    public final int m31467a(int i, int i2, float f) {
        return i + Math.round(f * (i2 - i));
    }

    public void addOpacityBar(OpacityBar opacityBar) {
        this.f39898w0 = opacityBar;
        opacityBar.setColorPicker(this);
        this.f39898w0.setColor(this.f39895v);
    }

    public void addSVBar(SVBar sVBar) {
        this.f39896v0 = sVBar;
        sVBar.setColorPicker(this);
        this.f39896v0.setColor(this.f39895v);
    }

    public void addSaturationBar(SaturationBar saturationBar) {
        this.f39900x0 = saturationBar;
        saturationBar.setColorPicker(this);
        this.f39900x0.setColor(this.f39895v);
    }

    public void addValueBar(ValueBar valueBar) {
        this.f39902y0 = valueBar;
        valueBar.setColorPicker(this);
        this.f39902y0.setColor(this.f39895v);
    }

    /* renamed from: b */
    public final int m31468b(float f) {
        float f2 = (float) (f / 6.283185307179586d);
        if (f2 < 0.0f) {
            f2 += 1.0f;
        }
        if (f2 <= 0.0f) {
            int i = f39865J0[0];
            this.f39895v = i;
            return i;
        }
        if (f2 >= 1.0f) {
            int[] iArr = f39865J0;
            this.f39895v = iArr[iArr.length - 1];
            return iArr[iArr.length - 1];
        }
        int[] iArr2 = f39865J0;
        float length = f2 * (iArr2.length - 1);
        int i2 = (int) length;
        float f3 = length - i2;
        int i3 = iArr2[i2];
        int i4 = iArr2[i2 + 1];
        int m31467a = m31467a(Color.alpha(i3), Color.alpha(i4), f3);
        int m31467a2 = m31467a(Color.red(i3), Color.red(i4), f3);
        int m31467a3 = m31467a(Color.green(i3), Color.green(i4), f3);
        int m31467a4 = m31467a(Color.blue(i3), Color.blue(i4), f3);
        this.f39895v = Color.argb(m31467a, m31467a2, m31467a3, m31467a4);
        return Color.argb(m31467a, m31467a2, m31467a3, m31467a4);
    }

    /* renamed from: c */
    public final float[] m31469c(float f) {
        double d = f;
        return new float[]{(float) (this.f39878i * Math.cos(d)), (float) (this.f39878i * Math.sin(d))};
    }

    public void changeOpacityBarColor(int i) {
        OpacityBar opacityBar = this.f39898w0;
        if (opacityBar != null) {
            opacityBar.setColor(i);
        }
    }

    public void changeSaturationBarColor(int i) {
        SaturationBar saturationBar = this.f39900x0;
        if (saturationBar != null) {
            saturationBar.setColor(i);
        }
    }

    public void changeValueBarColor(int i) {
        ValueBar valueBar = this.f39902y0;
        if (valueBar != null) {
            valueBar.setColor(i);
        }
    }

    /* renamed from: d */
    public final float m31470d(int i) {
        Color.colorToHSV(i, new float[3]);
        return (float) Math.toRadians(-r0[0]);
    }

    /* renamed from: e */
    public final void m31471e() {
        setLayerType(1, null);
    }

    /* renamed from: f */
    public final void m31472f(Context context, AttributeSet attributeSet, int i) {
        m31471e();
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C7020R.styleable.ColorWheelView, i, 0);
        Resources resources = getContext().getResources();
        this.f39870E0 = obtainStyledAttributes.getBoolean(C7020R.styleable.ColorWheelView_color_wheel_enabled, true);
        this.f39877h = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorWheelView_color_wheel_thickness, resources.getDimensionPixelSize(C7020R.dimen.color_wheel_thickness));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorWheelView_color_wheel_radius, resources.getDimensionPixelSize(C7020R.dimen.color_wheel_radius));
        this.f39878i = dimensionPixelSize;
        this.f39879j = dimensionPixelSize;
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorWheelView_color_center_radius, resources.getDimensionPixelSize(C7020R.dimen.color_center_radius));
        this.f39880k = dimensionPixelSize2;
        this.f39882l = dimensionPixelSize2;
        int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorWheelView_color_center_halo_radius, resources.getDimensionPixelSize(C7020R.dimen.color_center_halo_radius));
        this.f39883m = dimensionPixelSize3;
        this.f39884n = dimensionPixelSize3;
        this.f39885o = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorWheelView_color_pointer_radius, resources.getDimensionPixelSize(C7020R.dimen.color_pointer_radius));
        this.f39886p = obtainStyledAttributes.getDimensionPixelSize(C7020R.styleable.ColorWheelView_color_pointer_halo_radius, resources.getDimensionPixelSize(C7020R.dimen.color_pointer_halo_radius));
        obtainStyledAttributes.recycle();
        this.f39873Q = -1.5707964f;
        SweepGradient sweepGradient = new SweepGradient(0.0f, 0.0f, f39865J0, (float[]) null);
        Paint paint = new Paint(1);
        this.f39874e = paint;
        paint.setShader(sweepGradient);
        this.f39874e.setStyle(Paint.Style.STROKE);
        this.f39874e.setStrokeWidth(this.f39877h);
        Paint paint2 = new Paint(1);
        this.f39875f = paint2;
        paint2.setColor(-16777216);
        this.f39875f.setAlpha(80);
        Paint paint3 = new Paint(1);
        this.f39876g = paint3;
        paint3.setColor(m31468b(this.f39873Q));
        Paint paint4 = new Paint(1);
        this.f39888q0 = paint4;
        paint4.setColor(m31468b(this.f39873Q));
        this.f39888q0.setStyle(Paint.Style.FILL);
        Paint paint5 = new Paint(1);
        this.f39881k0 = paint5;
        paint5.setColor(m31468b(this.f39873Q));
        this.f39881k0.setStyle(Paint.Style.FILL);
        Paint paint6 = new Paint(1);
        this.f39892t0 = paint6;
        paint6.setColor(-16777216);
        this.f39892t0.setAlpha(0);
        this.f39901y = m31468b(this.f39873Q);
        this.f39897w = m31468b(this.f39873Q);
        this.f39899x = true;
        this.f39869D0 = new AlphaPatternDrawable(context);
    }

    public int getColor() {
        return this.f39901y;
    }

    public int getOldCenterColor() {
        return this.f39897w;
    }

    public OnColorChangedListener getOnColorChangedListener() {
        return this.f39904z0;
    }

    public OnColorSelectedListener getOnColorSelectedListener() {
        return this.f39866A0;
    }

    public boolean getShowOldCenterColor() {
        return this.f39899x;
    }

    public boolean hasOpacityBar() {
        return this.f39898w0 != null;
    }

    public boolean hasSVBar() {
        return this.f39896v0 != null;
    }

    public boolean hasSaturationBar() {
        return this.f39900x0 != null;
    }

    public boolean hasValueBar() {
        return this.f39902y0 != null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f = this.f39903z;
        canvas.translate(f, f);
        if (this.f39870E0) {
            canvas.drawOval(this.f39887q, this.f39874e);
            float[] m31469c = m31469c(this.f39873Q);
            canvas.drawCircle(m31469c[0], m31469c[1], this.f39886p, this.f39875f);
            canvas.drawCircle(m31469c[0], m31469c[1], this.f39885o, this.f39876g);
            canvas.drawCircle(0.0f, 0.0f, this.f39883m, this.f39892t0);
        }
        if (this.f39869D0 != null) {
            canvas.save();
            canvas.clipPath(this.f39891t);
            this.f39869D0.setBounds(this.f39890s);
            this.f39869D0.draw(canvas);
            canvas.restore();
        }
        if (!this.f39899x) {
            canvas.drawArc(this.f39889r, 0.0f, 360.0f, true, this.f39888q0);
        } else {
            canvas.drawArc(this.f39889r, 90.0f, 180.0f, true, this.f39881k0);
            canvas.drawArc(this.f39889r, 270.0f, 180.0f, true, this.f39888q0);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = (this.f39879j + this.f39886p) * 2;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(i3, size) : i3;
        }
        if (mode2 == 1073741824) {
            i3 = size2;
        } else if (mode2 == Integer.MIN_VALUE) {
            i3 = Math.min(i3, size2);
        }
        int min = Math.min(size, i3);
        int i4 = ((min / 2) - this.f39877h) - this.f39886p;
        this.f39878i = i4;
        this.f39887q.set(-i4, -i4, i4, i4);
        float f = this.f39882l;
        int i5 = this.f39878i;
        int i6 = this.f39879j;
        int i7 = (int) (f * (i5 / i6));
        this.f39880k = i7;
        this.f39883m = (int) (this.f39884n * (i5 / i6));
        this.f39889r.set(-i7, -i7, i7, i7);
        Rect rect = this.f39890s;
        int i8 = this.f39880k;
        rect.set(-i8, -i8, i8, i8);
        this.f39891t.reset();
        this.f39891t.addCircle(0.0f, 0.0f, this.f39880k - 0.5f, Path.Direction.CW);
        if (!this.f39870E0) {
            min = this.f39880k * 2;
        }
        setMeasuredDimension(min, min);
        this.f39903z = min * 0.5f;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("parent"));
        this.f39873Q = bundle.getFloat("angle");
        setOldCenterColor(bundle.getInt("color"));
        this.f39899x = bundle.getBoolean(f39864I0);
        int m31468b = m31468b(this.f39873Q);
        this.f39876g.setColor(m31468b);
        setNewCenterColor(m31468b);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("parent", onSaveInstanceState);
        bundle.putFloat("angle", this.f39873Q);
        bundle.putInt("color", this.f39897w);
        bundle.putBoolean(f39864I0, this.f39899x);
        return bundle;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        OnColorSelectedListener onColorSelectedListener;
        int i2;
        if (!this.f39870E0) {
            return super.onTouchEvent(motionEvent);
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        float x = motionEvent.getX() - this.f39903z;
        float y = motionEvent.getY() - this.f39903z;
        int action = motionEvent.getAction();
        if (action == 0) {
            float[] m31469c = m31469c(this.f39873Q);
            float f = m31469c[0];
            int i3 = this.f39886p;
            if (x >= f - i3 && x <= i3 + f) {
                float f2 = m31469c[1];
                if (y >= f2 - i3 && y <= i3 + f2) {
                    this.f39871J = x - f;
                    this.f39872O = y - f2;
                    this.f39893u = true;
                    invalidate();
                }
            }
            int i4 = this.f39880k;
            if (x < (-i4) || x > i4 || y < (-i4) || y > i4 || !this.f39899x) {
                getParent().requestDisallowInterceptTouchEvent(false);
                return false;
            }
            this.f39892t0.setAlpha(80);
            setColor(getOldCenterColor());
            invalidate();
        } else if (action == 1) {
            this.f39893u = false;
            this.f39892t0.setAlpha(0);
            OnColorSelectedListener onColorSelectedListener2 = this.f39866A0;
            if (onColorSelectedListener2 != null && (i = this.f39901y) != this.f39868C0) {
                onColorSelectedListener2.onColorSelected(i);
                this.f39868C0 = this.f39901y;
            }
            invalidate();
        } else if (action != 2) {
            if (action == 3 && (onColorSelectedListener = this.f39866A0) != null && (i2 = this.f39901y) != this.f39868C0) {
                onColorSelectedListener.onColorSelected(i2);
                this.f39868C0 = this.f39901y;
            }
        } else {
            if (!this.f39893u) {
                getParent().requestDisallowInterceptTouchEvent(false);
                return false;
            }
            float atan2 = (float) Math.atan2(y - this.f39872O, x - this.f39871J);
            this.f39873Q = atan2;
            this.f39876g.setColor(m31468b(atan2));
            int m31468b = m31468b(this.f39873Q);
            this.f39901y = m31468b;
            setNewCenterColor(m31468b);
            OpacityBar opacityBar = this.f39898w0;
            if (opacityBar != null) {
                opacityBar.setColor(this.f39895v);
            }
            ValueBar valueBar = this.f39902y0;
            if (valueBar != null) {
                valueBar.setColor(this.f39895v);
            }
            SaturationBar saturationBar = this.f39900x0;
            if (saturationBar != null) {
                saturationBar.setColor(this.f39895v);
            }
            SVBar sVBar = this.f39896v0;
            if (sVBar != null) {
                sVBar.setColor(this.f39895v);
            }
            invalidate();
        }
        return true;
    }

    public void setColor(int i) {
        float m31470d = m31470d(i);
        this.f39873Q = m31470d;
        this.f39876g.setColor(m31468b(m31470d));
        this.f39888q0.setColor(m31468b(this.f39873Q));
        OpacityBar opacityBar = this.f39898w0;
        if (opacityBar != null) {
            opacityBar.setColor(this.f39895v);
            this.f39898w0.setOpacity(Color.alpha(i));
        }
        if (this.f39896v0 != null) {
            Color.colorToHSV(i, this.f39894u0);
            this.f39896v0.setColor(this.f39895v);
            float[] fArr = this.f39894u0;
            float f = fArr[1];
            float f2 = fArr[2];
            if (f < f2) {
                this.f39896v0.setSaturation(f);
            } else {
                this.f39896v0.setValue(f2);
            }
        }
        if (this.f39900x0 != null) {
            Color.colorToHSV(i, this.f39894u0);
            this.f39900x0.setColor(this.f39895v);
            this.f39900x0.setSaturation(this.f39894u0[1]);
        }
        ValueBar valueBar = this.f39902y0;
        if (valueBar != null && this.f39900x0 == null) {
            Color.colorToHSV(i, this.f39894u0);
            this.f39902y0.setColor(this.f39895v);
            this.f39902y0.setValue(this.f39894u0[2]);
        } else if (valueBar != null) {
            Color.colorToHSV(i, this.f39894u0);
            this.f39902y0.setValue(this.f39894u0[2]);
        }
        setNewCenterColor(i);
        invalidate();
    }

    public void setNewCenterColor(int i) {
        this.f39901y = i;
        this.f39888q0.setColor(i);
        if (this.f39897w == 0) {
            this.f39897w = i;
            this.f39881k0.setColor(i);
        }
        OnColorChangedListener onColorChangedListener = this.f39904z0;
        if (onColorChangedListener != null && i != this.f39867B0) {
            onColorChangedListener.onColorChanged(i);
            this.f39867B0 = i;
        }
        invalidate();
    }

    public void setOldCenterColor(int i) {
        this.f39897w = i;
        this.f39881k0.setColor(i);
        invalidate();
    }

    public void setOnColorChangedListener(OnColorChangedListener onColorChangedListener) {
        this.f39904z0 = onColorChangedListener;
    }

    public void setOnColorSelectedListener(OnColorSelectedListener onColorSelectedListener) {
        this.f39866A0 = onColorSelectedListener;
    }

    public void setShowOldCenterColor(boolean z) {
        this.f39899x = z;
        invalidate();
    }

    public ColorWheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39887q = new RectF();
        this.f39889r = new RectF();
        this.f39890s = new Rect();
        this.f39891t = new Path();
        this.f39893u = false;
        this.f39894u0 = new float[3];
        this.f39896v0 = null;
        this.f39898w0 = null;
        this.f39900x0 = null;
        this.f39902y0 = null;
        m31472f(context, attributeSet, 0);
    }

    public ColorWheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f39887q = new RectF();
        this.f39889r = new RectF();
        this.f39890s = new Rect();
        this.f39891t = new Path();
        this.f39893u = false;
        this.f39894u0 = new float[3];
        this.f39896v0 = null;
        this.f39898w0 = null;
        this.f39900x0 = null;
        this.f39902y0 = null;
        m31472f(context, attributeSet, i);
    }
}
