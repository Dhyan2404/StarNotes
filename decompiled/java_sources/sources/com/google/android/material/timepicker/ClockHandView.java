package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.math.MathUtils;
import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class ClockHandView extends View {

    /* renamed from: z */
    public static final int f32869z = 200;

    /* renamed from: e */
    public final int f32870e;

    /* renamed from: f */
    public final TimeInterpolator f32871f;

    /* renamed from: g */
    public final ValueAnimator f32872g;

    /* renamed from: h */
    public boolean f32873h;

    /* renamed from: i */
    public float f32874i;

    /* renamed from: j */
    public float f32875j;

    /* renamed from: k */
    public boolean f32876k;

    /* renamed from: l */
    public final int f32877l;

    /* renamed from: m */
    public boolean f32878m;

    /* renamed from: n */
    public final List<OnRotateListener> f32879n;

    /* renamed from: o */
    public final int f32880o;

    /* renamed from: p */
    public final float f32881p;

    /* renamed from: q */
    public final Paint f32882q;

    /* renamed from: r */
    public final RectF f32883r;

    /* renamed from: s */
    @Px
    public final int f32884s;

    /* renamed from: t */
    public float f32885t;

    /* renamed from: u */
    public boolean f32886u;

    /* renamed from: v */
    public OnActionUpListener f32887v;

    /* renamed from: w */
    public double f32888w;

    /* renamed from: x */
    public int f32889x;

    /* renamed from: y */
    public int f32890y;

    /* loaded from: classes6.dex */
    public interface OnActionUpListener {
        void onActionUp(@FloatRange(from = 0.0d, m280to = 360.0d) float f, boolean z);
    }

    /* loaded from: classes6.dex */
    public interface OnRotateListener {
        void onRotate(@FloatRange(from = 0.0d, m280to = 360.0d) float f, boolean z);
    }

    /* renamed from: com.google.android.material.timepicker.ClockHandView$a */
    /* loaded from: classes6.dex */
    public class C5431a extends AnimatorListenerAdapter {
        public C5431a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m25390m(ValueAnimator valueAnimator) {
        m25407s(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
    }

    /* renamed from: b */
    public void m25391b(OnRotateListener onRotateListener) {
        this.f32879n.add(onRotateListener);
    }

    /* renamed from: c */
    public final void m25392c(float f, float f2) {
        this.f32890y = MathUtils.dist((float) (getWidth() / 2), (float) (getHeight() / 2), f, f2) > ((float) m25398i(2)) + ViewUtils.dpToPx(getContext(), 12) ? 1 : 2;
    }

    /* renamed from: d */
    public final void m25393d(Canvas canvas) {
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f = width;
        float m25398i = m25398i(this.f32890y);
        float cos = (((float) Math.cos(this.f32888w)) * m25398i) + f;
        float f2 = height;
        float sin = (m25398i * ((float) Math.sin(this.f32888w))) + f2;
        this.f32882q.setStrokeWidth(0.0f);
        canvas.drawCircle(cos, sin, this.f32880o, this.f32882q);
        double sin2 = Math.sin(this.f32888w);
        double cos2 = Math.cos(this.f32888w);
        this.f32882q.setStrokeWidth(this.f32884s);
        canvas.drawLine(f, f2, width + ((int) (cos2 * r7)), height + ((int) (r7 * sin2)), this.f32882q);
        canvas.drawCircle(f, f2, this.f32881p, this.f32882q);
    }

    /* renamed from: e */
    public int m25394e() {
        return this.f32890y;
    }

    /* renamed from: f */
    public RectF m25395f() {
        return this.f32883r;
    }

    /* renamed from: g */
    public final int m25396g(float f, float f2) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    @FloatRange(from = 0.0d, m280to = 360.0d)
    /* renamed from: h */
    public float m25397h() {
        return this.f32885t;
    }

    @Dimension
    /* renamed from: i */
    public final int m25398i(int i) {
        int i2 = this.f32889x;
        return i == 2 ? Math.round(i2 * 0.66f) : i2;
    }

    /* renamed from: j */
    public int m25399j() {
        return this.f32880o;
    }

    /* renamed from: k */
    public final Pair<Float, Float> m25400k(float f) {
        float m25397h = m25397h();
        if (Math.abs(m25397h - f) > 180.0f) {
            if (m25397h > 180.0f && f < 180.0f) {
                f += 360.0f;
            }
            if (m25397h < 180.0f && f > 180.0f) {
                m25397h += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(m25397h), Float.valueOf(f));
    }

    /* renamed from: l */
    public final boolean m25401l(float f, float f2, boolean z, boolean z2, boolean z3) {
        float m25396g = m25396g(f, f2);
        boolean z4 = false;
        boolean z5 = m25397h() != m25396g;
        if (z2 && z5) {
            return true;
        }
        if (!z5 && !z) {
            return false;
        }
        if (z3 && this.f32873h) {
            z4 = true;
        }
        m25406r(m25396g, z4);
        return true;
    }

    /* renamed from: n */
    public void m25402n(boolean z) {
        this.f32873h = z;
    }

    /* renamed from: o */
    public void m25403o(@Dimension int i) {
        this.f32889x = i;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m25393d(canvas);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f32872g.isRunning()) {
            return;
        }
        m25405q(m25397h());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        OnActionUpListener onActionUpListener;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (actionMasked == 0) {
            this.f32874i = x;
            this.f32875j = y;
            this.f32876k = true;
            this.f32886u = false;
            z = false;
            z2 = false;
            z3 = true;
        } else if (actionMasked == 1 || actionMasked == 2) {
            int i = (int) (x - this.f32874i);
            int i2 = (int) (y - this.f32875j);
            this.f32876k = (i * i) + (i2 * i2) > this.f32877l;
            boolean z4 = this.f32886u;
            z = actionMasked == 1;
            if (this.f32878m) {
                m25392c(x, y);
            }
            z3 = false;
            z2 = z4;
        } else {
            z = false;
            z2 = false;
            z3 = false;
        }
        boolean m25401l = m25401l(x, y, z2, z3, z) | this.f32886u;
        this.f32886u = m25401l;
        if (m25401l && z && (onActionUpListener = this.f32887v) != null) {
            onActionUpListener.onActionUp(m25396g(x, y), this.f32876k);
        }
        return true;
    }

    /* renamed from: p */
    public void m25404p(int i) {
        this.f32890y = i;
        invalidate();
    }

    /* renamed from: q */
    public void m25405q(@FloatRange(from = 0.0d, m280to = 360.0d) float f) {
        m25406r(f, false);
    }

    /* renamed from: r */
    public void m25406r(@FloatRange(from = 0.0d, m280to = 360.0d) float f, boolean z) {
        ValueAnimator valueAnimator = this.f32872g;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            m25407s(f, false);
            return;
        }
        Pair<Float, Float> m25400k = m25400k(f);
        this.f32872g.setFloatValues(((Float) m25400k.first).floatValue(), ((Float) m25400k.second).floatValue());
        this.f32872g.setDuration(this.f32870e);
        this.f32872g.setInterpolator(this.f32871f);
        this.f32872g.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.timepicker.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ClockHandView.this.m25390m(valueAnimator2);
            }
        });
        this.f32872g.addListener(new C5431a());
        this.f32872g.start();
    }

    /* renamed from: s */
    public final void m25407s(@FloatRange(from = 0.0d, m280to = 360.0d) float f, boolean z) {
        float f2 = f % 360.0f;
        this.f32885t = f2;
        this.f32888w = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float m25398i = m25398i(this.f32890y);
        float cos = width + (((float) Math.cos(this.f32888w)) * m25398i);
        float sin = height + (m25398i * ((float) Math.sin(this.f32888w)));
        RectF rectF = this.f32883r;
        int i = this.f32880o;
        rectF.set(cos - i, sin - i, cos + i, sin + i);
        Iterator<OnRotateListener> it2 = this.f32879n.iterator();
        while (it2.hasNext()) {
            it2.next().onRotate(f2, z);
        }
        invalidate();
    }

    /* renamed from: t */
    public void m25408t(boolean z) {
        if (this.f32878m && !z) {
            this.f32890y = 1;
        }
        this.f32878m = z;
        invalidate();
    }

    /* renamed from: u */
    public void m25409u(OnActionUpListener onActionUpListener) {
        this.f32887v = onActionUpListener;
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.materialClockStyle);
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f32872g = new ValueAnimator();
        this.f32879n = new ArrayList();
        Paint paint = new Paint();
        this.f32882q = paint;
        this.f32883r = new RectF();
        this.f32890y = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5139R.styleable.ClockHandView, i, C5139R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.f32870e = MotionUtils.resolveThemeDuration(context, C5139R.attr.motionDurationLong2, 200);
        this.f32871f = MotionUtils.resolveThemeInterpolator(context, C5139R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        this.f32889x = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.ClockHandView_materialCircleRadius, 0);
        this.f32880o = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.ClockHandView_selectorSize, 0);
        this.f32884s = getResources().getDimensionPixelSize(C5139R.dimen.material_clock_hand_stroke_width);
        this.f32881p = r7.getDimensionPixelSize(C5139R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(C5139R.styleable.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        m25405q(0.0f);
        this.f32877l = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        obtainStyledAttributes.recycle();
    }
}
