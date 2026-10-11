package androidx.palette.graphics;

import android.graphics.Color;
import android.util.TimingLogger;
import androidx.annotation.Nullable;
import androidx.core.graphics.ColorUtils;
import androidx.palette.graphics.Palette;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

/* renamed from: androidx.palette.graphics.a */
/* loaded from: classes3.dex */
public final class C1239a {

    /* renamed from: g */
    public static final String f8670g = "ColorCutQuantizer";

    /* renamed from: h */
    public static final boolean f8671h = false;

    /* renamed from: i */
    public static final int f8672i = -3;

    /* renamed from: j */
    public static final int f8673j = -2;

    /* renamed from: k */
    public static final int f8674k = -1;

    /* renamed from: l */
    public static final int f8675l = 5;

    /* renamed from: m */
    public static final int f8676m = 31;

    /* renamed from: n */
    public static final Comparator<b> f8677n = new a();

    /* renamed from: a */
    public final int[] f8678a;

    /* renamed from: b */
    public final int[] f8679b;

    /* renamed from: c */
    public final List<Palette.Swatch> f8680c;

    /* renamed from: e */
    public final Palette.Filter[] f8682e;

    /* renamed from: f */
    public final float[] f8683f = new float[3];

    /* renamed from: d */
    @Nullable
    public final TimingLogger f8681d = null;

