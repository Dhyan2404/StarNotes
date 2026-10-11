package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.util.Pair;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;

/* renamed from: com.sunia.HTREnginev2.q1 */
/* loaded from: classes10.dex */
public class C14272q1 {
    /* renamed from: f */
    public static /* synthetic */ double m56583f(Pair pair) {
        return ((Double) pair.getValue()).doubleValue();
    }

    /* renamed from: g */
    public static int m56584g(float f, float f2, float f3, float f4, float f5, float f6) {
        if (f4 == f6) {
            return 0;
        }
        if (f2 < f4 && f2 < f6) {
            return 0;
        }
        if (f2 >= f4 && f2 >= f6) {
            return 0;
        }
        if (f >= f3 && f >= f5) {
            return 0;
        }
        if (f < f3 && f < f5) {
            return f4 < f6 ? 1 : -1;
        }
        if (f >= f3 + (((f2 - f4) * (f5 - f3)) / (f6 - f4))) {
            return 0;
        }
        return f4 < f6 ? 1 : -1;
    }

    /* renamed from: h */
    public static /* synthetic */ Pair m56585h(float f, float f2, C14376s1 c14376s1) {
        return new Pair(c14376s1, Double.valueOf((c14376s1.m57120c() - f) / (c14376s1.m57119b() - f2)));
    }

    /* renamed from: i */
    public static /* synthetic */ boolean m56586i(float f, C14376s1 c14376s1) {
        return c14376s1.m57119b() != f;
    }

    /* renamed from: j */
    public static boolean m56587j(C14376s1 c14376s1, C14376s1 c14376s12, C14376s1 c14376s13, C14376s1 c14376s14) {
        float m56588k = m56588k(c14376s13, c14376s14, c14376s1);
        float m56588k2 = m56588k(c14376s13, c14376s14, c14376s12);
        float m56588k3 = m56588k(c14376s1, c14376s12, c14376s13);
        float m56588k4 = m56588k(c14376s1, c14376s12, c14376s14);
        if (((m56588k > 0.0f && m56588k2 < 0.0f) || (m56588k < 0.0f && m56588k2 > 0.0f)) && ((m56588k3 > 0.0f && m56588k4 < 0.0f) || (m56588k3 < 0.0f && m56588k4 > 0.0f))) {
            return true;
        }
        if (m56588k == 0.0f && m56591n(c14376s13, c14376s14, c14376s1)) {
            return true;
        }
        if (m56588k2 == 0.0f && m56591n(c14376s13, c14376s14, c14376s12)) {
            return true;
        }
        if (m56588k3 == 0.0f && m56591n(c14376s1, c14376s12, c14376s13)) {
            return true;
        }
        return m56588k4 == 0.0f && m56591n(c14376s1, c14376s12, c14376s14);
    }

    /* renamed from: k */
    public static float m56588k(C14376s1 c14376s1, C14376s1 c14376s12, C14376s1 c14376s13) {
        float m57119b = c14376s1.m57119b();
        float m57120c = c14376s1.m57120c();
        float m57119b2 = c14376s12.m57119b() - m57119b;
        float m57120c2 = c14376s12.m57120c() - m57120c;
        return ((c14376s13.m57119b() - m57119b) * m57120c2) - ((c14376s13.m57120c() - m57120c) * m57119b2);
    }

    /* renamed from: l */
    public static /* synthetic */ Float m56589l(Pair pair) {
        return Float.valueOf(((C14376s1) pair.getKey()).m57119b());
    }

    /* renamed from: m */
    public static /* synthetic */ C14376s1 m56590m(Pair pair) {
        return (C14376s1) pair.getKey();
    }

