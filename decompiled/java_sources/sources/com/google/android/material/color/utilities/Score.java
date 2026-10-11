package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class Score {

    /* renamed from: a */
    public static final double f31011a = 48.0d;

    /* renamed from: b */
    public static final double f31012b = 0.7d;

    /* renamed from: c */
    public static final double f31013c = 0.3d;

    /* renamed from: d */
    public static final double f31014d = 0.1d;

    /* renamed from: e */
    public static final double f31015e = 5.0d;

    /* renamed from: f */
    public static final double f31016f = 0.01d;

    /* renamed from: g */
    public static final int f31017g = -12417548;

    /* renamed from: h */
    public static final int f31018h = 4;

    /* renamed from: com.google.android.material.color.utilities.Score$a */
    /* loaded from: classes6.dex */
    public static class C5227a implements Comparator<C5228b> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C5228b c5228b, C5228b c5228b2) {
            return Double.compare(c5228b2.f31020b, c5228b.f31020b);
        }
    }

    /* renamed from: com.google.android.material.color.utilities.Score$b */
    /* loaded from: classes6.dex */
    public static class C5228b {

        /* renamed from: a */
        public final Hct f31019a;

        /* renamed from: b */
        public final double f31020b;

        public C5228b(Hct hct, double d) {
            this.f31019a = hct;
            this.f31020b = d;
        }
    }

    public static List<Integer> score(Map<Integer, Integer> map) {
        return score(map, 4, f31017g, true);
    }

    public static List<Integer> score(Map<Integer, Integer> map, int i) {
        return score(map, i, f31017g, true);
    }

    public static List<Integer> score(Map<Integer, Integer> map, int i, int i2) {
        return score(map, i, i2, true);
    }

    public static List<Integer> score(Map<Integer, Integer> map, int i, int i2, boolean z) {
        boolean z2;
        ArrayList<Hct> arrayList = new ArrayList();
        int[] iArr = new int[360];
        double d = 0.0d;
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            Hct fromInt = Hct.fromInt(entry.getKey().intValue());
            arrayList.add(fromInt);
            int floor = (int) Math.floor(fromInt.getHue());
            int intValue = entry.getValue().intValue();
            iArr[floor] = iArr[floor] + intValue;
            d += intValue;
        }
        double[] dArr = new double[360];
        for (int i3 = 0; i3 < 360; i3++) {
            double d2 = iArr[i3] / d;
            for (int i4 = i3 - 14; i4 < i3 + 16; i4++) {
                int sanitizeDegreesInt = MathUtils.sanitizeDegreesInt(i4);
                dArr[sanitizeDegreesInt] = dArr[sanitizeDegreesInt] + d2;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Hct hct : arrayList) {
            double d3 = dArr[MathUtils.sanitizeDegreesInt((int) Math.round(hct.getHue()))];
            if (!z || (hct.getChroma() >= 5.0d && d3 > 0.01d)) {
                arrayList2.add(new C5228b(hct, (d3 * 100.0d * 0.7d) + ((hct.getChroma() - 48.0d) * (hct.getChroma() < 48.0d ? 0.1d : 0.3d))));
            }
        }
        Collections.sort(arrayList2, new C5227a());
        ArrayList arrayList3 = new ArrayList();
        for (int i5 = 90; i5 >= 15; i5--) {
            arrayList3.clear();
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Hct hct2 = ((C5228b) it2.next()).f31019a;
                Iterator it3 = arrayList3.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        z2 = false;
                        break;
                    }
                    if (MathUtils.differenceDegrees(hct2.getHue(), ((Hct) it3.next()).getHue()) < i5) {
                        z2 = true;
                        break;
                    }
                }
                if (!z2) {
                    arrayList3.add(hct2);
                }
                if (arrayList3.size() >= i) {
                    break;
                }
            }
            if (arrayList3.size() >= i) {
                break;
            }
        }
        ArrayList arrayList4 = new ArrayList();
        if (arrayList3.isEmpty()) {
            arrayList4.add(Integer.valueOf(i2));
            return arrayList4;
        }
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            arrayList4.add(Integer.valueOf(((Hct) it4.next()).toInt()));
        }
        return arrayList4;
    }
}
