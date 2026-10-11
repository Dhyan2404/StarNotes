package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.upstream.SlidingPercentile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* loaded from: classes5.dex */
public class SlidingPercentile {

    /* renamed from: h */
    public static final Comparator<C5005b> f28136h = new Comparator() { // from class: com.sunia.HTREnginev2.oum
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m21361e;
            m21361e = SlidingPercentile.m21361e((SlidingPercentile.C5005b) obj, (SlidingPercentile.C5005b) obj2);
            return m21361e;
        }
    };

    /* renamed from: i */
    public static final Comparator<C5005b> f28137i = new Comparator() { // from class: com.sunia.HTREnginev2.pum
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m21362f;
            m21362f = SlidingPercentile.m21362f((SlidingPercentile.C5005b) obj, (SlidingPercentile.C5005b) obj2);
            return m21362f;
        }
    };

    /* renamed from: j */
    public static final int f28138j = -1;

    /* renamed from: k */
    public static final int f28139k = 0;

    /* renamed from: l */
    public static final int f28140l = 1;

    /* renamed from: m */
    public static final int f28141m = 5;

    /* renamed from: a */
    public final int f28142a;

    /* renamed from: e */
    public int f28146e;

    /* renamed from: f */
    public int f28147f;

    /* renamed from: g */
    public int f28148g;

    /* renamed from: c */
    public final C5005b[] f28144c = new C5005b[5];

    /* renamed from: b */
    public final ArrayList<C5005b> f28143b = new ArrayList<>();

    /* renamed from: d */
    public int f28145d = -1;

    /* renamed from: com.google.android.exoplayer2.upstream.SlidingPercentile$b */
    /* loaded from: classes5.dex */
    public static class C5005b {

        /* renamed from: a */
        public int f28149a;

        /* renamed from: b */
        public int f28150b;

        /* renamed from: c */
        public float f28151c;

        public C5005b() {
        }
    }

    public SlidingPercentile(int i) {
        this.f28142a = i;
    }

    /* renamed from: e */
    public static /* synthetic */ int m21361e(C5005b c5005b, C5005b c5005b2) {
        return c5005b.f28149a - c5005b2.f28149a;
    }

    /* renamed from: f */
    public static /* synthetic */ int m21362f(C5005b c5005b, C5005b c5005b2) {
        return Float.compare(c5005b.f28151c, c5005b2.f28151c);
    }

    public void addSample(int i, float f) {
        C5005b c5005b;
        m21363c();
        int i2 = this.f28148g;
        if (i2 > 0) {
            C5005b[] c5005bArr = this.f28144c;
            int i3 = i2 - 1;
            this.f28148g = i3;
            c5005b = c5005bArr[i3];
        } else {
            c5005b = new C5005b();
        }
        int i4 = this.f28146e;
        this.f28146e = i4 + 1;
        c5005b.f28149a = i4;
        c5005b.f28150b = i;
        c5005b.f28151c = f;
        this.f28143b.add(c5005b);
        this.f28147f += i;
        while (true) {
            int i5 = this.f28147f;
            int i6 = this.f28142a;
            if (i5 <= i6) {
                return;
            }
            int i7 = i5 - i6;
            C5005b c5005b2 = this.f28143b.get(0);
            int i8 = c5005b2.f28150b;
            if (i8 <= i7) {
                this.f28147f -= i8;
                this.f28143b.remove(0);
                int i9 = this.f28148g;
                if (i9 < 5) {
                    C5005b[] c5005bArr2 = this.f28144c;
                    this.f28148g = i9 + 1;
                    c5005bArr2[i9] = c5005b2;
                }
            } else {
                c5005b2.f28150b = i8 - i7;
                this.f28147f -= i7;
            }
        }
    }

    /* renamed from: c */
    public final void m21363c() {
        if (this.f28145d != 1) {
            Collections.sort(this.f28143b, f28136h);
            this.f28145d = 1;
        }
    }

    /* renamed from: d */
    public final void m21364d() {
        if (this.f28145d != 0) {
            Collections.sort(this.f28143b, f28137i);
            this.f28145d = 0;
        }
    }

    public float getPercentile(float f) {
        m21364d();
        float f2 = f * this.f28147f;
        int i = 0;
        for (int i2 = 0; i2 < this.f28143b.size(); i2++) {
            C5005b c5005b = this.f28143b.get(i2);
            i += c5005b.f28150b;
            if (i >= f2) {
                return c5005b.f28151c;
            }
        }
        if (this.f28143b.isEmpty()) {
            return Float.NaN;
        }
        return this.f28143b.get(r4.size() - 1).f28151c;
    }

    public void reset() {
        this.f28143b.clear();
        this.f28145d = -1;
        this.f28146e = 0;
        this.f28147f = 0;
    }
}