    /* renamed from: n */
    public static boolean m56591n(C14376s1 c14376s1, C14376s1 c14376s12, C14376s1 c14376s13) {
        float m57119b = c14376s1.m57119b();
        float m57120c = c14376s1.m57120c();
        float m57119b2 = c14376s12.m57119b();
        float m57120c2 = c14376s12.m57120c();
        float m57119b3 = c14376s13.m57119b();
        float m57120c3 = c14376s13.m57120c();
        if (m57119b > m57119b2) {
            m57119b2 = m57119b;
            m57119b = m57119b2;
        }
        if (m57120c > m57120c2) {
            m57120c2 = m57120c;
            m57120c = m57120c2;
        }
        return m57119b <= m57119b3 && m57119b3 <= m57119b2 && m57120c <= m57120c3 && m57120c3 <= m57120c2;
    }

    /* renamed from: o */
    public static boolean m56592o(C14376s1 c14376s1, C14376s1 c14376s12, C14376s1 c14376s13) {
        return (((double) (c14376s12.m57119b() - c14376s1.m57119b())) * ((double) (c14376s13.m57120c() - c14376s12.m57120c()))) - (((double) (c14376s13.m57119b() - c14376s12.m57119b())) * ((double) (c14376s12.m57120c() - c14376s1.m57120c()))) > 0.0d;
    }

    /* renamed from: a */
    public static double m56573a(Iterator<C14376s1> it2) {
        double d = 0.0d;
        if (it2.hasNext()) {
            C14376s1 next = it2.next();
            while (it2.hasNext()) {
                C14376s1 next2 = it2.next();
                d += Math.hypot(next2.m57119b() - next.m57119b(), next2.m57120c() - next.m57120c());
                next = next2;
            }
        }
        return d;
    }

