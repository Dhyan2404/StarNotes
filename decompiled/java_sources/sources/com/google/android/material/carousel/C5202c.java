package com.google.android.material.carousel;

import androidx.annotation.NonNull;
import androidx.core.math.MathUtils;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.carousel.C5201b;
import com.sunia.HTREnginev2.tnd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.android.material.carousel.c */
/* loaded from: classes6.dex */
public class C5202c {

    /* renamed from: h */
    public static final int f30691h = -1;

    /* renamed from: a */
    public final C5201b f30692a;

    /* renamed from: b */
    public final List<C5201b> f30693b;

    /* renamed from: c */
    public final List<C5201b> f30694c;

    /* renamed from: d */
    public final float[] f30695d;

    /* renamed from: e */
    public final float[] f30696e;

    /* renamed from: f */
    public final float f30697f;

    /* renamed from: g */
    public final float f30698g;

    public C5202c(@NonNull C5201b c5201b, List<C5201b> list, List<C5201b> list2) {
        this.f30692a = c5201b;
        this.f30693b = Collections.unmodifiableList(list);
        this.f30694c = Collections.unmodifiableList(list2);
        float f = list.get(list.size() - 1).m23374c().f30683a - c5201b.m23374c().f30683a;
        this.f30697f = f;
        float f2 = c5201b.m23381j().f30683a - list2.get(list2.size() - 1).m23381j().f30683a;
        this.f30698g = f2;
        this.f30695d = m23400m(f, list, true);
        this.f30696e = m23400m(f2, list2, false);
    }

    /* renamed from: b */
    public static int m23395b(C5201b c5201b, float f) {
        for (int m23380i = c5201b.m23380i(); m23380i < c5201b.m23378g().size(); m23380i++) {
            if (f == c5201b.m23378g().get(m23380i).f30685c) {
                return m23380i;
            }
        }
        return c5201b.m23378g().size() - 1;
    }

