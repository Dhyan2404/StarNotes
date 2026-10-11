package com.google.android.material.carousel;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.animation.AnimationUtils;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.google.android.material.carousel.b */
/* loaded from: classes6.dex */
public final class C5201b {

    /* renamed from: a */
    public final float f30668a;

    /* renamed from: b */
    public final List<c> f30669b;

    /* renamed from: c */
    public final int f30670c;

    /* renamed from: d */
    public final int f30671d;

    /* renamed from: com.google.android.material.carousel.b$b */
    /* loaded from: classes6.dex */
    public static final class b {

        /* renamed from: j */
        public static final int f30672j = -1;

        /* renamed from: k */
        public static final float f30673k = Float.MIN_VALUE;

        /* renamed from: a */
        public final float f30674a;

        /* renamed from: b */
        public final float f30675b;

        /* renamed from: d */
        public c f30677d;

        /* renamed from: e */
        public c f30678e;

        /* renamed from: c */
        public final List<c> f30676c = new ArrayList();

        /* renamed from: f */
        public int f30679f = -1;

        /* renamed from: g */
        public int f30680g = -1;

        /* renamed from: h */
        public float f30681h = 0.0f;

        /* renamed from: i */
        public int f30682i = -1;

        public b(float f, float f2) {
            this.f30674a = f;
            this.f30675b = f2;
        }

        /* renamed from: j */
        public static float m23384j(float f, float f2, int i, int i2) {
            return (f - (i * f2)) + (i2 * f2);
        }

        @NonNull
        @CanIgnoreReturnValue
        /* renamed from: a */
        public b m23385a(float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, float f3) {
            return m23388d(f, f2, f3, false, true);
        }

        @NonNull
        @CanIgnoreReturnValue
        /* renamed from: b */
        public b m23386b(float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, float f3) {
            return m23387c(f, f2, f3, false);
        }

        @NonNull
        @CanIgnoreReturnValue
        /* renamed from: c */
        public b m23387c(float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, float f3, boolean z) {
            return m23388d(f, f2, f3, z, false);
        }

        @NonNull
        @CanIgnoreReturnValue
        /* renamed from: d */
        public b m23388d(float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, float f3, boolean z, boolean z2) {
            float f4;
            float f5 = f3 / 2.0f;
            float f6 = f - f5;
            float f7 = f5 + f;
            float f8 = this.f30675b;
            if (f7 > f8) {
                f4 = Math.abs(f7 - Math.max(f7 - f3, f8));
            } else {
                f4 = 0.0f;
                if (f6 < 0.0f) {
                    f4 = Math.abs(f6 - Math.min(f6 + f3, 0.0f));
                }
            }
            return m23389e(f, f2, f3, z, z2, f4);
        }

        @NonNull
        @CanIgnoreReturnValue
        /* renamed from: e */
        public b m23389e(float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, float f3, boolean z, boolean z2, float f4) {
            return m23390f(f, f2, f3, z, z2, f4, 0.0f, 0.0f);
        }

        @NonNull
        @CanIgnoreReturnValue
        /* renamed from: f */
        public b m23390f(float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, float f3, boolean z, boolean z2, float f4, float f5, float f6) {
            if (f3 <= 0.0f) {
                return this;
            }
            if (z2) {
                if (z) {
                    throw new IllegalArgumentException("Anchor keylines cannot be focal.");
                }
                int i = this.f30682i;
                if (i != -1 && i != 0) {
                    throw new IllegalArgumentException("Anchor keylines must be either the first or last keyline.");
                }
                this.f30682i = this.f30676c.size();
            }
            c cVar = new c(Float.MIN_VALUE, f, f2, f3, z2, f4, f5, f6);
            if (z) {
                if (this.f30677d == null) {
                    this.f30677d = cVar;
                    this.f30679f = this.f30676c.size();
                }
                if (this.f30680g != -1 && this.f30676c.size() - this.f30680g > 1) {
                    throw new IllegalArgumentException("Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines.");
                }
                if (f3 != this.f30677d.f30686d) {
                    throw new IllegalArgumentException("Keylines that are marked as focal must all have the same masked item size.");
                }
                this.f30678e = cVar;
                this.f30680g = this.f30676c.size();
            } else {
                if (this.f30677d == null && cVar.f30686d < this.f30681h) {
                    throw new IllegalArgumentException("Keylines before the first focal keyline must be ordered by incrementing masked item size.");
                }
                if (this.f30678e != null && cVar.f30686d > this.f30681h) {
                    throw new IllegalArgumentException("Keylines after the last focal keyline must be ordered by decreasing masked item size.");
                }
            }
            this.f30681h = cVar.f30686d;
            this.f30676c.add(cVar);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        /* renamed from: g */
        public b m23391g(float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, float f3, int i) {
            return m23392h(f, f2, f3, i, false);
        }

        @NonNull
        @CanIgnoreReturnValue
        /* renamed from: h */
        public b m23392h(float f, @FloatRange(from = 0.0d, m280to = 1.0d) float f2, float f3, int i, boolean z) {
            if (i > 0 && f3 > 0.0f) {
                for (int i2 = 0; i2 < i; i2++) {
                    m23387c((i2 * f3) + f, f2, f3, z);
                }
            }
            return this;
        }

        @NonNull
        /* renamed from: i */
        public C5201b m23393i() {
            if (this.f30677d == null) {
                throw new IllegalStateException("There must be a keyline marked as focal.");
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.f30676c.size(); i++) {
                c cVar = this.f30676c.get(i);
                arrayList.add(new c(m23384j(this.f30677d.f30684b, this.f30674a, this.f30679f, i), cVar.f30684b, cVar.f30685c, cVar.f30686d, cVar.f30687e, cVar.f30688f, cVar.f30689g, cVar.f30690h));
            }
            return new C5201b(this.f30674a, arrayList, this.f30679f, this.f30680g);
        }
    }