    /* renamed from: androidx.palette.graphics.a$a */
    /* loaded from: classes3.dex */
    public static class a implements Comparator<b> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            return bVar2.m5261g() - bVar.m5261g();
        }
    }

    /* renamed from: androidx.palette.graphics.a$b */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a */
        public int f8684a;

        /* renamed from: b */
        public int f8685b;

        /* renamed from: c */
        public int f8686c;

        /* renamed from: d */
        public int f8687d;

        /* renamed from: e */
        public int f8688e;

        /* renamed from: f */
        public int f8689f;

        /* renamed from: g */
        public int f8690g;

        /* renamed from: h */
        public int f8691h;

        /* renamed from: i */
        public int f8692i;

        public b(int i, int i2) {
            this.f8684a = i;
            this.f8685b = i2;
            m5257c();
        }

        /* renamed from: a */
        public final boolean m5255a() {
            return m5259e() > 1;
        }

        /* renamed from: b */
        public final int m5256b() {
            int m5260f = m5260f();
            C1239a c1239a = C1239a.this;
            int[] iArr = c1239a.f8678a;
            int[] iArr2 = c1239a.f8679b;
            C1239a.m5241e(iArr, m5260f, this.f8684a, this.f8685b);
            Arrays.sort(iArr, this.f8684a, this.f8685b + 1);
            C1239a.m5241e(iArr, m5260f, this.f8684a, this.f8685b);
            int i = this.f8686c / 2;
            int i2 = this.f8684a;
            int i3 = 0;
            while (true) {
                int i4 = this.f8685b;
                if (i2 > i4) {
                    return this.f8684a;
                }
                i3 += iArr2[iArr[i2]];
                if (i3 >= i) {
                    return Math.min(i4 - 1, i2);
                }
                i2++;
            }
        }

        /* renamed from: c */
        public final void m5257c() {
            C1239a c1239a = C1239a.this;
            int[] iArr = c1239a.f8678a;
            int[] iArr2 = c1239a.f8679b;
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE;
            int i5 = 0;
            int i6 = Integer.MAX_VALUE;
            int i7 = Integer.MAX_VALUE;
            for (int i8 = this.f8684a; i8 <= this.f8685b; i8++) {
                int i9 = iArr[i8];
                i5 += iArr2[i9];
                int m5246k = C1239a.m5246k(i9);
                int m5245j = C1239a.m5245j(i9);
                int m5244i = C1239a.m5244i(i9);
                if (m5246k > i2) {
                    i2 = m5246k;
                }
                if (m5246k < i) {
                    i = m5246k;
                }
                if (m5245j > i3) {
                    i3 = m5245j;
                }
                if (m5245j < i6) {
                    i6 = m5245j;
                }
                if (m5244i > i4) {
                    i4 = m5244i;
                }
                if (m5244i < i7) {
                    i7 = m5244i;
                }
            }
            this.f8687d = i;
            this.f8688e = i2;
            this.f8689f = i6;
            this.f8690g = i3;
            this.f8691h = i7;
            this.f8692i = i4;
            this.f8686c = i5;
        }

        /* renamed from: d */
        public final Palette.Swatch m5258d() {
            C1239a c1239a = C1239a.this;
            int[] iArr = c1239a.f8678a;
            int[] iArr2 = c1239a.f8679b;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = this.f8684a; i5 <= this.f8685b; i5++) {
                int i6 = iArr[i5];
                int i7 = iArr2[i6];
                i2 += i7;
                i += C1239a.m5246k(i6) * i7;
                i3 += C1239a.m5245j(i6) * i7;
                i4 += i7 * C1239a.m5244i(i6);
            }
            float f = i2;
            return new Palette.Swatch(C1239a.m5240b(Math.round(i / f), Math.round(i3 / f), Math.round(i4 / f)), i2);
        }

        /* renamed from: e */
        public final int m5259e() {
            return (this.f8685b + 1) - this.f8684a;
        }

        /* renamed from: f */
        public final int m5260f() {
            int i = this.f8688e - this.f8687d;
            int i2 = this.f8690g - this.f8689f;
            int i3 = this.f8692i - this.f8691h;
            if (i < i2 || i < i3) {
                return (i2 < i || i2 < i3) ? -1 : -2;
            }
            return -3;
        }

        /* renamed from: g */
        public final int m5261g() {
            return ((this.f8688e - this.f8687d) + 1) * ((this.f8690g - this.f8689f) + 1) * ((this.f8692i - this.f8691h) + 1);
        }

        /* renamed from: h */
        public final b m5262h() {
            if (!m5255a()) {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
            int m5256b = m5256b();
            b bVar = new b(m5256b + 1, this.f8685b);
            this.f8685b = m5256b;
            m5257c();
            return bVar;
        }
    }

    public C1239a(int[] iArr, int i, Palette.Filter[] filterArr) {
        this.f8682e = filterArr;
        int[] iArr2 = new int[32768];
        this.f8679b = iArr2;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int m5243g = m5243g(iArr[i2]);
            iArr[i2] = m5243g;
            iArr2[m5243g] = iArr2[m5243g] + 1;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < 32768; i4++) {
            if (iArr2[i4] > 0 && m5250l(i4)) {
                iArr2[i4] = 0;
            }
            if (iArr2[i4] > 0) {
                i3++;
            }
        }
        int[] iArr3 = new int[i3];
        this.f8678a = iArr3;
        int i5 = 0;
        for (int i6 = 0; i6 < 32768; i6++) {
            if (iArr2[i6] > 0) {
                iArr3[i5] = i6;
                i5++;
            }
        }
        if (i3 > i) {
            this.f8680c = m5249h(i);
            return;
        }
        this.f8680c = new ArrayList();
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = iArr3[i7];
            this.f8680c.add(new Palette.Swatch(m5239a(i8), iArr2[i8]));
        }
    }

    /* renamed from: a */
    public static int m5239a(int i) {
        return m5240b(m5246k(i), m5245j(i), m5244i(i));
    }

    /* renamed from: b */
    public static int m5240b(int i, int i2, int i3) {
        return Color.rgb(m5242f(i, 5, 8), m5242f(i2, 5, 8), m5242f(i3, 5, 8));
    }

    /* renamed from: e */
    public static void m5241e(int[] iArr, int i, int i2, int i3) {
        if (i == -2) {
            while (i2 <= i3) {
                int i4 = iArr[i2];
                iArr[i2] = m5244i(i4) | (m5245j(i4) << 10) | (m5246k(i4) << 5);
                i2++;
            }
            return;
        }
        if (i != -1) {
            return;
        }
        while (i2 <= i3) {
            int i5 = iArr[i2];
            iArr[i2] = m5246k(i5) | (m5244i(i5) << 10) | (m5245j(i5) << 5);
            i2++;
        }
    }

    /* renamed from: f */
    public static int m5242f(int i, int i2, int i3) {
        return (i3 > i2 ? i << (i3 - i2) : i >> (i2 - i3)) & ((1 << i3) - 1);
    }

    /* renamed from: g */
    public static int m5243g(int i) {
        return m5242f(Color.blue(i), 8, 5) | (m5242f(Color.red(i), 8, 5) << 10) | (m5242f(Color.green(i), 8, 5) << 5);
    }

    /* renamed from: i */
    public static int m5244i(int i) {
        return i & 31;
    }

    /* renamed from: j */
    public static int m5245j(int i) {
        return (i >> 5) & 31;
    }

    /* renamed from: k */
    public static int m5246k(int i) {
        return (i >> 10) & 31;
    }

    /* renamed from: c */
    public final List<Palette.Swatch> m5247c(Collection<b> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<b> it2 = collection.iterator();
        while (it2.hasNext()) {
            Palette.Swatch m5258d = it2.next().m5258d();
            if (!m5252n(m5258d)) {
                arrayList.add(m5258d);
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public List<Palette.Swatch> m5248d() {
        return this.f8680c;
    }

    /* renamed from: h */
    public final List<Palette.Swatch> m5249h(int i) {
        PriorityQueue<b> priorityQueue = new PriorityQueue<>(i, f8677n);
        priorityQueue.offer(new b(0, this.f8678a.length - 1));
        m5253o(priorityQueue, i);
        return m5247c(priorityQueue);
    }

    /* renamed from: l */
    public final boolean m5250l(int i) {
        int m5239a = m5239a(i);
        ColorUtils.colorToHSL(m5239a, this.f8683f);
        return m5251m(m5239a, this.f8683f);
    }

    /* renamed from: m */
    public final boolean m5251m(int i, float[] fArr) {
        Palette.Filter[] filterArr = this.f8682e;
        if (filterArr != null && filterArr.length > 0) {
            int length = filterArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (!this.f8682e[i2].isAllowed(i, fArr)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: n */
    public final boolean m5252n(Palette.Swatch swatch) {
        return m5251m(swatch.getRgb(), swatch.getHsl());
    }

    /* renamed from: o */
    public final void m5253o(PriorityQueue<b> priorityQueue, int i) {
        b poll;
        while (priorityQueue.size() < i && (poll = priorityQueue.poll()) != null && poll.m5255a()) {
            priorityQueue.offer(poll.m5262h());
            priorityQueue.offer(poll);
        }
    }
}
