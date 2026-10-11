package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class TonalPalette {

    /* renamed from: a */
    public Map<Integer, Integer> f31026a = new HashMap();

    /* renamed from: b */
    public Hct f31027b;

    /* renamed from: c */
    public double f31028c;

    /* renamed from: d */
    public double f31029d;

    public TonalPalette(double d, double d2, Hct hct) {
        this.f31028c = d;
        this.f31029d = d2;
        this.f31027b = hct;
    }

    /* renamed from: a */
    public static Hct m23914a(double d, double d2) {
        Hct from = Hct.from(d, d2, 50.0d);
        Hct hct = from;
        double abs = Math.abs(from.getChroma() - d2);
        for (double d3 = 1.0d; d3 < 50.0d && Math.round(d2) != Math.round(hct.getChroma()); d3 += 1.0d) {
            Hct from2 = Hct.from(d, d2, 50.0d + d3);
            double abs2 = Math.abs(from2.getChroma() - d2);
            if (abs2 < abs) {
                hct = from2;
                abs = abs2;
            }
            Hct from3 = Hct.from(d, d2, 50.0d - d3);
            double abs3 = Math.abs(from3.getChroma() - d2);
            if (abs3 < abs) {
                hct = from3;
                abs = abs3;
            }
        }
        return hct;
    }

    public static TonalPalette fromHct(Hct hct) {
        return new TonalPalette(hct.getHue(), hct.getChroma(), hct);
    }

    public static TonalPalette fromHueAndChroma(double d, double d2) {
        return new TonalPalette(d, d2, m23914a(d, d2));
    }

    public static TonalPalette fromInt(int i) {
        return fromHct(Hct.fromInt(i));
    }

    public double getChroma() {
        return this.f31029d;
    }

    public Hct getHct(double d) {
        return Hct.from(this.f31028c, this.f31029d, d);
    }

    public double getHue() {
        return this.f31028c;
    }

    public Hct getKeyColor() {
        return this.f31027b;
    }

    public int tone(int i) {
        Integer num = this.f31026a.get(Integer.valueOf(i));
        if (num == null) {
            num = Integer.valueOf(Hct.from(this.f31028c, this.f31029d, i).toInt());
            this.f31026a.put(Integer.valueOf(i), num);
        }
        return num.intValue();
    }
}
