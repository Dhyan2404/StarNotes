package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.math.MathUtils;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimationUtilsCompat;
import com.google.android.material.C5139R;
import com.google.android.material.progressindicator.DrawingDelegate;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import java.util.Iterator;
import net.p110sf.saxon.om.StandardNames;
import org.apache.commons.math3.util.FastMath;

/* renamed from: com.google.android.material.progressindicator.f */
/* loaded from: classes6.dex */
public final class C5355f extends AbstractC5352c<ObjectAnimator> {

    /* renamed from: k */
    public static final int f31984k = 1800;

    /* renamed from: l */
    public static final int[] f31985l = {StandardNames.XS_INTEGER, IPTC.TAG_DATE_CREATED, 850, FastMath.f109852a};

    /* renamed from: m */
    public static final int[] f31986m = {1267, 1000, 333, 0};

    /* renamed from: n */
    public static final Property<C5355f, Float> f31987n = new c(Float.class, "animationFraction");

    /* renamed from: c */
    public ObjectAnimator f31988c;

    /* renamed from: d */
    public ObjectAnimator f31989d;

    /* renamed from: e */
    public final Interpolator[] f31990e;

    /* renamed from: f */
    public final BaseProgressIndicatorSpec f31991f;

    /* renamed from: g */
    public int f31992g;

    /* renamed from: h */
    public boolean f31993h;

    /* renamed from: i */
    public float f31994i;

    /* renamed from: j */
    public Animatable2Compat.AnimationCallback f31995j;

    /* renamed from: com.google.android.material.progressindicator.f$a */
    /* loaded from: classes6.dex */
    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            C5355f c5355f = C5355f.this;
            c5355f.f31992g = (c5355f.f31992g + 1) % C5355f.this.f31991f.indicatorColors.length;
            C5355f.this.f31993h = true;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.f$b */
    /* loaded from: classes6.dex */
    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            C5355f.this.mo24483a();
            C5355f c5355f = C5355f.this;
            Animatable2Compat.AnimationCallback animationCallback = c5355f.f31995j;
            if (animationCallback != null) {
                animationCallback.onAnimationEnd(c5355f.f31967a);
            }
        }
    }

    /* renamed from: com.google.android.material.progressindicator.f$c */
    /* loaded from: classes6.dex */
    public class c extends Property<C5355f, Float> {
        public c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(C5355f c5355f) {
            return Float.valueOf(c5355f.m24522p());
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(C5355f c5355f, Float f) {
            c5355f.mo24488h(f.floatValue());
        }
    }

    public C5355f(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.f31992g = 0;
        this.f31995j = null;
        this.f31991f = linearProgressIndicatorSpec;
        this.f31990e = new Interpolator[]{AnimationUtilsCompat.loadInterpolator(context, C5139R.anim.linear_indeterminate_line1_head_interpolator), AnimationUtilsCompat.loadInterpolator(context, C5139R.anim.linear_indeterminate_line1_tail_interpolator), AnimationUtilsCompat.loadInterpolator(context, C5139R.anim.linear_indeterminate_line2_head_interpolator), AnimationUtilsCompat.loadInterpolator(context, C5139R.anim.linear_indeterminate_line2_tail_interpolator)};
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: a */
    public void mo24483a() {
        ObjectAnimator objectAnimator = this.f31988c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: c */
    public void mo24484c() {
        mo24487g();
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: d */
    public void mo24485d(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f31995j = animationCallback;
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: f */
    public void mo24486f() {
        ObjectAnimator objectAnimator = this.f31989d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        mo24483a();
        if (this.f31967a.isVisible()) {
            this.f31989d.setFloatValues(this.f31994i, 1.0f);
            this.f31989d.setDuration((1.0f - this.f31994i) * 1800.0f);
            this.f31989d.start();
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    @VisibleForTesting
    /* renamed from: g */
    public void mo24487g() {
        this.f31992g = 0;
        Iterator<DrawingDelegate.ActiveIndicator> it2 = this.f31968b.iterator();
        while (it2.hasNext()) {
            it2.next().f31931c = this.f31991f.indicatorColors[0];
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    @VisibleForTesting
    /* renamed from: h */
    public void mo24488h(float f) {
        this.f31994i = f;
        m24525s((int) (f * 1800.0f));
        m24524r();
        this.f31967a.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: i */
    public void mo24489i() {
        m24523q();
        mo24487g();
        this.f31988c.start();
    }

    @Override // com.google.android.material.progressindicator.AbstractC5352c
    /* renamed from: j */
    public void mo24490j() {
        this.f31995j = null;
    }

    /* renamed from: p */
    public final float m24522p() {
        return this.f31994i;
    }

    /* renamed from: q */
    public final void m24523q() {
        if (this.f31988c == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f31987n, 0.0f, 1.0f);
            this.f31988c = ofFloat;
            ofFloat.setDuration(1800L);
            this.f31988c.setInterpolator(null);
            this.f31988c.setRepeatCount(-1);
            this.f31988c.addListener(new a());
        }
        if (this.f31989d == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f31987n, 1.0f);
            this.f31989d = ofFloat2;
            ofFloat2.setDuration(1800L);
            this.f31989d.setInterpolator(null);
            this.f31989d.addListener(new b());
        }
    }

    /* renamed from: r */
    public final void m24524r() {
        if (this.f31993h) {
            Iterator<DrawingDelegate.ActiveIndicator> it2 = this.f31968b.iterator();
            while (it2.hasNext()) {
                it2.next().f31931c = this.f31991f.indicatorColors[this.f31992g];
            }
            this.f31993h = false;
        }
    }

    /* renamed from: s */
    public final void m24525s(int i) {
        for (int i2 = 0; i2 < this.f31968b.size(); i2++) {
            DrawingDelegate.ActiveIndicator activeIndicator = this.f31968b.get(i2);
            int[] iArr = f31986m;
            int i3 = i2 * 2;
            int i4 = iArr[i3];
            int[] iArr2 = f31985l;
            activeIndicator.f31929a = MathUtils.clamp(this.f31990e[i3].getInterpolation(m24501b(i, i4, iArr2[i3])), 0.0f, 1.0f);
            int i5 = i3 + 1;
            activeIndicator.f31930b = MathUtils.clamp(this.f31990e[i5].getInterpolation(m24501b(i, iArr[i5], iArr2[i5])), 0.0f, 1.0f);
        }
    }
}
