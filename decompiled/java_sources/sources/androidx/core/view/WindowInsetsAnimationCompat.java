package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.C0512R;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import com.sunia.HTREnginev2.a8o;
import com.sunia.HTREnginev2.b8o;
import com.sunia.HTREnginev2.q7o;
import com.sunia.HTREnginev2.r7o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* loaded from: classes3.dex */
public final class WindowInsetsAnimationCompat {

    /* renamed from: b */
    public static final boolean f5920b = false;

    /* renamed from: c */
    public static final String f5921c = "WindowInsetsAnimCompat";

    /* renamed from: a */
    public C0810c f5922a;

    /* loaded from: classes3.dex */
    public static abstract class Callback {
        public static final int DISPATCH_MODE_CONTINUE_ON_SUBTREE = 1;
        public static final int DISPATCH_MODE_STOP = 0;

        /* renamed from: a */
        public WindowInsets f5925a;

        /* renamed from: b */
        public final int f5926b;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes3.dex */
        public @interface DispatchMode {
        }

        public Callback(int i) {
            this.f5926b = i;
        }

        public final int getDispatchMode() {
            return this.f5926b;
        }

        public void onEnd(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public void onPrepare(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        @NonNull
        public abstract WindowInsetsCompat onProgress(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull List<WindowInsetsAnimationCompat> list);

        @NonNull
        public BoundsCompat onStart(@NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat, @NonNull BoundsCompat boundsCompat) {
            return boundsCompat;
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.core.view.WindowInsetsAnimationCompat$a */
    /* loaded from: classes3.dex */
    public static class C0808a extends C0810c {

        /* renamed from: f */
        public static final Interpolator f5927f = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);

        /* renamed from: g */
        public static final Interpolator f5928g = new FastOutLinearInInterpolator();

        /* renamed from: h */
        public static final Interpolator f5929h = new DecelerateInterpolator();

        @RequiresApi(21)
        /* renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a */
        /* loaded from: classes3.dex */
        public static class a implements View.OnApplyWindowInsetsListener {

            /* renamed from: c */
            public static final int f5930c = 160;

            /* renamed from: a */
            public final Callback f5931a;

            /* renamed from: b */
            public WindowInsetsCompat f5932b;

            /* renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public class C20568a implements ValueAnimator.AnimatorUpdateListener {

                /* renamed from: e */
                public final /* synthetic */ WindowInsetsAnimationCompat f5933e;

                /* renamed from: f */
                public final /* synthetic */ WindowInsetsCompat f5934f;

                /* renamed from: g */
                public final /* synthetic */ WindowInsetsCompat f5935g;

                /* renamed from: h */
                public final /* synthetic */ int f5936h;

                /* renamed from: i */
                public final /* synthetic */ View f5937i;

                public C20568a(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, int i, View view) {
                    this.f5933e = windowInsetsAnimationCompat;
                    this.f5934f = windowInsetsCompat;
                    this.f5935g = windowInsetsCompat2;
                    this.f5936h = i;
                    this.f5937i = view;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f5933e.setFraction(valueAnimator.getAnimatedFraction());
                    C0808a.m3556o(this.f5937i, C0808a.m3560s(this.f5934f, this.f5935g, this.f5933e.getInterpolatedFraction(), this.f5936h), Collections.singletonList(this.f5933e));
                }
            }

            /* renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a$b */
            /* loaded from: classes3.dex */
            public class b extends AnimatorListenerAdapter {

                /* renamed from: e */
                public final /* synthetic */ WindowInsetsAnimationCompat f5939e;

                /* renamed from: f */
                public final /* synthetic */ View f5940f;

                public b(WindowInsetsAnimationCompat windowInsetsAnimationCompat, View view) {
                    this.f5939e = windowInsetsAnimationCompat;
                    this.f5940f = view;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    this.f5939e.setFraction(1.0f);
                    C0808a.m3554m(this.f5940f, this.f5939e);
                }
            }

            /* renamed from: androidx.core.view.WindowInsetsAnimationCompat$a$a$c */
            /* loaded from: classes3.dex */
            public class c implements Runnable {

                /* renamed from: e */
                public final /* synthetic */ View f5942e;

                /* renamed from: f */
                public final /* synthetic */ WindowInsetsAnimationCompat f5943f;

                /* renamed from: g */
                public final /* synthetic */ BoundsCompat f5944g;

                /* renamed from: h */
                public final /* synthetic */ ValueAnimator f5945h;

                public c(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat, ValueAnimator valueAnimator) {
                    this.f5942e = view;
                    this.f5943f = windowInsetsAnimationCompat;
                    this.f5944g = boundsCompat;
                    this.f5945h = valueAnimator;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C0808a.m3557p(this.f5942e, this.f5943f, this.f5944g);
                    this.f5945h.start();
                }
            }

            public a(@NonNull View view, @NonNull Callback callback) {
                this.f5931a = callback;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
                this.f5932b = rootWindowInsets != null ? new WindowInsetsCompat.Builder(rootWindowInsets).build() : null;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                int m3550i;
                if (!view.isLaidOut()) {
                    this.f5932b = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                    return C0808a.m3558q(view, windowInsets);
                }
                WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                if (this.f5932b == null) {
                    this.f5932b = ViewCompat.getRootWindowInsets(view);
                }
                if (this.f5932b == null) {
                    this.f5932b = windowInsetsCompat;
                    return C0808a.m3558q(view, windowInsets);
                }
                Callback m3559r = C0808a.m3559r(view);
                if ((m3559r == null || !Objects.equals(m3559r.f5925a, windowInsets)) && (m3550i = C0808a.m3550i(windowInsetsCompat, this.f5932b)) != 0) {
                    WindowInsetsCompat windowInsetsCompat2 = this.f5932b;
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(m3550i, C0808a.m3552k(m3550i, windowInsetsCompat, windowInsetsCompat2), 160L);
                    windowInsetsAnimationCompat.setFraction(0.0f);
                    ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(windowInsetsAnimationCompat.getDurationMillis());
                    BoundsCompat m3551j = C0808a.m3551j(windowInsetsCompat, windowInsetsCompat2, m3550i);
                    C0808a.m3555n(view, windowInsetsAnimationCompat, windowInsets, false);
                    duration.addUpdateListener(new C20568a(windowInsetsAnimationCompat, windowInsetsCompat, windowInsetsCompat2, m3550i, view));
                    duration.addListener(new b(windowInsetsAnimationCompat, view));
                    OneShotPreDrawListener.add(view, new c(view, windowInsetsAnimationCompat, m3551j, duration));
                    this.f5932b = windowInsetsCompat;
                    return C0808a.m3558q(view, windowInsets);
                }
                return C0808a.m3558q(view, windowInsets);
            }
        }

        public C0808a(int i, @Nullable Interpolator interpolator, long j) {
            super(i, interpolator, j);
        }

        @SuppressLint({"WrongConstant"})
        /* renamed from: i */
        public static int m3550i(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat windowInsetsCompat2) {
            int i = 0;
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if (!windowInsetsCompat.getInsets(i2).equals(windowInsetsCompat2.getInsets(i2))) {
                    i |= i2;
                }
            }
            return i;
        }

        @NonNull
        /* renamed from: j */
        public static BoundsCompat m3551j(@NonNull WindowInsetsCompat windowInsetsCompat, @NonNull WindowInsetsCompat windowInsetsCompat2, int i) {
            Insets insets = windowInsetsCompat.getInsets(i);
            Insets insets2 = windowInsetsCompat2.getInsets(i);
            return new BoundsCompat(Insets.m2908of(Math.min(insets.left, insets2.left), Math.min(insets.top, insets2.top), Math.min(insets.right, insets2.right), Math.min(insets.bottom, insets2.bottom)), Insets.m2908of(Math.max(insets.left, insets2.left), Math.max(insets.top, insets2.top), Math.max(insets.right, insets2.right), Math.max(insets.bottom, insets2.bottom)));
        }

        /* renamed from: k */
        public static Interpolator m3552k(int i, WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2) {
            return (i & 8) != 0 ? windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime()).bottom > windowInsetsCompat2.getInsets(WindowInsetsCompat.Type.ime()).bottom ? f5927f : f5928g : f5929h;
        }