    /* renamed from: a */
    public static List<C14376s1> m56576a(List<C14376s1> list) {
        if (list.size() <= 2) {
            return list;
        }
        C14376s1 c14376s1 = null;
        final float f = Float.POSITIVE_INFINITY;
        final float f2 = Float.POSITIVE_INFINITY;
        float f3 = Float.POSITIVE_INFINITY;
        C14376s1 c14376s12 = null;
        for (C14376s1 c14376s13 : list) {
            float m57119b = c14376s13.m57119b();
            float m57120c = c14376s13.m57120c();
            if (m57119b < f) {
                c14376s1 = c14376s13;
                c14376s12 = c14376s1;
                f = m57119b;
                f2 = m57120c;
                f3 = f2;
            } else if (m57119b == f) {
                if (m57120c < f2) {
                    c14376s1 = c14376s13;
                    f2 = m57120c;
                } else if (m57120c > f3) {
                    c14376s12 = c14376s13;
                    f3 = m57120c;
                }
            }
        }
        Iterator it2 = list.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.z4p
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m56586i;
                m56586i = C14272q1.m56586i(f, (C14376s1) obj);
                return m56586i;
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.a5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Pair m56585h;
                m56585h = C14272q1.m56585h(f2, f, (C14376s1) obj);
                return m56585h;
            }
        }).sorted(Comparator.comparingDouble(new ToDoubleFunction() { // from class: com.sunia.HTREnginev2.b5p
            @Override // java.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                double m56583f;
                m56583f = C14272q1.m56583f((Pair) obj);
                return m56583f;
            }
        }).thenComparing(new Function() { // from class: com.sunia.HTREnginev2.c5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Float m56589l;
                m56589l = C14272q1.m56589l((Pair) obj);
                return m56589l;
            }
        })).map(new Function() { // from class: com.sunia.HTREnginev2.d5p
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                C14376s1 m56590m;
                m56590m = C14272q1.m56590m((Pair) obj);
                return m56590m;
            }
        }).iterator();
        ArrayList arrayList = new ArrayList();
        arrayList.add(c14376s1);
        if (it2.hasNext()) {
            arrayList.add((C14376s1) it2.next());
            while (it2.hasNext()) {
                C14376s1 c14376s14 = (C14376s1) it2.next();
                while (arrayList.size() >= 2 && !m56592o((C14376s1) arrayList.get(arrayList.size() - 2), (C14376s1) arrayList.get(arrayList.size() - 1), c14376s14)) {
                    arrayList.remove(arrayList.size() - 1);
                }
                arrayList.add(c14376s14);
            }
        }
        if (f3 != f2) {
            while (arrayList.size() >= 2 && !m56592o((C14376s1) arrayList.get(arrayList.size() - 2), (C14376s1) arrayList.get(arrayList.size() - 1), c14376s12)) {
                arrayList.remove(arrayList.size() - 1);
            }
            arrayList.add(c14376s12);
        }
        return arrayList;
    }

    /* renamed from: a */
    public static double m56574a(List<C14376s1> list, C14376s1 c14376s1, C14376s1 c14376s12) {
        Iterator<C14376s1> it2 = list.iterator();
        double d = 0.0d;
        while (it2.hasNext()) {
            double m56572a = m56572a(it2.next(), c14376s1, c14376s12);
            if (m56572a > d) {
                d = m56572a;
            }
        }
        return d;
    }

    /* renamed from: a */
    public static double m56572a(C14376s1 c14376s1, C14376s1 c14376s12, C14376s1 c14376s13) {
        float m57119b = c14376s1.m57119b();
        float m57120c = c14376s1.m57120c();
        float m57119b2 = c14376s12.m57119b();
        float m57120c2 = c14376s12.m57120c();
        float f = m57119b - m57119b2;
        float f2 = m57120c - m57120c2;
        float m57119b3 = c14376s13.m57119b() - m57119b2;
        float m57120c3 = c14376s13.m57120c() - m57120c2;
        float f3 = (m57119b3 * m57119b3) + (m57120c3 * m57120c3);
        float f4 = 0.0f;
        if (f3 > 0.0f) {
            float f5 = ((f * m57119b3) + (f2 * m57120c3)) / f3;
            if (f5 >= 0.0f) {
                f4 = 1.0f;
                if (f5 <= 1.0f) {
                    f4 = f5;
                }
            }
            return Math.hypot(m57119b - (m57119b2 + (m57119b3 * f4)), m57120c - (m57120c2 + (f4 * m57120c3)));
        }
        return Math.hypot(f, f2);
    }

    /* renamed from: a */
    public static boolean m56578a(Iterator<C14376s1> it2, C14376s1 c14376s1) {
        if (!it2.hasNext()) {
            return false;
        }
        C14376s1 next = it2.next();
        if (!it2.hasNext()) {
            return false;
        }
        float m57119b = c14376s1.m57119b();
        float m57120c = c14376s1.m57120c();
        C14376s1 c14376s12 = next;
        int i = 0;
        while (it2.hasNext()) {
            C14376s1 next2 = it2.next();
            i += m56584g(m57119b, m57120c, c14376s12.m57119b(), c14376s12.m57120c(), next2.m57119b(), next2.m57120c());
            c14376s12 = next2;
        }
        return i + m56584g(m57119b, m57120c, c14376s12.m57119b(), c14376s12.m57120c(), next.m57119b(), next.m57120c()) != 0;
    }

    /* renamed from: a */
    public static boolean m56577a(C14219p1 c14219p1, C14219p1 c14219p12) {
        List<C14376s1> points = c14219p1.getPoints();
        List<C14376s1> points2 = c14219p12.getPoints();
        if (points.size() > 1 && points2.size() > 1) {
            Iterator<C14376s1> it2 = points.iterator();
            C14376s1 next = it2.next();
            while (it2.hasNext()) {
                C14376s1 next2 = it2.next();
                Iterator<C14376s1> it3 = points2.iterator();
                C14376s1 next3 = it3.next();
                while (it3.hasNext()) {
                    C14376s1 next4 = it3.next();
                    if (m56587j(next, next2, next3, next4)) {
                        return true;
                    }
                    next3 = next4;
                }
                next = next2;
            }
        }
        return false;
    }
}