    /* renamed from: c */
    public static int m23396c(C5201b c5201b) {
        for (int i = 0; i < c5201b.m23378g().size(); i++) {
            if (!c5201b.m23378g().get(i).f30687e) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: d */
    public static int m23397d(C5201b c5201b, float f) {
        for (int m23373b = c5201b.m23373b() - 1; m23373b >= 0; m23373b--) {
            if (f == c5201b.m23378g().get(m23373b).f30685c) {
                return m23373b;
            }
        }
        return 0;
    }

    /* renamed from: e */
    public static int m23398e(C5201b c5201b) {
        for (int size = c5201b.m23378g().size() - 1; size >= 0; size--) {
            if (!c5201b.m23378g().get(size).f30687e) {
                return size;
            }
        }
        return -1;
    }

    /* renamed from: f */
    public static C5202c m23399f(tnd tndVar, C5201b c5201b, float f, float f2, float f3) {
        return new C5202c(c5201b, m23403p(tndVar, c5201b, f, f2), m23401n(tndVar, c5201b, f, f3));
    }

    /* renamed from: m */
    public static float[] m23400m(float f, List<C5201b> list, boolean z) {
        int size = list.size();
        float[] fArr = new float[size];
        int i = 1;
        while (i < size) {
            int i2 = i - 1;
            C5201b c5201b = list.get(i2);
            C5201b c5201b2 = list.get(i);
            fArr[i] = i == size + (-1) ? 1.0f : fArr[i2] + ((z ? c5201b2.m23374c().f30683a - c5201b.m23374c().f30683a : c5201b.m23381j().f30683a - c5201b2.m23381j().f30683a) / f);
            i++;
        }
        return fArr;
    }

    /* renamed from: n */
    public static List<C5201b> m23401n(tnd tndVar, C5201b c5201b, float f, float f2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(c5201b);
        int m23398e = m23398e(c5201b);
        float containerWidth = tndVar.isHorizontal() ? tndVar.getContainerWidth() : tndVar.getContainerHeight();
        if (m23405r(tndVar, c5201b) || m23398e == -1) {
            if (f2 > 0.0f) {
                arrayList.add(m23408u(c5201b, f2, containerWidth, false, f));
            }
            return arrayList;
        }
        int m23380i = m23398e - c5201b.m23380i();
        float f3 = c5201b.m23374c().f30684b - (c5201b.m23374c().f30686d / 2.0f);
        if (m23380i <= 0 && c5201b.m23379h().f30688f > 0.0f) {
            arrayList.add(m23409v(c5201b, f3 - c5201b.m23379h().f30688f, containerWidth));
            return arrayList;
        }
        float f4 = 0.0f;
        int i = 0;
        while (i < m23380i) {
            C5201b c5201b2 = (C5201b) arrayList.get(arrayList.size() - 1);
            int i2 = m23398e - i;
            float f5 = f4 + c5201b.m23378g().get(i2).f30688f;
            int i3 = i2 + 1;
            int i4 = i;
            C5201b m23407t = m23407t(c5201b2, m23398e, i3 < c5201b.m23378g().size() ? m23397d(c5201b2, c5201b.m23378g().get(i3).f30685c) + 1 : 0, f3 - f5, c5201b.m23373b() + i + 1, c5201b.m23380i() + i + 1, containerWidth);
            if (i4 == m23380i - 1 && f2 > 0.0f) {
                m23407t = m23408u(m23407t, f2, containerWidth, false, f);
            }
            arrayList.add(m23407t);
            i = i4 + 1;
            f4 = f5;
        }
        return arrayList;
    }

    /* renamed from: o */
    public static float[] m23402o(List<C5201b> list, float f, float[] fArr) {
        int size = list.size();
        float f2 = fArr[0];
        int i = 1;
        while (i < size) {
            float f3 = fArr[i];
            if (f <= f3) {
                return new float[]{AnimationUtils.lerp(0.0f, 1.0f, f2, f3, f), i - 1, i};
            }
            i++;
            f2 = f3;
        }
        return new float[]{0.0f, 0.0f, 0.0f};
    }

    /* renamed from: p */
    public static List<C5201b> m23403p(tnd tndVar, C5201b c5201b, float f, float f2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(c5201b);
        int m23396c = m23396c(c5201b);
        float containerWidth = tndVar.isHorizontal() ? tndVar.getContainerWidth() : tndVar.getContainerHeight();
        int i = 1;
        if (m23404q(c5201b) || m23396c == -1) {
            if (f2 > 0.0f) {
                arrayList.add(m23408u(c5201b, f2, containerWidth, true, f));
            }
            return arrayList;
        }
        int m23373b = c5201b.m23373b() - m23396c;
        float f3 = c5201b.m23374c().f30684b - (c5201b.m23374c().f30686d / 2.0f);
        if (m23373b <= 0 && c5201b.m23372a().f30688f > 0.0f) {
            arrayList.add(m23409v(c5201b, f3 + c5201b.m23372a().f30688f, containerWidth));
            return arrayList;
        }
        int i2 = 0;
        float f4 = 0.0f;
        while (i2 < m23373b) {
            C5201b c5201b2 = (C5201b) arrayList.get(arrayList.size() - i);
            int i3 = m23396c + i2;
            int size = c5201b.m23378g().size() - i;
            float f5 = f4 + c5201b.m23378g().get(i3).f30688f;
            int i4 = i3 - i;
            int m23395b = i4 >= 0 ? m23395b(c5201b2, c5201b.m23378g().get(i4).f30685c) - i : size;
            int i5 = i2;
            C5201b m23407t = m23407t(c5201b2, m23396c, m23395b, f3 + f5, (c5201b.m23373b() - i2) - 1, (c5201b.m23380i() - i2) - 1, containerWidth);
            if (i5 == m23373b - 1 && f2 > 0.0f) {
                m23407t = m23408u(m23407t, f2, containerWidth, true, f);
            }
            arrayList.add(m23407t);
            i2 = i5 + 1;
            f4 = f5;
            i = 1;
        }
        return arrayList;
    }

    /* renamed from: q */
    public static boolean m23404q(C5201b c5201b) {
        return c5201b.m23372a().f30684b - (c5201b.m23372a().f30686d / 2.0f) >= 0.0f && c5201b.m23372a() == c5201b.m23375d();
    }

    /* renamed from: r */
    public static boolean m23405r(tnd tndVar, C5201b c5201b) {
        int containerHeight = tndVar.getContainerHeight();
        if (tndVar.isHorizontal()) {
            containerHeight = tndVar.getContainerWidth();
        }
        return c5201b.m23379h().f30684b + (c5201b.m23379h().f30686d / 2.0f) <= ((float) containerHeight) && c5201b.m23379h() == c5201b.m23382k();
    }

    /* renamed from: s */
    public static C5201b m23406s(List<C5201b> list, float f, float[] fArr) {
        float[] m23402o = m23402o(list, f, fArr);
        return C5201b.m23370m(list.get((int) m23402o[1]), list.get((int) m23402o[2]), m23402o[0]);
    }

    /* renamed from: t */
    public static C5201b m23407t(C5201b c5201b, int i, int i2, float f, int i3, int i4, float f2) {
        ArrayList arrayList = new ArrayList(c5201b.m23378g());
        arrayList.add(i2, (C5201b.c) arrayList.remove(i));
        C5201b.b bVar = new C5201b.b(c5201b.m23377f(), f2);
        int i5 = 0;
        while (i5 < arrayList.size()) {
            C5201b.c cVar = (C5201b.c) arrayList.get(i5);
            float f3 = cVar.f30686d;
            bVar.m23389e(f + (f3 / 2.0f), cVar.f30685c, f3, i5 >= i3 && i5 <= i4, cVar.f30687e, cVar.f30688f);
            f += cVar.f30686d;
            i5++;
        }
        return bVar.m23393i();
    }

    /* renamed from: u */
    public static C5201b m23408u(C5201b c5201b, float f, float f2, boolean z, float f3) {
        ArrayList arrayList = new ArrayList(c5201b.m23378g());
        C5201b.b bVar = new C5201b.b(c5201b.m23377f(), f2);
        float m23383l = f / c5201b.m23383l();
        float f4 = z ? f : 0.0f;
        int i = 0;
        while (i < arrayList.size()) {
            C5201b.c cVar = (C5201b.c) arrayList.get(i);
            if (cVar.f30687e) {
                bVar.m23389e(cVar.f30684b, cVar.f30685c, cVar.f30686d, false, true, cVar.f30688f);
            } else {
                boolean z2 = i >= c5201b.m23373b() && i <= c5201b.m23380i();
                float f5 = cVar.f30686d - m23383l;
                float m23345b = CarouselStrategy.m23345b(f5, c5201b.m23377f(), f3);
                float f6 = (f5 / 2.0f) + f4;
                float f7 = f6 - cVar.f30684b;
                bVar.m23390f(f6, m23345b, f5, z2, false, cVar.f30688f, z ? f7 : 0.0f, z ? 0.0f : f7);
                f4 += f5;
            }
            i++;
        }
        return bVar.m23393i();
    }

    /* renamed from: v */
    public static C5201b m23409v(C5201b c5201b, float f, float f2) {
        return m23407t(c5201b, 0, 0, f, c5201b.m23373b(), c5201b.m23380i(), f2);
    }

    /* renamed from: a */
    public final C5201b m23410a(List<C5201b> list, float f, float[] fArr) {
        float[] m23402o = m23402o(list, f, fArr);
        return m23402o[0] >= 0.5f ? list.get((int) m23402o[2]) : list.get((int) m23402o[1]);
    }

    /* renamed from: g */
    public C5201b m23411g() {
        return this.f30692a;
    }

    /* renamed from: h */
    public C5201b m23412h() {
        return this.f30694c.get(r1.size() - 1);
    }

    /* renamed from: i */
    public Map<Integer, C5201b> m23413i(int i, int i2, int i3, boolean z) {
        float m23377f = this.f30692a.m23377f();
        HashMap hashMap = new HashMap();
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i4 >= i) {
                break;
            }
            int i6 = z ? (i - i4) - 1 : i4;
            if (i6 * m23377f * (z ? -1 : 1) > i3 - this.f30698g || i4 >= i - this.f30694c.size()) {
                Integer valueOf = Integer.valueOf(i6);
                List<C5201b> list = this.f30694c;
                hashMap.put(valueOf, list.get(MathUtils.clamp(i5, 0, list.size() - 1)));
                i5++;
            }
            i4++;
        }
        int i7 = 0;
        for (int i8 = i - 1; i8 >= 0; i8--) {
            int i9 = z ? (i - i8) - 1 : i8;
            if (i9 * m23377f * (z ? -1 : 1) < i2 + this.f30697f || i8 < this.f30693b.size()) {
                Integer valueOf2 = Integer.valueOf(i9);
                List<C5201b> list2 = this.f30693b;
                hashMap.put(valueOf2, list2.get(MathUtils.clamp(i7, 0, list2.size() - 1)));
                i7++;
            }
        }
        return hashMap;
    }

    /* renamed from: j */
    public C5201b m23414j(float f, float f2, float f3) {
        return m23415k(f, f2, f3, false);
    }

    /* renamed from: k */
    public C5201b m23415k(float f, float f2, float f3, boolean z) {
        float lerp;
        List<C5201b> list;
        float[] fArr;
        float f4 = this.f30697f + f2;
        float f5 = f3 - this.f30698g;
        float f6 = m23416l().m23372a().f30689g;
        float f7 = m23412h().m23379h().f30690h;
        if (this.f30697f == f6) {
            f4 += f6;
        }
        if (this.f30698g == f7) {
            f5 -= f7;
        }
        if (f < f4) {
            lerp = AnimationUtils.lerp(1.0f, 0.0f, f2, f4, f);
            list = this.f30693b;
            fArr = this.f30695d;
        } else {
            if (f <= f5) {
                return this.f30692a;
            }
            lerp = AnimationUtils.lerp(0.0f, 1.0f, f5, f3, f);
            list = this.f30694c;
            fArr = this.f30696e;
        }
        return z ? m23410a(list, lerp, fArr) : m23406s(list, lerp, fArr);
    }

    /* renamed from: l */
    public C5201b m23416l() {
        return this.f30693b.get(r1.size() - 1);
    }
}