        @NonNull
        /* renamed from: l */
        public static View.OnApplyWindowInsetsListener m3553l(@NonNull View view, @NonNull Callback callback) {
            return new a(view, callback);
        }

        /* renamed from: m */
        public static void m3554m(@NonNull View view, @NonNull WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            Callback m3559r = m3559r(view);
            if (m3559r != null) {
                m3559r.onEnd(windowInsetsAnimationCompat);
                if (m3559r.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    m3554m(viewGroup.getChildAt(i), windowInsetsAnimationCompat);
                }
            }
        }

        /* renamed from: n */
        public static void m3555n(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsets windowInsets, boolean z) {
            Callback m3559r = m3559r(view);
            if (m3559r != null) {
                m3559r.f5925a = windowInsets;
                if (!z) {
                    m3559r.onPrepare(windowInsetsAnimationCompat);
                    z = m3559r.getDispatchMode() == 0;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    m3555n(viewGroup.getChildAt(i), windowInsetsAnimationCompat, windowInsets, z);
                }
            }
        }

        /* renamed from: o */
        public static void m3556o(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull List<WindowInsetsAnimationCompat> list) {
            Callback m3559r = m3559r(view);
            if (m3559r != null) {
                windowInsetsCompat = m3559r.onProgress(windowInsetsCompat, list);
                if (m3559r.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    m3556o(viewGroup.getChildAt(i), windowInsetsCompat, list);
                }
            }
        }