    /* renamed from: com.google.android.material.carousel.b$c */
    /* loaded from: classes6.dex */
    public static final class c {

        /* renamed from: a */
        public final float f30683a;

        /* renamed from: b */
        public final float f30684b;

        /* renamed from: c */
        public final float f30685c;

        /* renamed from: d */
        public final float f30686d;

        /* renamed from: e */
        public final boolean f30687e;

        /* renamed from: f */
        public final float f30688f;

        /* renamed from: g */
        public final float f30689g;

        /* renamed from: h */
        public final float f30690h;

        public c(float f, float f2, float f3, float f4) {
            this(f, f2, f3, f4, false, 0.0f, 0.0f, 0.0f);
        }

        /* renamed from: a */
        public static c m23394a(c cVar, c cVar2, @FloatRange(from = 0.0d, m280to = 1.0d) float f) {
            return new c(AnimationUtils.lerp(cVar.f30683a, cVar2.f30683a, f), AnimationUtils.lerp(cVar.f30684b, cVar2.f30684b, f), AnimationUtils.lerp(cVar.f30685c, cVar2.f30685c, f), AnimationUtils.lerp(cVar.f30686d, cVar2.f30686d, f));
        }

        public c(float f, float f2, float f3, float f4, boolean z, float f5, float f6, float f7) {
            this.f30683a = f;
            this.f30684b = f2;
            this.f30685c = f3;
            this.f30686d = f4;
            this.f30687e = z;
            this.f30688f = f5;
            this.f30689g = f6;
            this.f30690h = f7;
        }
    }

    /* renamed from: m */
    public static C5201b m23370m(C5201b c5201b, C5201b c5201b2, float f) {
        if (c5201b.m23377f() != c5201b2.m23377f()) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same item size.");
        }
        List<c> m23378g = c5201b.m23378g();
        List<c> m23378g2 = c5201b2.m23378g();
        if (m23378g.size() != m23378g2.size()) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same number of keylines.");
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < c5201b.m23378g().size(); i++) {
            arrayList.add(c.m23394a(m23378g.get(i), m23378g2.get(i), f));
        }
        return new C5201b(c5201b.m23377f(), arrayList, AnimationUtils.lerp(c5201b.m23373b(), c5201b2.m23373b(), f), AnimationUtils.lerp(c5201b.m23380i(), c5201b2.m23380i(), f));
    }

    /* renamed from: n */
    public static C5201b m23371n(C5201b c5201b, float f) {
        b bVar = new b(c5201b.m23377f(), f);
        float f2 = (f - c5201b.m23381j().f30684b) - (c5201b.m23381j().f30686d / 2.0f);
        int size = c5201b.m23378g().size() - 1;
        while (size >= 0) {
            c cVar = c5201b.m23378g().get(size);
            bVar.m23388d(f2 + (cVar.f30686d / 2.0f), cVar.f30685c, cVar.f30686d, size >= c5201b.m23373b() && size <= c5201b.m23380i(), cVar.f30687e);
            f2 += cVar.f30686d;
            size--;
        }
        return bVar.m23393i();
    }

    /* renamed from: a */
    public c m23372a() {
        return this.f30669b.get(this.f30670c);
    }

    /* renamed from: b */
    public int m23373b() {
        return this.f30670c;
    }

    /* renamed from: c */
    public c m23374c() {
        return this.f30669b.get(0);
    }

    @Nullable
    /* renamed from: d */
    public c m23375d() {
        for (int i = 0; i < this.f30669b.size(); i++) {
            c cVar = this.f30669b.get(i);
            if (!cVar.f30687e) {
                return cVar;
            }
        }
        return null;
    }

    /* renamed from: e */
    public List<c> m23376e() {
        return this.f30669b.subList(this.f30670c, this.f30671d + 1);
    }

    /* renamed from: f */
    public float m23377f() {
        return this.f30668a;
    }

    /* renamed from: g */
    public List<c> m23378g() {
        return this.f30669b;
    }

    /* renamed from: h */
    public c m23379h() {
        return this.f30669b.get(this.f30671d);
    }

    /* renamed from: i */
    public int m23380i() {
        return this.f30671d;
    }

    /* renamed from: j */
    public c m23381j() {
        return this.f30669b.get(r1.size() - 1);
    }

    @Nullable
    /* renamed from: k */
    public c m23382k() {
        for (int size = this.f30669b.size() - 1; size >= 0; size--) {
            c cVar = this.f30669b.get(size);
            if (!cVar.f30687e) {
                return cVar;
            }
        }
        return null;
    }

    /* renamed from: l */
    public int m23383l() {
        Iterator<c> it2 = this.f30669b.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().f30687e) {
                i++;
            }
        }
        return this.f30669b.size() - i;
    }

    public C5201b(float f, List<c> list, int i, int i2) {
        this.f30668a = f;
        this.f30669b = Collections.unmodifiableList(list);
        this.f30670c = i;
        this.f30671d = i2;
    }
}
