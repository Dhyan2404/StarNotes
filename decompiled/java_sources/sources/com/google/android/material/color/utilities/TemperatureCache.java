package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import com.google.android.material.color.utilities.Hct;
import com.google.android.material.color.utilities.TemperatureCache;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class TemperatureCache {

    /* renamed from: a */
    public final Hct f31021a;

    /* renamed from: b */
    public Hct f31022b;

    /* renamed from: c */
    public List<Hct> f31023c;

    /* renamed from: d */
    public List<Hct> f31024d;

    /* renamed from: e */
    public Map<Hct, Double> f31025e;

    public TemperatureCache() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: g */
    public static boolean m23907g(double d, double d2, double d3) {
        return d2 < d3 ? d2 <= d && d <= d3 : d2 <= d || d <= d3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ Double m23908h(Hct hct) {
        return m23912e().get(hct);
    }

    public static double rawTemperature(Hct hct) {
        double[] labFromArgb = ColorUtils.labFromArgb(hct.toInt());
        return ((Math.pow(Math.hypot(labFromArgb[1], labFromArgb[2]), 1.07d) * 0.02d) * Math.cos(Math.toRadians(MathUtils.sanitizeDegreesDouble(MathUtils.sanitizeDegreesDouble(Math.toDegrees(Math.atan2(labFromArgb[2], labFromArgb[1]))) - 50.0d)))) - 0.5d;
    }

    /* renamed from: b */
    public final Hct m23909b() {
        return m23911d().get(0);
    }

    /* renamed from: c */
    public final List<Hct> m23910c() {
        List<Hct> list = this.f31024d;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (double d = 0.0d; d <= 360.0d; d += 1.0d) {
            arrayList.add(Hct.from(d, this.f31021a.getChroma(), this.f31021a.getTone()));
        }
        List<Hct> unmodifiableList = Collections.unmodifiableList(arrayList);
        this.f31024d = unmodifiableList;
        return unmodifiableList;
    }

    /* renamed from: d */
    public final List<Hct> m23911d() {
        List<Hct> list = this.f31023c;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList(m23910c());
        arrayList.add(this.f31021a);
        Collections.sort(arrayList, Comparator.comparing(new Function() { // from class: com.sunia.HTREnginev2.san
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23908h;
                m23908h = TemperatureCache.this.m23908h((Hct) obj);
                return m23908h;
            }
        }, new Comparator() { // from class: com.sunia.HTREnginev2.tan
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((Double) obj).compareTo((Double) obj2);
            }
        }));
        this.f31023c = arrayList;
        return arrayList;
    }

    /* renamed from: e */
    public final Map<Hct, Double> m23912e() {
        Map<Hct, Double> map = this.f31025e;
        if (map != null) {
            return map;
        }
        ArrayList<Hct> arrayList = new ArrayList(m23910c());
        arrayList.add(this.f31021a);
        HashMap hashMap = new HashMap();
        for (Hct hct : arrayList) {
            hashMap.put(hct, Double.valueOf(rawTemperature(hct)));
        }
        this.f31025e = hashMap;
        return hashMap;
    }

    /* renamed from: f */
    public final Hct m23913f() {
        return m23911d().get(m23911d().size() - 1);
    }

    public List<Hct> getAnalogousColors() {
        return getAnalogousColors(5, 12);
    }

    public Hct getComplement() {
        Hct hct = this.f31022b;
        if (hct != null) {
            return hct;
        }
        double hue = m23909b().getHue();
        double doubleValue = m23912e().get(m23909b()).doubleValue();
        double hue2 = m23913f().getHue();
        double doubleValue2 = m23912e().get(m23913f()).doubleValue() - doubleValue;
        boolean m23907g = m23907g(this.f31021a.getHue(), hue, hue2);
        double d = m23907g ? hue2 : hue;
        if (!m23907g) {
            hue = hue2;
        }
        Hct hct2 = m23910c().get((int) Math.round(this.f31021a.getHue()));
        double relativeTemperature = 1.0d - getRelativeTemperature(this.f31021a);
        double d2 = 1000.0d;
        for (double d3 = 0.0d; d3 <= 360.0d; d3 += 1.0d) {
            double sanitizeDegreesDouble = MathUtils.sanitizeDegreesDouble(d + (1.0d * d3));
            if (m23907g(sanitizeDegreesDouble, d, hue)) {
                Hct hct3 = m23910c().get((int) Math.round(sanitizeDegreesDouble));
                double abs = Math.abs(relativeTemperature - ((m23912e().get(hct3).doubleValue() - doubleValue) / doubleValue2));
                if (abs < d2) {
                    hct2 = hct3;
                    d2 = abs;
                }
            }
        }
        this.f31022b = hct2;
        return hct2;
    }

    public double getRelativeTemperature(Hct hct) {
        double doubleValue = m23912e().get(m23913f()).doubleValue() - m23912e().get(m23909b()).doubleValue();
        double doubleValue2 = m23912e().get(hct).doubleValue() - m23912e().get(m23909b()).doubleValue();
        if (doubleValue == 0.0d) {
            return 0.5d;
        }
        return doubleValue2 / doubleValue;
    }

    public List<Hct> getAnalogousColors(int i, int i2) {
        int round = (int) Math.round(this.f31021a.getHue());
        Hct hct = m23910c().get(round);
        double relativeTemperature = getRelativeTemperature(hct);
        ArrayList arrayList = new ArrayList();
        arrayList.add(hct);
        double d = 0.0d;
        double d2 = 0.0d;
        int i3 = 0;
        while (i3 < 360) {
            double relativeTemperature2 = getRelativeTemperature(m23910c().get(MathUtils.sanitizeDegreesInt(round + i3)));
            d2 += Math.abs(relativeTemperature2 - relativeTemperature);
            i3++;
            relativeTemperature = relativeTemperature2;
        }
        double d3 = d2 / i2;
        double relativeTemperature3 = getRelativeTemperature(hct);
        int i4 = 1;
        while (true) {
            if (arrayList.size() >= i2) {
                break;
            }
            Hct hct2 = m23910c().get(MathUtils.sanitizeDegreesInt(round + i4));
            double relativeTemperature4 = getRelativeTemperature(hct2);
            d += Math.abs(relativeTemperature4 - relativeTemperature3);
            boolean z = d >= ((double) arrayList.size()) * d3;
            int i5 = 1;
            while (z && arrayList.size() < i2) {
                arrayList.add(hct2);
                z = d >= ((double) (arrayList.size() + i5)) * d3;
                i5++;
            }
            i4++;
            if (i4 > 360) {
                while (arrayList.size() < i2) {
                    arrayList.add(hct2);
                }
            } else {
                relativeTemperature3 = relativeTemperature4;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.f31021a);
        int floor = (int) Math.floor((i - 1.0d) / 2.0d);
        for (int i6 = 1; i6 < floor + 1; i6++) {
            int i7 = 0 - i6;
            while (i7 < 0) {
                i7 += arrayList.size();
            }
            if (i7 >= arrayList.size()) {
                i7 %= arrayList.size();
            }
            arrayList2.add(0, (Hct) arrayList.get(i7));
        }
        int i8 = (i - floor) - 1;
        for (int i9 = 1; i9 < i8 + 1; i9++) {
            int i10 = i9;
            while (i10 < 0) {
                i10 += arrayList.size();
            }
            if (i10 >= arrayList.size()) {
                i10 %= arrayList.size();
            }
            arrayList2.add((Hct) arrayList.get(i10));
        }
        return arrayList2;
    }

    public TemperatureCache(Hct hct) {
        this.f31021a = hct;
    }
}
