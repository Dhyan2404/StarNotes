package androidx.dynamicanimation.animation;

import android.annotation.SuppressLint;
import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.dynamicanimation.animation.C1030a;
import androidx.dynamicanimation.animation.DynamicAnimation;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class DynamicAnimation<T extends DynamicAnimation<T>> implements C1030a.b {

    @SuppressLint({"MinMaxConstant"})
    public static final float MIN_VISIBLE_CHANGE_ALPHA = 0.00390625f;

    @SuppressLint({"MinMaxConstant"})
    public static final float MIN_VISIBLE_CHANGE_PIXELS = 1.0f;

    @SuppressLint({"MinMaxConstant"})
    public static final float MIN_VISIBLE_CHANGE_ROTATION_DEGREES = 0.1f;

    @SuppressLint({"MinMaxConstant"})
    public static final float MIN_VISIBLE_CHANGE_SCALE = 0.002f;

    /* renamed from: m */
    public static final float f6863m = Float.MAX_VALUE;

    /* renamed from: n */
    public static final float f6864n = 0.75f;

    /* renamed from: a */
    public float f6865a;

    /* renamed from: b */
    public float f6866b;

    /* renamed from: c */
    public boolean f6867c;

    /* renamed from: d */
    public final Object f6868d;

    /* renamed from: e */
    public final FloatPropertyCompat f6869e;

    /* renamed from: f */
    public boolean f6870f;

    /* renamed from: g */
    public float f6871g;

    /* renamed from: h */
    public float f6872h;

    /* renamed from: i */
    public long f6873i;

    /* renamed from: j */
    public float f6874j;

    /* renamed from: k */
    public final ArrayList<OnAnimationEndListener> f6875k;

    /* renamed from: l */
    public final ArrayList<OnAnimationUpdateListener> f6876l;
    public static final ViewProperty TRANSLATION_X = new C1018g("translationX");
    public static final ViewProperty TRANSLATION_Y = new C1019h("translationY");
    public static final ViewProperty TRANSLATION_Z = new C1020i("translationZ");
    public static final ViewProperty SCALE_X = new C1021j("scaleX");
    public static final ViewProperty SCALE_Y = new C1022k("scaleY");
    public static final ViewProperty ROTATION = new C1023l("rotation");
    public static final ViewProperty ROTATION_X = new C1024m("rotationX");
    public static final ViewProperty ROTATION_Y = new C1025n("rotationY");

    /* renamed from: X */
    public static final ViewProperty f6860X = new C1026o("x");

    /* renamed from: Y */
    public static final ViewProperty f6861Y = new C1012a("y");

    /* renamed from: Z */
    public static final ViewProperty f6862Z = new C1013b("z");
    public static final ViewProperty ALPHA = new C1014c("alpha");
    public static final ViewProperty SCROLL_X = new C1015d("scrollX");
    public static final ViewProperty SCROLL_Y = new C1016e("scrollY");

    /* loaded from: classes3.dex */
    public interface OnAnimationEndListener {
        void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2);
    }

    /* loaded from: classes3.dex */
    public interface OnAnimationUpdateListener {
        void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2);
    }

    /* loaded from: classes3.dex */
    public static abstract class ViewProperty extends FloatPropertyCompat<View> {
        public /* synthetic */ ViewProperty(String str, C1018g c1018g) {
            this(str);
        }

        public ViewProperty(String str) {
            super(str);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$a */
    /* loaded from: classes3.dex */
    public static class C1012a extends ViewProperty {
        public C1012a(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            view.setY(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$b */
    /* loaded from: classes3.dex */
    public static class C1013b extends ViewProperty {
        public C1013b(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return ViewCompat.getZ(view);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            ViewCompat.setZ(view, f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$c */
    /* loaded from: classes3.dex */
    public static class C1014c extends ViewProperty {
        public C1014c(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getAlpha();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            view.setAlpha(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$d */
    /* loaded from: classes3.dex */
    public static class C1015d extends ViewProperty {
        public C1015d(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getScrollX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            view.setScrollX((int) f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$e */
    /* loaded from: classes3.dex */
    public static class C1016e extends ViewProperty {
        public C1016e(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getScrollY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            view.setScrollY((int) f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$f */
    /* loaded from: classes3.dex */
    public class C1017f extends FloatPropertyCompat {

        /* renamed from: b */
        public final /* synthetic */ FloatValueHolder f6877b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1017f(String str, FloatValueHolder floatValueHolder) {
            super(str);
            this.f6877b = floatValueHolder;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(Object obj) {
            return this.f6877b.getValue();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(Object obj, float f) {
            this.f6877b.setValue(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$g */
    /* loaded from: classes3.dex */
    public static class C1018g extends ViewProperty {
        public C1018g(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getTranslationX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            view.setTranslationX(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$h */
    /* loaded from: classes3.dex */
    public static class C1019h extends ViewProperty {
        public C1019h(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getTranslationY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            view.setTranslationY(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$i */
    /* loaded from: classes3.dex */
    public static class C1020i extends ViewProperty {
        public C1020i(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return ViewCompat.getTranslationZ(view);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            ViewCompat.setTranslationZ(view, f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$j */
    /* loaded from: classes3.dex */
    public static class C1021j extends ViewProperty {
        public C1021j(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getScaleX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            view.setScaleX(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$k */
    /* loaded from: classes3.dex */
    public static class C1022k extends ViewProperty {
        public C1022k(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getScaleY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            view.setScaleY(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$l */
    /* loaded from: classes3.dex */
    public static class C1023l extends ViewProperty {
        public C1023l(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getRotation();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            view.setRotation(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$m */
    /* loaded from: classes3.dex */
    public static class C1024m extends ViewProperty {
        public C1024m(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getRotationX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            view.setRotationX(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$n */
    /* loaded from: classes3.dex */
    public static class C1025n extends ViewProperty {
        public C1025n(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getRotationY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            view.setRotationY(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$o */
    /* loaded from: classes3.dex */
    public static class C1026o extends ViewProperty {
        public C1026o(String str) {
            super(str, null);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(View view) {
            return view.getX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(View view, float f) {
            view.setX(f);
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.DynamicAnimation$p */
    /* loaded from: classes3.dex */
    public static class C1027p {

        /* renamed from: a */
        public float f6879a;

        /* renamed from: b */
        public float f6880b;
    }

    public DynamicAnimation(FloatValueHolder floatValueHolder) {
        this.f6865a = 0.0f;
        this.f6866b = Float.MAX_VALUE;
        this.f6867c = false;
        this.f6870f = false;
        this.f6871g = Float.MAX_VALUE;
        this.f6872h = -Float.MAX_VALUE;
        this.f6873i = 0L;
        this.f6875k = new ArrayList<>();
        this.f6876l = new ArrayList<>();
        this.f6868d = null;
        this.f6869e = new C1017f("FloatValueHolder", floatValueHolder);
        this.f6874j = 1.0f;
    }

    /* renamed from: f */
    public static <T> void m4152f(ArrayList<T> arrayList, T t) {
        int indexOf = arrayList.indexOf(t);
        if (indexOf >= 0) {
            arrayList.set(indexOf, null);
        }
    }

    /* renamed from: g */
    public static <T> void m4153g(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    /* renamed from: a */
    public final void m4154a(boolean z) {
        this.f6870f = false;
        C1030a.m4200e().m4206h(this);
        this.f6873i = 0L;
        this.f6867c = false;
        for (int i = 0; i < this.f6875k.size(); i++) {
            if (this.f6875k.get(i) != null) {
                this.f6875k.get(i).onAnimationEnd(this, z, this.f6866b, this.f6865a);
            }
        }
        m4153g(this.f6875k);
    }

    public T addEndListener(OnAnimationEndListener onAnimationEndListener) {
        if (!this.f6875k.contains(onAnimationEndListener)) {
            this.f6875k.add(onAnimationEndListener);
        }
        return this;
    }

    public T addUpdateListener(OnAnimationUpdateListener onAnimationUpdateListener) {
        if (isRunning()) {
            throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
        }
        if (!this.f6876l.contains(onAnimationUpdateListener)) {
            this.f6876l.add(onAnimationUpdateListener);
        }
        return this;
    }

    /* renamed from: b */
    public abstract float mo4155b(float f, float f2);

    /* renamed from: c */
    public final float m4156c() {
        return this.f6869e.getValue(this.f6868d);
    }

    @MainThread
    public void cancel() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
        }
        if (this.f6870f) {
            m4154a(true);
        }
    }

    /* renamed from: d */
    public float m4157d() {
        return this.f6874j * 0.75f;
    }

    @Override // androidx.dynamicanimation.animation.C1030a.b
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean doAnimationFrame(long j) {
        long j2 = this.f6873i;
        if (j2 == 0) {
            this.f6873i = j;
            m4159h(this.f6866b);
            return false;
        }
        this.f6873i = j;
        boolean mo4162k = mo4162k(j - j2);
        float min = Math.min(this.f6866b, this.f6871g);
        this.f6866b = min;
        float max = Math.max(min, this.f6872h);
        this.f6866b = max;
        m4159h(max);
        if (mo4162k) {
            m4154a(false);
        }
        return mo4162k;
    }

    /* renamed from: e */
    public abstract boolean mo4158e(float f, float f2);

    public float getMinimumVisibleChange() {
        return this.f6874j;
    }

    /* renamed from: h */
    public void m4159h(float f) {
        this.f6869e.setValue(this.f6868d, f);
        for (int i = 0; i < this.f6876l.size(); i++) {
            if (this.f6876l.get(i) != null) {
                this.f6876l.get(i).onAnimationUpdate(this, this.f6866b, this.f6865a);
            }
        }
        m4153g(this.f6876l);
    }

    /* renamed from: i */
    public abstract void mo4160i(float f);

    public boolean isRunning() {
        return this.f6870f;
    }

    /* renamed from: j */
    public final void m4161j() {
        if (this.f6870f) {
            return;
        }
        this.f6870f = true;
        if (!this.f6867c) {
            this.f6866b = m4156c();
        }
        float f = this.f6866b;
        if (f > this.f6871g || f < this.f6872h) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        C1030a.m4200e().m4201a(this, 0L);
    }

    /* renamed from: k */
    public abstract boolean mo4162k(long j);

    public void removeEndListener(OnAnimationEndListener onAnimationEndListener) {
        m4152f(this.f6875k, onAnimationEndListener);
    }

    public void removeUpdateListener(OnAnimationUpdateListener onAnimationUpdateListener) {
        m4152f(this.f6876l, onAnimationUpdateListener);
    }

    public T setMaxValue(float f) {
        this.f6871g = f;
        return this;
    }

    public T setMinValue(float f) {
        this.f6872h = f;
        return this;
    }

    public T setMinimumVisibleChange(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Minimum visible change must be positive.");
        }
        this.f6874j = f;
        mo4160i(f * 0.75f);
        return this;
    }

    public T setStartValue(float f) {
        this.f6866b = f;
        this.f6867c = true;
        return this;
    }

    public T setStartVelocity(float f) {
        this.f6865a = f;
        return this;
    }

    @MainThread
    public void start() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (this.f6870f) {
            return;
        }
        m4161j();
    }

    public <K> DynamicAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        this.f6865a = 0.0f;
        this.f6866b = Float.MAX_VALUE;
        this.f6867c = false;
        this.f6870f = false;
        this.f6871g = Float.MAX_VALUE;
        this.f6872h = -Float.MAX_VALUE;
        this.f6873i = 0L;
        this.f6875k = new ArrayList<>();
        this.f6876l = new ArrayList<>();
        this.f6868d = k;
        this.f6869e = floatPropertyCompat;
        if (floatPropertyCompat != ROTATION && floatPropertyCompat != ROTATION_X && floatPropertyCompat != ROTATION_Y) {
            if (floatPropertyCompat == ALPHA) {
                this.f6874j = 0.00390625f;
                return;
            } else if (floatPropertyCompat != SCALE_X && floatPropertyCompat != SCALE_Y) {
                this.f6874j = 1.0f;
                return;
            } else {
                this.f6874j = 0.00390625f;
                return;
            }
        }
        this.f6874j = 0.1f;
    }
}
