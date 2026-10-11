package com.google.android.material.color.utilities;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.color.utilities.DynamicColor;
import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.Hct;
import com.google.android.material.color.utilities.TonalPalette;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Function;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class DynamicColor {

    /* renamed from: a */
    public final HashMap<DynamicScheme, Hct> f30942a;
    public final Function<DynamicScheme, DynamicColor> background;
    public final ContrastCurve contrastCurve;
    public final boolean isBackground;
    public final String name;
    public final Function<DynamicScheme, Double> opacity;
    public final Function<DynamicScheme, TonalPalette> palette;
    public final Function<DynamicScheme, DynamicColor> secondBackground;
    public final Function<DynamicScheme, Double> tone;
    public final Function<DynamicScheme, ToneDeltaPair> toneDeltaPair;

    public DynamicColor(@NonNull String str, @NonNull Function<DynamicScheme, TonalPalette> function, @NonNull Function<DynamicScheme, Double> function2, boolean z, @Nullable Function<DynamicScheme, DynamicColor> function3, @Nullable Function<DynamicScheme, DynamicColor> function4, @Nullable ContrastCurve contrastCurve, @Nullable Function<DynamicScheme, ToneDeltaPair> function5) {
        this.f30942a = new HashMap<>();
        this.name = str;
        this.palette = function;
        this.tone = function2;
        this.isBackground = z;
        this.background = function3;
        this.secondBackground = function4;
        this.contrastCurve = contrastCurve;
        this.toneDeltaPair = function5;
        this.opacity = null;
    }

    /* renamed from: c */
    public static /* synthetic */ TonalPalette m23542c(TonalPalette tonalPalette, DynamicScheme dynamicScheme) {
        return tonalPalette;
    }

    /* renamed from: d */
    public static /* synthetic */ Double m23543d(Hct hct, DynamicScheme dynamicScheme) {
        return Double.valueOf(hct.getTone());
    }

    public static double enableLightForeground(double d) {
        if (!tonePrefersLightForeground(d) || toneAllowsLightForeground(d)) {
            return d;
        }
        return 49.0d;
    }

    public static double foregroundTone(double d, double d2) {
        double lighterUnsafe = Contrast.lighterUnsafe(d, d2);
        double darkerUnsafe = Contrast.darkerUnsafe(d, d2);
        double ratioOfTones = Contrast.ratioOfTones(lighterUnsafe, d);
        double ratioOfTones2 = Contrast.ratioOfTones(darkerUnsafe, d);
        if (tonePrefersLightForeground(d)) {
            return (ratioOfTones >= d2 || ratioOfTones >= ratioOfTones2 || ((Math.abs(ratioOfTones - ratioOfTones2) > 0.1d ? 1 : (Math.abs(ratioOfTones - ratioOfTones2) == 0.1d ? 0 : -1)) < 0 && (ratioOfTones > d2 ? 1 : (ratioOfTones == d2 ? 0 : -1)) < 0 && (ratioOfTones2 > d2 ? 1 : (ratioOfTones2 == d2 ? 0 : -1)) < 0)) ? lighterUnsafe : darkerUnsafe;
        }
        return (ratioOfTones2 >= d2 || ratioOfTones2 >= ratioOfTones) ? darkerUnsafe : lighterUnsafe;
    }

    @NonNull
    public static DynamicColor fromArgb(@NonNull String str, int i) {
        final Hct fromInt = Hct.fromInt(i);
        final TonalPalette fromInt2 = TonalPalette.fromInt(i);
        return fromPalette(str, new Function() { // from class: com.sunia.HTREnginev2.bkf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette m23542c;
                m23542c = DynamicColor.m23542c(TonalPalette.this, (DynamicScheme) obj);
                return m23542c;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.ckf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23543d;
                m23543d = DynamicColor.m23543d(Hct.this, (DynamicScheme) obj);
                return m23543d;
            }
        });
    }

    @NonNull
    public static DynamicColor fromPalette(@NonNull String str, @NonNull Function<DynamicScheme, TonalPalette> function, @NonNull Function<DynamicScheme, Double> function2) {
        return new DynamicColor(str, function, function2, false, null, null, null, null);
    }

    public static boolean toneAllowsLightForeground(double d) {
        return Math.round(d) <= 49;
    }

    public static boolean tonePrefersLightForeground(double d) {
        return Math.round(d) < 60;
    }

    public int getArgb(@NonNull DynamicScheme dynamicScheme) {
        int i = getHct(dynamicScheme).toInt();
        Function<DynamicScheme, Double> function = this.opacity;
        if (function == null) {
            return i;
        }
        return (MathUtils.clampInt(0, 255, (int) Math.round(function.apply(dynamicScheme).doubleValue() * 255.0d)) << 24) | (16777215 & i);
    }

    @NonNull
    public Hct getHct(@NonNull DynamicScheme dynamicScheme) {
        Hct hct = this.f30942a.get(dynamicScheme);
        if (hct != null) {
            return hct;
        }
        Hct hct2 = this.palette.apply(dynamicScheme).getHct(getTone(dynamicScheme));
        if (this.f30942a.size() > 4) {
            this.f30942a.clear();
        }
        this.f30942a.put(dynamicScheme, hct2);
        return hct2;
    }

    public double getTone(@NonNull DynamicScheme dynamicScheme) {
        double d;
        double min;
        boolean z = dynamicScheme.contrastLevel < 0.0d;
        Function<DynamicScheme, ToneDeltaPair> function = this.toneDeltaPair;
        if (function == null) {
            double doubleValue = this.tone.apply(dynamicScheme).doubleValue();
            Function<DynamicScheme, DynamicColor> function2 = this.background;
            if (function2 == null) {
                return doubleValue;
            }
            double tone = function2.apply(dynamicScheme).getTone(dynamicScheme);
            double contrast = this.contrastCurve.getContrast(dynamicScheme.contrastLevel);
            if (Contrast.ratioOfTones(tone, doubleValue) < contrast) {
                doubleValue = foregroundTone(tone, contrast);
            }
            if (z) {
                doubleValue = foregroundTone(tone, contrast);
            }
            double d2 = (!this.isBackground || 50.0d > doubleValue || doubleValue >= 60.0d) ? doubleValue : Contrast.ratioOfTones(49.0d, tone) >= contrast ? 49.0d : 60.0d;
            if (this.secondBackground == null) {
                return d2;
            }
            double tone2 = this.background.apply(dynamicScheme).getTone(dynamicScheme);
            double tone3 = this.secondBackground.apply(dynamicScheme).getTone(dynamicScheme);
            double max = Math.max(tone2, tone3);
            double min2 = Math.min(tone2, tone3);
            if (Contrast.ratioOfTones(max, d2) >= contrast && Contrast.ratioOfTones(min2, d2) >= contrast) {
                return d2;
            }
            double lighter = Contrast.lighter(max, contrast);
            double darker = Contrast.darker(min2, contrast);
            ArrayList arrayList = new ArrayList();
            if (lighter != -1.0d) {
                arrayList.add(Double.valueOf(lighter));
            }
            if (darker != -1.0d) {
                arrayList.add(Double.valueOf(darker));
            }
            if (tonePrefersLightForeground(tone2) || tonePrefersLightForeground(tone3)) {
                if (lighter == -1.0d) {
                    return 100.0d;
                }
                return lighter;
            }
            if (arrayList.size() == 1) {
                return ((Double) arrayList.get(0)).doubleValue();
            }
            if (darker == -1.0d) {
                return 0.0d;
            }
            return darker;
        }
        ToneDeltaPair apply = function.apply(dynamicScheme);
        DynamicColor roleA = apply.getRoleA();
        DynamicColor roleB = apply.getRoleB();
        double delta = apply.getDelta();
        TonePolarity polarity = apply.getPolarity();
        boolean stayTogether = apply.getStayTogether();
        double tone4 = this.background.apply(dynamicScheme).getTone(dynamicScheme);
        boolean z2 = polarity == TonePolarity.NEARER || (polarity == TonePolarity.LIGHTER && !dynamicScheme.isDark) || (polarity == TonePolarity.DARKER && dynamicScheme.isDark);
        DynamicColor dynamicColor = z2 ? roleA : roleB;
        DynamicColor dynamicColor2 = z2 ? roleB : roleA;
        boolean equals = this.name.equals(dynamicColor.name);
        double d3 = dynamicScheme.isDark ? 1.0d : -1.0d;
        double contrast2 = dynamicColor.contrastCurve.getContrast(dynamicScheme.contrastLevel);
        double contrast3 = dynamicColor2.contrastCurve.getContrast(dynamicScheme.contrastLevel);
        double doubleValue2 = dynamicColor.tone.apply(dynamicScheme).doubleValue();
        if (Contrast.ratioOfTones(tone4, doubleValue2) < contrast2) {
            doubleValue2 = foregroundTone(tone4, contrast2);
        }
        double doubleValue3 = dynamicColor2.tone.apply(dynamicScheme).doubleValue();
        if (Contrast.ratioOfTones(tone4, doubleValue3) < contrast3) {
            doubleValue3 = foregroundTone(tone4, contrast3);
        }
        if (z) {
            doubleValue2 = foregroundTone(tone4, contrast2);
            doubleValue3 = foregroundTone(tone4, contrast3);
        }
        if ((doubleValue3 - doubleValue2) * d3 < delta) {
            double d4 = delta * d3;
            doubleValue3 = MathUtils.clampDouble(0.0d, 100.0d, doubleValue2 + d4);
            if ((doubleValue3 - doubleValue2) * d3 < delta) {
                doubleValue2 = MathUtils.clampDouble(0.0d, 100.0d, doubleValue3 - d4);
            }
        }
        if (50.0d > doubleValue2 || doubleValue2 >= 60.0d) {
            if (50.0d > doubleValue3 || doubleValue3 >= 60.0d) {
                d = doubleValue3;
            } else if (!stayTogether) {
                d = d3 > 0.0d ? 60.0d : 49.0d;
            } else if (d3 > 0.0d) {
                d = Math.max(doubleValue3, (delta * d3) + 60.0d);
                doubleValue2 = 60.0d;
            } else {
                min = Math.min(doubleValue3, (delta * d3) + 49.0d);
                d = min;
                doubleValue2 = 49.0d;
            }
        } else if (d3 > 0.0d) {
            d = Math.max(doubleValue3, (delta * d3) + 60.0d);
            doubleValue2 = 60.0d;
        } else {
            min = Math.min(doubleValue3, (delta * d3) + 49.0d);
            d = min;
            doubleValue2 = 49.0d;
        }
        return equals ? doubleValue2 : d;
    }

    @NonNull
    public static DynamicColor fromPalette(@NonNull String str, @NonNull Function<DynamicScheme, TonalPalette> function, @NonNull Function<DynamicScheme, Double> function2, boolean z) {
        return new DynamicColor(str, function, function2, z, null, null, null, null);
    }

    public DynamicColor(@NonNull String str, @NonNull Function<DynamicScheme, TonalPalette> function, @NonNull Function<DynamicScheme, Double> function2, boolean z, @Nullable Function<DynamicScheme, DynamicColor> function3, @Nullable Function<DynamicScheme, DynamicColor> function4, @Nullable ContrastCurve contrastCurve, @Nullable Function<DynamicScheme, ToneDeltaPair> function5, @Nullable Function<DynamicScheme, Double> function6) {
        this.f30942a = new HashMap<>();
        this.name = str;
        this.palette = function;
        this.tone = function2;
        this.isBackground = z;
        this.background = function3;
        this.secondBackground = function4;
        this.contrastCurve = contrastCurve;
        this.toneDeltaPair = function5;
        this.opacity = function6;
    }
}