        /* renamed from: p */
        public static void m3557p(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            Callback m3559r = m3559r(view);
            if (m3559r != null) {
                m3559r.onStart(windowInsetsAnimationCompat, boundsCompat);
                if (m3559r.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    m3557p(viewGroup.getChildAt(i), windowInsetsAnimationCompat, boundsCompat);
                }
            }
        }

        @NonNull
        /* renamed from: q */
        public static WindowInsets m3558q(@NonNull View view, @NonNull WindowInsets windowInsets) {
            return view.getTag(C0512R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
        }

        @Nullable
        /* renamed from: r */
        public static Callback m3559r(View view) {
            Object tag = view.getTag(C0512R.id.tag_window_insets_animation_callback);
            if (tag instanceof a) {
                return ((a) tag).f5931a;
            }
            return null;
        }

        @SuppressLint({"WrongConstant"})
        /* renamed from: s */
        public static WindowInsetsCompat m3560s(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, float f, int i) {
            WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat);
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) == 0) {
                    builder.setInsets(i2, windowInsetsCompat.getInsets(i2));
                } else {
                    Insets insets = windowInsetsCompat.getInsets(i2);
                    Insets insets2 = windowInsetsCompat2.getInsets(i2);
                    float f2 = 1.0f - f;
                    builder.setInsets(i2, WindowInsetsCompat.m3585b(insets, (int) (((insets.left - insets2.left) * f2) + 0.5d), (int) (((insets.top - insets2.top) * f2) + 0.5d), (int) (((insets.right - insets2.right) * f2) + 0.5d), (int) (((insets.bottom - insets2.bottom) * f2) + 0.5d)));
                }
            }
            return builder.build();
        }

        /* renamed from: t */
        public static void m3561t(@NonNull View view, @Nullable Callback callback) {
            Object tag = view.getTag(C0512R.id.tag_on_apply_window_listener);
            if (callback == null) {
                view.setTag(C0512R.id.tag_window_insets_animation_callback, null);
                if (tag == null) {
                    view.setOnApplyWindowInsetsListener(null);
                    return;
                }
                return;
            }
            View.OnApplyWindowInsetsListener m3553l = m3553l(view, callback);
            view.setTag(C0512R.id.tag_window_insets_animation_callback, m3553l);
            if (tag == null) {
                view.setOnApplyWindowInsetsListener(m3553l);
            }
        }
    }

    /* renamed from: androidx.core.view.WindowInsetsAnimationCompat$c */
    /* loaded from: classes3.dex */
    public static class C0810c {

        /* renamed from: a */
        public final int f5952a;

        /* renamed from: b */
        public float f5953b;

        /* renamed from: c */
        @Nullable
        public final Interpolator f5954c;

        /* renamed from: d */
        public final long f5955d;

        /* renamed from: e */
        public float f5956e;

        public C0810c(int i, @Nullable Interpolator interpolator, long j) {
            this.f5952a = i;
            this.f5954c = interpolator;
            this.f5955d = j;
        }

        /* renamed from: a */
        public float m3573a() {
            return this.f5956e;
        }

        /* renamed from: b */
        public long mo3566b() {
            return this.f5955d;
        }

        /* renamed from: c */
        public float mo3567c() {
            return this.f5953b;
        }

        /* renamed from: d */
        public float mo3568d() {
            Interpolator interpolator = this.f5954c;
            return interpolator != null ? interpolator.getInterpolation(this.f5953b) : this.f5953b;
        }

        @Nullable
        /* renamed from: e */
        public Interpolator mo3569e() {
            return this.f5954c;
        }

        /* renamed from: f */
        public int mo3570f() {
            return this.f5952a;
        }

        /* renamed from: g */
        public void m3574g(float f) {
            this.f5956e = f;
        }

        /* renamed from: h */
        public void mo3571h(float f) {
            this.f5953b = f;
        }
    }

    public WindowInsetsAnimationCompat(int i, @Nullable Interpolator interpolator, long j) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f5922a = new C0809b(i, interpolator, j);
        } else {
            this.f5922a = new C0808a(i, interpolator, j);
        }
    }

    /* renamed from: a */
    public static void m3548a(@NonNull View view, @Nullable Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            C0809b.m3565l(view, callback);
        } else {
            C0808a.m3561t(view, callback);
        }
    }

    @RequiresApi(30)
    /* renamed from: b */
    public static WindowInsetsAnimationCompat m3549b(WindowInsetsAnimation windowInsetsAnimation) {
        return new WindowInsetsAnimationCompat(windowInsetsAnimation);
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getAlpha() {
        return this.f5922a.m3573a();
    }

    public long getDurationMillis() {
        return this.f5922a.mo3566b();
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getFraction() {
        return this.f5922a.mo3567c();
    }

    public float getInterpolatedFraction() {
        return this.f5922a.mo3568d();
    }

    @Nullable
    public Interpolator getInterpolator() {
        return this.f5922a.mo3569e();
    }

    public int getTypeMask() {
        return this.f5922a.mo3570f();
    }

    public void setAlpha(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        this.f5922a.m3574g(f);
    }

    public void setFraction(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        this.f5922a.mo3571h(f);
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.view.WindowInsetsAnimationCompat$b */
    /* loaded from: classes3.dex */
    public static class C0809b extends C0810c {

        /* renamed from: f */
        @NonNull
        public final WindowInsetsAnimation f5947f;

        @RequiresApi(30)
        /* renamed from: androidx.core.view.WindowInsetsAnimationCompat$b$a */
        /* loaded from: classes3.dex */
        public static class a extends WindowInsetsAnimation$Callback {

            /* renamed from: a */
            public final Callback f5948a;

            /* renamed from: b */
            public List<WindowInsetsAnimationCompat> f5949b;

            /* renamed from: c */
            public ArrayList<WindowInsetsAnimationCompat> f5950c;

            /* renamed from: d */
            public final HashMap<WindowInsetsAnimation, WindowInsetsAnimationCompat> f5951d;

            public a(@NonNull Callback callback) {
                super(callback.getDispatchMode());
                this.f5951d = new HashMap<>();
                this.f5948a = callback;
            }

            @NonNull
            /* renamed from: a */
            public final WindowInsetsAnimationCompat m3572a(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = this.f5951d.get(windowInsetsAnimation);
                if (windowInsetsAnimationCompat != null) {
                    return windowInsetsAnimationCompat;
                }
                WindowInsetsAnimationCompat m3549b = WindowInsetsAnimationCompat.m3549b(windowInsetsAnimation);
                this.f5951d.put(windowInsetsAnimation, m3549b);
                return m3549b;
            }

            public void onEnd(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
                this.f5948a.onEnd(m3572a(windowInsetsAnimation));
                this.f5951d.remove(windowInsetsAnimation);
            }

            public void onPrepare(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
                this.f5948a.onPrepare(m3572a(windowInsetsAnimation));
            }

            @NonNull
            public WindowInsets onProgress(@NonNull WindowInsets windowInsets, @NonNull List<WindowInsetsAnimation> list) {
                float fraction;
                ArrayList<WindowInsetsAnimationCompat> arrayList = this.f5950c;
                if (arrayList == null) {
                    ArrayList<WindowInsetsAnimationCompat> arrayList2 = new ArrayList<>(list.size());
                    this.f5950c = arrayList2;
                    this.f5949b = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation m53201a = b8o.m53201a(list.get(size));
                    WindowInsetsAnimationCompat m3572a = m3572a(m53201a);
                    fraction = m53201a.getFraction();
                    m3572a.setFraction(fraction);
                    this.f5950c.add(m3572a);
                }
                return this.f5948a.onProgress(WindowInsetsCompat.toWindowInsetsCompat(windowInsets), this.f5949b).toWindowInsets();
            }

            @NonNull
            public WindowInsetsAnimation.Bounds onStart(@NonNull WindowInsetsAnimation windowInsetsAnimation, @NonNull WindowInsetsAnimation.Bounds bounds) {
                return this.f5948a.onStart(m3572a(windowInsetsAnimation), BoundsCompat.toBoundsCompat(bounds)).toBounds();
            }
        }

        public C0809b(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.f5947f = windowInsetsAnimation;
        }

        @NonNull
        /* renamed from: i */
        public static WindowInsetsAnimation.Bounds m3562i(@NonNull BoundsCompat boundsCompat) {
            r7o.m56931a();
            return q7o.m56657a(boundsCompat.getLowerBound().toPlatformInsets(), boundsCompat.getUpperBound().toPlatformInsets());
        }

        @NonNull
        /* renamed from: j */
        public static Insets m3563j(@NonNull WindowInsetsAnimation.Bounds bounds) {
            android.graphics.Insets upperBound;
            upperBound = bounds.getUpperBound();
            return Insets.toCompatInsets(upperBound);
        }

        @NonNull
        /* renamed from: k */
        public static Insets m3564k(@NonNull WindowInsetsAnimation.Bounds bounds) {
            android.graphics.Insets lowerBound;
            lowerBound = bounds.getLowerBound();
            return Insets.toCompatInsets(lowerBound);
        }

        /* renamed from: l */
        public static void m3565l(@NonNull View view, @Nullable Callback callback) {
            view.setWindowInsetsAnimationCallback(callback != null ? new a(callback) : null);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.C0810c
        /* renamed from: b */
        public long mo3566b() {
            long durationMillis;
            durationMillis = this.f5947f.getDurationMillis();
            return durationMillis;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.C0810c
        /* renamed from: c */
        public float mo3567c() {
            float fraction;
            fraction = this.f5947f.getFraction();
            return fraction;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.C0810c
        /* renamed from: d */
        public float mo3568d() {
            float interpolatedFraction;
            interpolatedFraction = this.f5947f.getInterpolatedFraction();
            return interpolatedFraction;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.C0810c
        @Nullable
        /* renamed from: e */
        public Interpolator mo3569e() {
            Interpolator interpolator;
            interpolator = this.f5947f.getInterpolator();
            return interpolator;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.C0810c
        /* renamed from: f */
        public int mo3570f() {
            int typeMask;
            typeMask = this.f5947f.getTypeMask();
            return typeMask;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.C0810c
        /* renamed from: h */
        public void mo3571h(float f) {
            this.f5947f.setFraction(f);
        }

        public C0809b(int i, Interpolator interpolator, long j) {
            this(a8o.m52980a(i, interpolator, j));
        }
    }

    /* loaded from: classes3.dex */
    public static final class BoundsCompat {

        /* renamed from: a */
        public final Insets f5923a;

        /* renamed from: b */
        public final Insets f5924b;

        public BoundsCompat(@NonNull Insets insets, @NonNull Insets insets2) {
            this.f5923a = insets;
            this.f5924b = insets2;
        }

        @NonNull
        @RequiresApi(30)
        public static BoundsCompat toBoundsCompat(@NonNull WindowInsetsAnimation.Bounds bounds) {
            return new BoundsCompat(bounds);
        }

        @NonNull
        public Insets getLowerBound() {
            return this.f5923a;
        }

        @NonNull
        public Insets getUpperBound() {
            return this.f5924b;
        }

        @NonNull
        public BoundsCompat inset(@NonNull Insets insets) {
            return new BoundsCompat(WindowInsetsCompat.m3585b(this.f5923a, insets.left, insets.top, insets.right, insets.bottom), WindowInsetsCompat.m3585b(this.f5924b, insets.left, insets.top, insets.right, insets.bottom));
        }

        @NonNull
        @RequiresApi(30)
        public WindowInsetsAnimation.Bounds toBounds() {
            return C0809b.m3562i(this);
        }

        public String toString() {
            return "Bounds{lower=" + this.f5923a + " upper=" + this.f5924b + "}";
        }

        @RequiresApi(30)
        public BoundsCompat(@NonNull WindowInsetsAnimation.Bounds bounds) {
            this.f5923a = C0809b.m3564k(bounds);
            this.f5924b = C0809b.m3563j(bounds);
        }
    }

    @RequiresApi(30)
    public WindowInsetsAnimationCompat(@NonNull WindowInsetsAnimation windowInsetsAnimation) {
        this(0, null, 0L);
        if (Build.VERSION.SDK_INT >= 30) {
            this.f5922a = new C0809b(windowInsetsAnimation);
        }
    }
}
