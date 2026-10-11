package androidx.swiperefreshlayout.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class CircularProgressDrawable extends Drawable implements Animatable {
    public static final int DEFAULT = 1;

    /* renamed from: J */
    public static final float f10351J = 0.01f;
    public static final int LARGE = 0;

    /* renamed from: O */
    public static final float f10352O = 0.20999998f;

    /* renamed from: m */
    public static final float f10355m = 11.0f;

    /* renamed from: n */
    public static final float f10356n = 3.0f;

    /* renamed from: o */
    public static final int f10357o = 12;

    /* renamed from: p */
    public static final int f10358p = 6;

    /* renamed from: q */
    public static final float f10359q = 7.5f;

    /* renamed from: r */
    public static final float f10360r = 2.5f;

    /* renamed from: s */
    public static final int f10361s = 10;

    /* renamed from: t */
    public static final int f10362t = 5;

    /* renamed from: v */
    public static final float f10364v = 0.75f;

    /* renamed from: w */
    public static final float f10365w = 0.5f;

    /* renamed from: x */
    public static final int f10366x = 1332;

    /* renamed from: y */
    public static final float f10367y = 216.0f;

    /* renamed from: z */
    public static final float f10368z = 0.8f;

    /* renamed from: e */
    public final C1450c f10369e;

    /* renamed from: f */
    public float f10370f;

    /* renamed from: g */
    public Resources f10371g;

    /* renamed from: h */
    public Animator f10372h;

    /* renamed from: i */
    public float f10373i;

    /* renamed from: j */
    public boolean f10374j;

    /* renamed from: k */
    public static final Interpolator f10353k = new LinearInterpolator();

    /* renamed from: l */
    public static final Interpolator f10354l = new FastOutSlowInInterpolator();

    /* renamed from: u */
    public static final int[] f10363u = {-16777216};

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes3.dex */
    public @interface ProgressDrawableSize {
    }

    /* renamed from: androidx.swiperefreshlayout.widget.CircularProgressDrawable$a */
    /* loaded from: classes3.dex */
    public class C1448a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: e */
        public final /* synthetic */ C1450c f10375e;

        public C1448a(C1450c c1450c) {
            this.f10375e = c1450c;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            CircularProgressDrawable.this.m6445h(floatValue, this.f10375e);
            CircularProgressDrawable.this.m6439b(floatValue, this.f10375e, false);
            CircularProgressDrawable.this.invalidateSelf();
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.CircularProgressDrawable$b */
    /* loaded from: classes3.dex */
    public class C1449b implements Animator.AnimatorListener {

        /* renamed from: e */
        public final /* synthetic */ C1450c f10377e;

        public C1449b(C1450c c1450c) {
            this.f10377e = c1450c;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            CircularProgressDrawable.this.m6439b(1.0f, this.f10377e, true);
            this.f10377e.m6458M();
            this.f10377e.m6480v();
            CircularProgressDrawable circularProgressDrawable = CircularProgressDrawable.this;
            if (!circularProgressDrawable.f10374j) {
                circularProgressDrawable.f10373i += 1.0f;
                return;
            }
            circularProgressDrawable.f10374j = false;
            animator.cancel();
            animator.setDuration(1332L);
            animator.start();
            this.f10377e.m6454I(false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            CircularProgressDrawable.this.f10373i = 0.0f;
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.CircularProgressDrawable$c */
    /* loaded from: classes3.dex */
    public static class C1450c {

        /* renamed from: a */
        public final RectF f10379a = new RectF();

        /* renamed from: b */
        public final Paint f10380b;

        /* renamed from: c */
        public final Paint f10381c;

        /* renamed from: d */
        public final Paint f10382d;

        /* renamed from: e */
        public float f10383e;

        /* renamed from: f */
        public float f10384f;

        /* renamed from: g */
        public float f10385g;

        /* renamed from: h */
        public float f10386h;

        /* renamed from: i */
        public int[] f10387i;

        /* renamed from: j */
        public int f10388j;

        /* renamed from: k */
        public float f10389k;

        /* renamed from: l */
        public float f10390l;

        /* renamed from: m */
        public float f10391m;

        /* renamed from: n */
        public boolean f10392n;

        /* renamed from: o */
        public Path f10393o;

        /* renamed from: p */
        public float f10394p;

        /* renamed from: q */
        public float f10395q;

        /* renamed from: r */
        public int f10396r;

        /* renamed from: s */
        public int f10397s;

        /* renamed from: t */
        public int f10398t;

        /* renamed from: u */
        public int f10399u;

        public C1450c() {
            Paint paint = new Paint();
            this.f10380b = paint;
            Paint paint2 = new Paint();
            this.f10381c = paint2;
            Paint paint3 = new Paint();
            this.f10382d = paint3;
            this.f10383e = 0.0f;
            this.f10384f = 0.0f;
            this.f10385g = 0.0f;
            this.f10386h = 5.0f;
            this.f10394p = 1.0f;
            this.f10398t = 255;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        /* renamed from: A */
        public void m6446A(int i) {
            this.f10382d.setColor(i);
        }

        /* renamed from: B */
        public void m6447B(float f) {
            this.f10395q = f;
        }

        /* renamed from: C */
        public void m6448C(int i) {
            this.f10399u = i;
        }

        /* renamed from: D */
        public void m6449D(ColorFilter colorFilter) {
            this.f10380b.setColorFilter(colorFilter);
        }

        /* renamed from: E */
        public void m6450E(int i) {
            this.f10388j = i;
            this.f10399u = this.f10387i[i];
        }

        /* renamed from: F */
        public void m6451F(@NonNull int[] iArr) {
            this.f10387i = iArr;
            m6450E(0);
        }

        /* renamed from: G */
        public void m6452G(float f) {
            this.f10384f = f;
        }

        /* renamed from: H */
        public void m6453H(float f) {
            this.f10385g = f;
        }

        /* renamed from: I */
        public void m6454I(boolean z) {
            if (this.f10392n != z) {
                this.f10392n = z;
            }
        }

        /* renamed from: J */
        public void m6455J(float f) {
            this.f10383e = f;
        }

        /* renamed from: K */
        public void m6456K(Paint.Cap cap) {
            this.f10380b.setStrokeCap(cap);
        }

        /* renamed from: L */
        public void m6457L(float f) {
            this.f10386h = f;
            this.f10380b.setStrokeWidth(f);
        }

        /* renamed from: M */
        public void m6458M() {
            this.f10389k = this.f10383e;
            this.f10390l = this.f10384f;
            this.f10391m = this.f10385g;
        }

        /* renamed from: a */
        public void m6459a(Canvas canvas, Rect rect) {
            RectF rectF = this.f10379a;
            float f = this.f10395q;
            float f2 = (this.f10386h / 2.0f) + f;
            if (f <= 0.0f) {
                f2 = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f10396r * this.f10394p) / 2.0f, this.f10386h / 2.0f);
            }
            rectF.set(rect.centerX() - f2, rect.centerY() - f2, rect.centerX() + f2, rect.centerY() + f2);
            float f3 = this.f10383e;
            float f4 = this.f10385g;
            float f5 = (f3 + f4) * 360.0f;
            float f6 = ((this.f10384f + f4) * 360.0f) - f5;
            this.f10380b.setColor(this.f10399u);
            this.f10380b.setAlpha(this.f10398t);
            float f7 = this.f10386h / 2.0f;
            rectF.inset(f7, f7);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f10382d);
            float f8 = -f7;
            rectF.inset(f8, f8);
            canvas.drawArc(rectF, f5, f6, false, this.f10380b);
            m6460b(canvas, f5, f6, rectF);
        }

        /* renamed from: b */
        public void m6460b(Canvas canvas, float f, float f2, RectF rectF) {
            if (this.f10392n) {
                Path path = this.f10393o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f10393o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f3 = (this.f10396r * this.f10394p) / 2.0f;
                this.f10393o.moveTo(0.0f, 0.0f);
                this.f10393o.lineTo(this.f10396r * this.f10394p, 0.0f);
                Path path3 = this.f10393o;
                float f4 = this.f10396r;
                float f5 = this.f10394p;
                path3.lineTo((f4 * f5) / 2.0f, this.f10397s * f5);
                this.f10393o.offset((min + rectF.centerX()) - f3, rectF.centerY() + (this.f10386h / 2.0f));
                this.f10393o.close();
                this.f10381c.setColor(this.f10399u);
                this.f10381c.setAlpha(this.f10398t);
                canvas.save();
                canvas.rotate(f + f2, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f10393o, this.f10381c);
                canvas.restore();
            }
        }

        /* renamed from: c */
        public int m6461c() {
            return this.f10398t;
        }

        /* renamed from: d */
        public float m6462d() {
            return this.f10397s;
        }

        /* renamed from: e */
        public float m6463e() {
            return this.f10394p;
        }

        /* renamed from: f */
        public float m6464f() {
            return this.f10396r;
        }

        /* renamed from: g */
        public int m6465g() {
            return this.f10382d.getColor();
        }

        /* renamed from: h */
        public float m6466h() {
            return this.f10395q;
        }

        /* renamed from: i */
        public int[] m6467i() {
            return this.f10387i;
        }

        /* renamed from: j */
        public float m6468j() {
            return this.f10384f;
        }

        /* renamed from: k */
        public int m6469k() {
            return this.f10387i[m6470l()];
        }

        /* renamed from: l */
        public int m6470l() {
            return (this.f10388j + 1) % this.f10387i.length;
        }

        /* renamed from: m */
        public float m6471m() {
            return this.f10385g;
        }

        /* renamed from: n */
        public boolean m6472n() {
            return this.f10392n;
        }

        /* renamed from: o */
        public float m6473o() {
            return this.f10383e;
        }

        /* renamed from: p */
        public int m6474p() {
            return this.f10387i[this.f10388j];
        }

        /* renamed from: q */
        public float m6475q() {
            return this.f10390l;
        }

        /* renamed from: r */
        public float m6476r() {
            return this.f10391m;
        }

        /* renamed from: s */
        public float m6477s() {
            return this.f10389k;
        }

        /* renamed from: t */
        public Paint.Cap m6478t() {
            return this.f10380b.getStrokeCap();
        }

        /* renamed from: u */
        public float m6479u() {
            return this.f10386h;
        }

        /* renamed from: v */
        public void m6480v() {
            m6450E(m6470l());
        }

        /* renamed from: w */
        public void m6481w() {
            this.f10389k = 0.0f;
            this.f10390l = 0.0f;
            this.f10391m = 0.0f;
            m6455J(0.0f);
            m6452G(0.0f);
            m6453H(0.0f);
        }

        /* renamed from: x */
        public void m6482x(int i) {
            this.f10398t = i;
        }

        /* renamed from: y */
        public void m6483y(float f, float f2) {
            this.f10396r = (int) f;
            this.f10397s = (int) f2;
        }

        /* renamed from: z */
        public void m6484z(float f) {
            if (f != this.f10394p) {
                this.f10394p = f;
            }
        }
    }

    public CircularProgressDrawable(@NonNull Context context) {
        this.f10371g = ((Context) Preconditions.checkNotNull(context)).getResources();
        C1450c c1450c = new C1450c();
        this.f10369e = c1450c;
        c1450c.m6451F(f10363u);
        setStrokeWidth(2.5f);
        m6444g();
    }

    /* renamed from: a */
    public final void m6438a(float f, C1450c c1450c) {
        m6445h(f, c1450c);
        float floor = (float) (Math.floor(c1450c.m6476r() / 0.8f) + 1.0d);
        c1450c.m6455J(c1450c.m6477s() + (((c1450c.m6475q() - 0.01f) - c1450c.m6477s()) * f));
        c1450c.m6452G(c1450c.m6475q());
        c1450c.m6453H(c1450c.m6476r() + ((floor - c1450c.m6476r()) * f));
    }

    /* renamed from: b */
    public void m6439b(float f, C1450c c1450c, boolean z) {
        float interpolation;
        float f2;
        if (this.f10374j) {
            m6438a(f, c1450c);
            return;
        }
        if (f != 1.0f || z) {
            float m6476r = c1450c.m6476r();
            if (f < 0.5f) {
                interpolation = c1450c.m6477s();
                f2 = (f10354l.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float m6477s = c1450c.m6477s() + 0.79f;
                interpolation = m6477s - (((1.0f - f10354l.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                f2 = m6477s;
            }
            float f3 = m6476r + (0.20999998f * f);
            float f4 = (f + this.f10373i) * 216.0f;
            c1450c.m6455J(interpolation);
            c1450c.m6452G(f2);
            c1450c.m6453H(f3);
            m6442e(f4);
        }
    }

    /* renamed from: c */
    public final int m6440c(float f, int i, int i2) {
        return ((((i >> 24) & 255) + ((int) ((((i2 >> 24) & 255) - r5) * f))) << 24) | ((((i >> 16) & 255) + ((int) ((((i2 >> 16) & 255) - r0) * f))) << 16) | ((((i >> 8) & 255) + ((int) ((((i2 >> 8) & 255) - r1) * f))) << 8) | ((i & 255) + ((int) (f * ((i2 & 255) - r7))));
    }

    /* renamed from: d */
    public final float m6441d() {
        return this.f10370f;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f10370f, bounds.exactCenterX(), bounds.exactCenterY());
        this.f10369e.m6459a(canvas, bounds);
        canvas.restore();
    }

    /* renamed from: e */
    public final void m6442e(float f) {
        this.f10370f = f;
    }

    /* renamed from: f */
    public final void m6443f(float f, float f2, float f3, float f4) {
        C1450c c1450c = this.f10369e;
        float f5 = this.f10371g.getDisplayMetrics().density;
        c1450c.m6457L(f2 * f5);
        c1450c.m6447B(f * f5);
        c1450c.m6450E(0);
        c1450c.m6483y(f3 * f5, f4 * f5);
    }

    /* renamed from: g */
    public final void m6444g() {
        C1450c c1450c = this.f10369e;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C1448a(c1450c));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f10353k);
        ofFloat.addListener(new C1449b(c1450c));
        this.f10372h = ofFloat;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f10369e.m6461c();
    }

    public boolean getArrowEnabled() {
        return this.f10369e.m6472n();
    }

    public float getArrowHeight() {
        return this.f10369e.m6462d();
    }

    public float getArrowScale() {
        return this.f10369e.m6463e();
    }

    public float getArrowWidth() {
        return this.f10369e.m6464f();
    }

    public int getBackgroundColor() {
        return this.f10369e.m6465g();
    }

    public float getCenterRadius() {
        return this.f10369e.m6466h();
    }

    @NonNull
    public int[] getColorSchemeColors() {
        return this.f10369e.m6467i();
    }

    public float getEndTrim() {
        return this.f10369e.m6468j();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public float getProgressRotation() {
        return this.f10369e.m6471m();
    }

    public float getStartTrim() {
        return this.f10369e.m6473o();
    }

    @NonNull
    public Paint.Cap getStrokeCap() {
        return this.f10369e.m6478t();
    }

    public float getStrokeWidth() {
        return this.f10369e.m6479u();
    }

    /* renamed from: h */
    public void m6445h(float f, C1450c c1450c) {
        if (f > 0.75f) {
            c1450c.m6448C(m6440c((f - 0.75f) / 0.25f, c1450c.m6474p(), c1450c.m6469k()));
        } else {
            c1450c.m6448C(c1450c.m6474p());
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f10372h.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f10369e.m6482x(i);
        invalidateSelf();
    }

    public void setArrowDimensions(float f, float f2) {
        this.f10369e.m6483y(f, f2);
        invalidateSelf();
    }

    public void setArrowEnabled(boolean z) {
        this.f10369e.m6454I(z);
        invalidateSelf();
    }

    public void setArrowScale(float f) {
        this.f10369e.m6484z(f);
        invalidateSelf();
    }

    public void setBackgroundColor(int i) {
        this.f10369e.m6446A(i);
        invalidateSelf();
    }

    public void setCenterRadius(float f) {
        this.f10369e.m6447B(f);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f10369e.m6449D(colorFilter);
        invalidateSelf();
    }

    public void setColorSchemeColors(@NonNull int... iArr) {
        this.f10369e.m6451F(iArr);
        this.f10369e.m6450E(0);
        invalidateSelf();
    }

    public void setProgressRotation(float f) {
        this.f10369e.m6453H(f);
        invalidateSelf();
    }

    public void setStartEndTrim(float f, float f2) {
        this.f10369e.m6455J(f);
        this.f10369e.m6452G(f2);
        invalidateSelf();
    }

    public void setStrokeCap(@NonNull Paint.Cap cap) {
        this.f10369e.m6456K(cap);
        invalidateSelf();
    }

    public void setStrokeWidth(float f) {
        this.f10369e.m6457L(f);
        invalidateSelf();
    }

    public void setStyle(int i) {
        if (i == 0) {
            m6443f(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            m6443f(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f10372h.cancel();
        this.f10369e.m6458M();
        if (this.f10369e.m6468j() != this.f10369e.m6473o()) {
            this.f10374j = true;
            this.f10372h.setDuration(666L);
            this.f10372h.start();
        } else {
            this.f10369e.m6450E(0);
            this.f10369e.m6481w();
            this.f10372h.setDuration(1332L);
            this.f10372h.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f10372h.cancel();
        m6442e(0.0f);
        this.f10369e.m6454I(false);
        this.f10369e.m6450E(0);
        this.f10369e.m6481w();
        invalidateSelf();
    }
}
