package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.sunia.HTREnginev2.r1 */
/* loaded from: classes10.dex */
public class C14330r1 {
    /* renamed from: a */
    public static C14219p1 m56877a(C14219p1 c14219p1, int i, double d) {
        double d2;
        double d3;
        ArrayList arrayList = new ArrayList(i);
        Iterator<C14376s1> it2 = c14219p1.getPoints().iterator();
        C14376s1 next = it2.next();
        C14376s1 next2 = it2.hasNext() ? it2.next() : next;
        double hypot = Math.hypot(next2.m57119b() - next.m57119b(), next2.m57120c() - next.m57120c());
        int i2 = i - 1;
        double d4 = 0.0d;
        for (int i3 = 0; i3 <= i2; i3++) {
            while (true) {
                double d5 = d4 + hypot;
                d2 = i2;
                d3 = i3 * d;
                if (d5 * d2 > d3 || !it2.hasNext()) {
                    break;
                }
                C14376s1 next3 = it2.next();
                hypot = Math.hypot(next3.m57119b() - next2.m57119b(), next3.m57120c() - next2.m57120c());
                d4 = d5;
                C14376s1 c14376s1 = next2;
                next2 = next3;
                next = c14376s1;
            }
            float f = hypot > 0.0d ? (float) (((d3 / d2) - d4) / hypot) : 1.0f;
            float f2 = 1.0f - f;
            arrayList.add(new C14376s1((next.m57119b() * f2) + (next2.m57119b() * f), (f2 * next.m57120c()) + (f * next2.m57120c())));
        }
        return new C14219p1(arrayList);
    }

    /* renamed from: a */
    public static double m56876a(C14219p1 c14219p1) {
        Iterator<C14376s1> it2 = c14219p1.getPoints().iterator();
        C14376s1 next = it2.next();
        double d = 0.0d;
        while (it2.hasNext()) {
            C14376s1 next2 = it2.next();
            d += Math.hypot(next2.m57119b() - next.m57119b(), next2.m57120c() - next.m57120c());
            next = next2;
        }
        return d;
    }
}
