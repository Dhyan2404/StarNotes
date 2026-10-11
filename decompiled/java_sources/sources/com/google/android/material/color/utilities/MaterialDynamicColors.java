package com.google.android.material.color.utilities;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import com.google.android.material.color.utilities.DynamicColor;
import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import com.google.android.material.color.utilities.TonalPalette;
import com.google.android.material.color.utilities.ToneDeltaPair;
import com.sunia.HTREnginev2.gdj;
import java.util.function.Function;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class MaterialDynamicColors {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A2 */
    public /* synthetic */ DynamicColor m23565A2(DynamicScheme dynamicScheme) {
        return inverseSurface();
    }

    /* renamed from: A3 */
    public static /* synthetic */ Double m23566A3(DynamicScheme dynamicScheme) {
        if (m23777i2(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 10.0d : 90.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    /* renamed from: A4 */
    public static /* synthetic */ Double m23567A4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 24.0d : 98.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B3 */
    public /* synthetic */ DynamicColor m23572B3(DynamicScheme dynamicScheme) {
        return tertiary();
    }

    /* renamed from: C2 */
    public static /* synthetic */ Double m23577C2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 40.0d : 80.0d);
    }

    /* renamed from: C4 */
    public static /* synthetic */ Double m23579C4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 12.0d : 94.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D2 */
    public /* synthetic */ DynamicColor m23583D2(DynamicScheme dynamicScheme) {
        return inverseSurface();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D3 */
    public /* synthetic */ Double m23584D3(DynamicScheme dynamicScheme) {
        if (m23777i2(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 0.0d : 100.0d);
        }
        if (m23770h2(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(tertiaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public /* synthetic */ DynamicColor m23590E3(DynamicScheme dynamicScheme) {
        return tertiaryContainer();
    }

    /* renamed from: E4 */
    public static /* synthetic */ Double m23591E4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 17.0d : 92.0d);
    }

    /* renamed from: F2 */
    public static /* synthetic */ Double m23595F2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 20.0d);
    }

    /* renamed from: G3 */
    public static /* synthetic */ Double m23602G3(DynamicScheme dynamicScheme) {
        return Double.valueOf(m23777i2(dynamicScheme) ? 100.0d : 10.0d);
    }

    /* renamed from: G4 */
    public static /* synthetic */ Double m23603G4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 22.0d : 90.0d);
    }

    /* renamed from: H2 */
    public static /* synthetic */ Double m23607H2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.neutralPalette.getKeyColor().getTone());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H3 */
    public /* synthetic */ DynamicColor m23608H3(DynamicScheme dynamicScheme) {
        return tertiaryFixedDim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I3 */
    public /* synthetic */ DynamicColor m23614I3(DynamicScheme dynamicScheme) {
        return tertiaryFixed();
    }

    /* renamed from: I4 */
    public static /* synthetic */ Double m23615I4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 10.0d : 96.0d);
    }

    /* renamed from: J2 */
    public static /* synthetic */ Double m23619J2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.neutralVariantPalette.getKeyColor().getTone());
    }

    /* renamed from: K3 */
    public static /* synthetic */ Double m23626K3(DynamicScheme dynamicScheme) {
        return Double.valueOf(m23777i2(dynamicScheme) ? 90.0d : 30.0d);
    }

    /* renamed from: K4 */
    public static /* synthetic */ Double m23627K4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 4.0d : 100.0d);
    }

    /* renamed from: L2 */
    public static /* synthetic */ Double m23631L2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L3 */
    public /* synthetic */ DynamicColor m23632L3(DynamicScheme dynamicScheme) {
        return tertiaryFixedDim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M2 */
    public /* synthetic */ DynamicColor m23637M2(DynamicScheme dynamicScheme) {
        return background();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M3 */
    public /* synthetic */ DynamicColor m23638M3(DynamicScheme dynamicScheme) {
        return tertiaryFixed();
    }

    /* renamed from: M4 */
    public static /* synthetic */ Double m23639M4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 6.0d : 87.0d);
    }

    /* renamed from: O2 */
    public static /* synthetic */ Double m23649O2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    /* renamed from: O3 */
    public static /* synthetic */ Double m23650O3(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 60.0d : 50.0d);
    }

    /* renamed from: O4 */
    public static /* synthetic */ Double m23651O4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 40.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P2 */
    public /* synthetic */ DynamicColor m23655P2(DynamicScheme dynamicScheme) {
        return error();
    }

    /* renamed from: Q3 */
    public static /* synthetic */ Double m23662Q3(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 80.0d);
    }

    /* renamed from: Q4 */
    public static /* synthetic */ Double m23663Q4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 90.0d);
    }

    /* renamed from: R2 */
    public static /* synthetic */ Double m23667R2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S2 */
    public /* synthetic */ DynamicColor m23673S2(DynamicScheme dynamicScheme) {
        return errorContainer();
    }

    /* renamed from: S3 */
    public static /* synthetic */ Double m23674S3(DynamicScheme dynamicScheme) {
        if (m23777i2(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 100.0d : 0.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 40.0d);
    }

    /* renamed from: S4 */
    public static /* synthetic */ Double m23675S4(DynamicScheme dynamicScheme) {
        if (m23777i2(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 90.0d : 25.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 40.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: T3 */
    public /* synthetic */ ToneDeltaPair m23680T3(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryContainer(), primary(), 15.0d, TonePolarity.NEARER, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: T4 */
    public /* synthetic */ ToneDeltaPair m23681T4(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryContainer(), tertiary(), 15.0d, TonePolarity.NEARER, false);
    }

    /* renamed from: U2 */
    public static /* synthetic */ Double m23685U2(DynamicScheme dynamicScheme) {
        if (m23777i2(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 10.0d : 90.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V2 */
    public /* synthetic */ DynamicColor m23691V2(DynamicScheme dynamicScheme) {
        return primary();
    }

    /* renamed from: V3 */
    public static /* synthetic */ Double m23692V3(DynamicScheme dynamicScheme) {
        if (m23770h2(dynamicScheme)) {
            return Double.valueOf(m23829p5(dynamicScheme.sourceColorHct, dynamicScheme));
        }
        if (m23777i2(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 85.0d : 25.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 90.0d);
    }

    /* renamed from: V4 */
    public static /* synthetic */ Double m23693V4(DynamicScheme dynamicScheme) {
        if (m23777i2(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 60.0d : 49.0d);
        }
        if (m23770h2(dynamicScheme)) {
            return Double.valueOf(DislikeAnalyzer.fixIfDisliked(dynamicScheme.tertiaryPalette.getHct(m23829p5(dynamicScheme.tertiaryPalette.getHct(dynamicScheme.sourceColorHct.getTone()), dynamicScheme))).getTone());
        }
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W3 */
    public /* synthetic */ ToneDeltaPair m23698W3(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryContainer(), primary(), 15.0d, TonePolarity.NEARER, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W4 */
    public /* synthetic */ ToneDeltaPair m23699W4(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryContainer(), tertiary(), 15.0d, TonePolarity.NEARER, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X2 */
    public /* synthetic */ Double m23703X2(DynamicScheme dynamicScheme) {
        if (m23770h2(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(primaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        if (m23777i2(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 0.0d : 100.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y2 */
    public /* synthetic */ DynamicColor m23709Y2(DynamicScheme dynamicScheme) {
        return primaryContainer();
    }

    /* renamed from: Y3 */
    public static /* synthetic */ Double m23710Y3(DynamicScheme dynamicScheme) {
        return Double.valueOf(m23777i2(dynamicScheme) ? 40.0d : 90.0d);
    }

    /* renamed from: Y4 */
    public static /* synthetic */ Double m23711Y4(DynamicScheme dynamicScheme) {
        return Double.valueOf(m23777i2(dynamicScheme) ? 40.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z3 */
    public /* synthetic */ ToneDeltaPair m23716Z3(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryFixed(), primaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z4 */
    public /* synthetic */ ToneDeltaPair m23717Z4(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryFixed(), tertiaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    /* renamed from: a3 */
    public static /* synthetic */ Double m23722a3(DynamicScheme dynamicScheme) {
        return Double.valueOf(m23777i2(dynamicScheme) ? 100.0d : 10.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b3 */
    public /* synthetic */ DynamicColor m23729b3(DynamicScheme dynamicScheme) {
        return primaryFixedDim();
    }

    /* renamed from: b4 */
    public static /* synthetic */ Double m23730b4(DynamicScheme dynamicScheme) {
        return Double.valueOf(m23777i2(dynamicScheme) ? 30.0d : 80.0d);
    }

    /* renamed from: b5 */
    public static /* synthetic */ Double m23731b5(DynamicScheme dynamicScheme) {
        return Double.valueOf(m23777i2(dynamicScheme) ? 30.0d : 80.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c3 */
    public /* synthetic */ DynamicColor m23736c3(DynamicScheme dynamicScheme) {
        return primaryFixed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c4 */
    public /* synthetic */ ToneDeltaPair m23737c4(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryFixed(), primaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c5 */
    public /* synthetic */ ToneDeltaPair m23738c5(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryFixed(), tertiaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    /* renamed from: e3 */
    public static /* synthetic */ Double m23750e3(DynamicScheme dynamicScheme) {
        return Double.valueOf(m23777i2(dynamicScheme) ? 90.0d : 30.0d);
    }

    /* renamed from: e4 */
    public static /* synthetic */ Double m23751e4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.primaryPalette.getKeyColor().getTone());
    }

    /* renamed from: e5 */
    public static /* synthetic */ Double m23752e5(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.tertiaryPalette.getKeyColor().getTone());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f3 */
    public /* synthetic */ DynamicColor m23757f3(DynamicScheme dynamicScheme) {
        return primaryFixedDim();
    }

    /* renamed from: g2 */
    public static double m23763g2(double d, double d2, double d3, boolean z) {
        Hct from = Hct.from(d, d2, d3);
        if (from.getChroma() >= d2) {
            return d3;
        }
        Hct hct = from;
        double chroma = from.getChroma();
        double d4 = d3;
        while (hct.getChroma() < d2) {
            double d5 = d4 + (z ? -1.0d : 1.0d);
            Hct from2 = Hct.from(d, d2, d5);
            if (chroma > from2.getChroma() || Math.abs(from2.getChroma() - d2) < 0.4d) {
                return d5;
            }
            if (Math.abs(from2.getChroma() - d2) < Math.abs(hct.getChroma() - d2)) {
                hct = from2;
            }
            chroma = Math.max(chroma, from2.getChroma());
            d4 = d5;
        }
        return d4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g3 */
    public /* synthetic */ DynamicColor m23764g3(DynamicScheme dynamicScheme) {
        return primaryFixed();
    }

    /* renamed from: g4 */
    public static /* synthetic */ Double m23765g4(DynamicScheme dynamicScheme) {
        return Double.valueOf(0.0d);
    }

    /* renamed from: g5 */
    public static /* synthetic */ Double m23766g5(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 10.0d : 90.0d);
    }

    /* renamed from: h2 */
    public static boolean m23770h2(DynamicScheme dynamicScheme) {
        Variant variant = dynamicScheme.variant;
        return variant == Variant.FIDELITY || variant == Variant.CONTENT;
    }

    /* renamed from: i2 */
    public static boolean m23777i2(DynamicScheme dynamicScheme) {
        return dynamicScheme.variant == Variant.MONOCHROME;
    }

    /* renamed from: i3 */
    public static /* synthetic */ Double m23778i3(DynamicScheme dynamicScheme) {
        if (m23777i2(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 10.0d : 100.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    /* renamed from: i4 */
    public static /* synthetic */ Double m23779i4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 40.0d);
    }

    /* renamed from: i5 */
    public static /* synthetic */ Double m23780i5(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 10.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ DynamicColor m23785j3(DynamicScheme dynamicScheme) {
        return secondary();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j4 */
    public /* synthetic */ ToneDeltaPair m23786j4(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryContainer(), secondary(), 15.0d, TonePolarity.NEARER, false);
    }

    /* renamed from: k2 */
    public static /* synthetic */ Double m23791k2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 6.0d : 98.0d);
    }

    /* renamed from: k5 */
    public static /* synthetic */ Double m23794k5(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 10.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ Double m23799l3(DynamicScheme dynamicScheme) {
        if (m23770h2(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(secondaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
    }

    /* renamed from: l4 */
    public static /* synthetic */ Double m23800l4(DynamicScheme dynamicScheme) {
        double d = dynamicScheme.isDark ? 30.0d : 90.0d;
        if (m23777i2(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 30.0d : 85.0d);
        }
        if (m23770h2(dynamicScheme)) {
            return Double.valueOf(m23829p5(dynamicScheme.secondaryPalette.getHct(m23763g2(dynamicScheme.secondaryPalette.getHue(), dynamicScheme.secondaryPalette.getChroma(), d, !dynamicScheme.isDark)), dynamicScheme));
        }
        return Double.valueOf(d);
    }

    /* renamed from: m2 */
    public static /* synthetic */ Double m23805m2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 90.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ DynamicColor m23806m3(DynamicScheme dynamicScheme) {
        return secondaryContainer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m4 */
    public /* synthetic */ ToneDeltaPair m23807m4(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryContainer(), secondary(), 15.0d, TonePolarity.NEARER, false);
    }

    /* renamed from: m5 */
    public static /* synthetic */ Double m23808m5(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 80.0d);
    }

    /* renamed from: o2 */
    public static /* synthetic */ Double m23819o2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 100.0d : 0.0d);
    }

    /* renamed from: o3 */
    public static /* synthetic */ Double m23820o3(DynamicScheme dynamicScheme) {
        return Double.valueOf(10.0d);
    }

    /* renamed from: o4 */
    public static /* synthetic */ Double m23821o4(DynamicScheme dynamicScheme) {
        return Double.valueOf(m23777i2(dynamicScheme) ? 80.0d : 90.0d);
    }

    /* renamed from: o5 */
    public static /* synthetic */ Double m23822o5(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 10.0d : 90.0d);
    }

    /* renamed from: p2 */
    public static /* synthetic */ Double m23826p2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 0.2d : 0.12d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ DynamicColor m23827p3(DynamicScheme dynamicScheme) {
        return secondaryFixedDim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p4 */
    public /* synthetic */ ToneDeltaPair m23828p4(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryFixed(), secondaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    /* renamed from: p5 */
    public static double m23829p5(Hct hct, DynamicScheme dynamicScheme) {
        Hct inViewingConditions = hct.inViewingConditions(m23836q5(dynamicScheme));
        return (!DynamicColor.tonePrefersLightForeground(hct.getTone()) || DynamicColor.toneAllowsLightForeground(inViewingConditions.getTone())) ? DynamicColor.enableLightForeground(inViewingConditions.getTone()) : DynamicColor.enableLightForeground(hct.getTone());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ DynamicColor m23834q3(DynamicScheme dynamicScheme) {
        return secondaryFixed();
    }

    /* renamed from: q5 */
    public static ViewingConditions m23836q5(DynamicScheme dynamicScheme) {
        return ViewingConditions.defaultWithBackgroundLstar(dynamicScheme.isDark ? 30.0d : 80.0d);
    }

    /* renamed from: r2 */
    public static /* synthetic */ Double m23840r2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 30.0d);
    }

    /* renamed from: r4 */
    public static /* synthetic */ Double m23842r4(DynamicScheme dynamicScheme) {
        return Double.valueOf(m23777i2(dynamicScheme) ? 70.0d : 80.0d);
    }

    /* renamed from: s3 */
    public static /* synthetic */ Double m23847s3(DynamicScheme dynamicScheme) {
        return Double.valueOf(m23777i2(dynamicScheme) ? 25.0d : 30.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s4 */
    public /* synthetic */ ToneDeltaPair m23848s4(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryFixed(), secondaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    /* renamed from: t2 */
    public static /* synthetic */ Double m23852t2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 40.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t3 */
    public /* synthetic */ DynamicColor m23853t3(DynamicScheme dynamicScheme) {
        return secondaryFixedDim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u2 */
    public /* synthetic */ ToneDeltaPair m23858u2(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(errorContainer(), error(), 15.0d, TonePolarity.NEARER, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ DynamicColor m23859u3(DynamicScheme dynamicScheme) {
        return secondaryFixed();
    }

    /* renamed from: u4 */
    public static /* synthetic */ Double m23860u4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.secondaryPalette.getKeyColor().getTone());
    }

    /* renamed from: w2 */
    public static /* synthetic */ Double m23870w2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 90.0d);
    }

    /* renamed from: w3 */
    public static /* synthetic */ Double m23871w3(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
    }

    /* renamed from: w4 */
    public static /* synthetic */ Double m23872w4(DynamicScheme dynamicScheme) {
        return Double.valueOf(0.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x2 */
    public /* synthetic */ ToneDeltaPair m23876x2(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(errorContainer(), error(), 15.0d, TonePolarity.NEARER, false);
    }

    /* renamed from: y3 */
    public static /* synthetic */ Double m23883y3(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 30.0d);
    }

    /* renamed from: y4 */
    public static /* synthetic */ Double m23884y4(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 6.0d : 98.0d);
    }

    /* renamed from: z2 */
    public static /* synthetic */ Double m23888z2(DynamicScheme dynamicScheme) {
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 95.0d);
    }

    @NonNull
    public DynamicColor background() {
        return new DynamicColor(NotificationCompat.WearableExtender.f5054t, new Function() { // from class: com.sunia.HTREnginev2.yaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.zaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23791k2;
                m23791k2 = MaterialDynamicColors.m23791k2((DynamicScheme) obj);
                return m23791k2;
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public DynamicColor controlActivated() {
        return DynamicColor.fromPalette("control_activated", new Function() { // from class: com.sunia.HTREnginev2.tdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.udj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23805m2;
                m23805m2 = MaterialDynamicColors.m23805m2((DynamicScheme) obj);
                return m23805m2;
            }
        });
    }

    @NonNull
    public DynamicColor controlHighlight() {
        return new DynamicColor("control_highlight", new Function() { // from class: com.sunia.HTREnginev2.tfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.vfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23819o2;
                m23819o2 = MaterialDynamicColors.m23819o2((DynamicScheme) obj);
                return m23819o2;
            }
        }, false, null, null, null, null, new Function() { // from class: com.sunia.HTREnginev2.wfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23826p2;
                m23826p2 = MaterialDynamicColors.m23826p2((DynamicScheme) obj);
                return m23826p2;
            }
        });
    }

    @NonNull
    public DynamicColor controlNormal() {
        return DynamicColor.fromPalette("control_normal", new Function() { // from class: com.sunia.HTREnginev2.maj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.naj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23840r2;
                m23840r2 = MaterialDynamicColors.m23840r2((DynamicScheme) obj);
                return m23840r2;
            }
        });
    }

    @NonNull
    public DynamicColor error() {
        return new DynamicColor("error", new Function() { // from class: com.sunia.HTREnginev2.ddj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).errorPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.edj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23852t2;
                m23852t2 = MaterialDynamicColors.m23852t2((DynamicScheme) obj);
                return m23852t2;
            }
        }, true, new gdj(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), new Function() { // from class: com.sunia.HTREnginev2.fdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23858u2;
                m23858u2 = MaterialDynamicColors.this.m23858u2((DynamicScheme) obj);
                return m23858u2;
            }
        });
    }

    @NonNull
    public DynamicColor errorContainer() {
        return new DynamicColor("error_container", new Function() { // from class: com.sunia.HTREnginev2.vbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).errorPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.wbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23870w2;
                m23870w2 = MaterialDynamicColors.m23870w2((DynamicScheme) obj);
                return m23870w2;
            }
        }, true, new gdj(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.sunia.HTREnginev2.xbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23876x2;
                m23876x2 = MaterialDynamicColors.this.m23876x2((DynamicScheme) obj);
                return m23876x2;
            }
        });
    }

    @NonNull
    public DynamicColor highestSurface(@NonNull DynamicScheme dynamicScheme) {
        return dynamicScheme.isDark ? surfaceBright() : surfaceDim();
    }

    @NonNull
    public DynamicColor inverseOnSurface() {
        return new DynamicColor("inverse_on_surface", new Function() { // from class: com.sunia.HTREnginev2.lbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.mbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23888z2;
                m23888z2 = MaterialDynamicColors.m23888z2((DynamicScheme) obj);
                return m23888z2;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.nbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23565A2;
                m23565A2 = MaterialDynamicColors.this.m23565A2((DynamicScheme) obj);
                return m23565A2;
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor inversePrimary() {
        return new DynamicColor("inverse_primary", new Function() { // from class: com.sunia.HTREnginev2.ldj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.mdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23577C2;
                m23577C2 = MaterialDynamicColors.m23577C2((DynamicScheme) obj);
                return m23577C2;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.ndj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23583D2;
                m23583D2 = MaterialDynamicColors.this.m23583D2((DynamicScheme) obj);
                return m23583D2;
            }
        }, null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public DynamicColor inverseSurface() {
        return new DynamicColor("inverse_surface", new Function() { // from class: com.sunia.HTREnginev2.bdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.cdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23595F2;
                m23595F2 = MaterialDynamicColors.m23595F2((DynamicScheme) obj);
                return m23595F2;
            }
        }, false, null, null, null, null);
    }

    @NonNull
    public DynamicColor neutralPaletteKeyColor() {
        return DynamicColor.fromPalette("neutral_palette_key_color", new Function() { // from class: com.sunia.HTREnginev2.hbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.ibj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23607H2;
                m23607H2 = MaterialDynamicColors.m23607H2((DynamicScheme) obj);
                return m23607H2;
            }
        });
    }

    @NonNull
    public DynamicColor neutralVariantPaletteKeyColor() {
        return DynamicColor.fromPalette("neutral_variant_palette_key_color", new Function() { // from class: com.sunia.HTREnginev2.jej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.kej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23619J2;
                m23619J2 = MaterialDynamicColors.m23619J2((DynamicScheme) obj);
                return m23619J2;
            }
        });
    }

    @NonNull
    public DynamicColor onBackground() {
        return new DynamicColor("on_background", new Function() { // from class: com.sunia.HTREnginev2.gcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.hcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23631L2;
                m23631L2 = MaterialDynamicColors.m23631L2((DynamicScheme) obj);
                return m23631L2;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.icj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23637M2;
                m23637M2 = MaterialDynamicColors.this.m23637M2((DynamicScheme) obj);
                return m23637M2;
            }
        }, null, new ContrastCurve(3.0d, 3.0d, 4.5d, 7.0d), null);
    }

    @NonNull
    public DynamicColor onError() {
        return new DynamicColor("on_error", new Function() { // from class: com.sunia.HTREnginev2.zej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).errorPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.afj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23649O2;
                m23649O2 = MaterialDynamicColors.m23649O2((DynamicScheme) obj);
                return m23649O2;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.bfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23655P2;
                m23655P2 = MaterialDynamicColors.this.m23655P2((DynamicScheme) obj);
                return m23655P2;
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onErrorContainer() {
        return new DynamicColor("on_error_container", new Function() { // from class: com.sunia.HTREnginev2.rcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).errorPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.scj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23667R2;
                m23667R2 = MaterialDynamicColors.m23667R2((DynamicScheme) obj);
                return m23667R2;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.tcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23673S2;
                m23673S2 = MaterialDynamicColors.this.m23673S2((DynamicScheme) obj);
                return m23673S2;
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onPrimary() {
        return new DynamicColor("on_primary", new Function() { // from class: com.sunia.HTREnginev2.bej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.dej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23685U2;
                m23685U2 = MaterialDynamicColors.m23685U2((DynamicScheme) obj);
                return m23685U2;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.eej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23691V2;
                m23691V2 = MaterialDynamicColors.this.m23691V2((DynamicScheme) obj);
                return m23691V2;
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onPrimaryContainer() {
        return new DynamicColor("on_primary_container", new Function() { // from class: com.sunia.HTREnginev2.dcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.ecj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23703X2;
                m23703X2 = MaterialDynamicColors.this.m23703X2((DynamicScheme) obj);
                return m23703X2;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.fcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23709Y2;
                m23709Y2 = MaterialDynamicColors.this.m23709Y2((DynamicScheme) obj);
                return m23709Y2;
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onPrimaryFixed() {
        return new DynamicColor("on_primary_fixed", new Function() { // from class: com.sunia.HTREnginev2.oej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.pej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23722a3;
                m23722a3 = MaterialDynamicColors.m23722a3((DynamicScheme) obj);
                return m23722a3;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.qej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23729b3;
                m23729b3 = MaterialDynamicColors.this.m23729b3((DynamicScheme) obj);
                return m23729b3;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.rej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23736c3;
                m23736c3 = MaterialDynamicColors.this.m23736c3((DynamicScheme) obj);
                return m23736c3;
            }
        }, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onPrimaryFixedVariant() {
        return new DynamicColor("on_primary_fixed_variant", new Function() { // from class: com.sunia.HTREnginev2.dgj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.egj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23750e3;
                m23750e3 = MaterialDynamicColors.m23750e3((DynamicScheme) obj);
                return m23750e3;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.aaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23757f3;
                m23757f3 = MaterialDynamicColors.this.m23757f3((DynamicScheme) obj);
                return m23757f3;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.baj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23764g3;
                m23764g3 = MaterialDynamicColors.this.m23764g3((DynamicScheme) obj);
                return m23764g3;
            }
        }, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public DynamicColor onSecondary() {
        return new DynamicColor("on_secondary", new Function() { // from class: com.sunia.HTREnginev2.efj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.ffj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23778i3;
                m23778i3 = MaterialDynamicColors.m23778i3((DynamicScheme) obj);
                return m23778i3;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.gfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23785j3;
                m23785j3 = MaterialDynamicColors.this.m23785j3((DynamicScheme) obj);
                return m23785j3;
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onSecondaryContainer() {
        return new DynamicColor("on_secondary_container", new Function() { // from class: com.sunia.HTREnginev2.ocj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.pcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23799l3;
                m23799l3 = MaterialDynamicColors.this.m23799l3((DynamicScheme) obj);
                return m23799l3;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.qcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23806m3;
                m23806m3 = MaterialDynamicColors.this.m23806m3((DynamicScheme) obj);
                return m23806m3;
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onSecondaryFixed() {
        return new DynamicColor("on_secondary_fixed", new Function() { // from class: com.sunia.HTREnginev2.gbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.rbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23820o3;
                m23820o3 = MaterialDynamicColors.m23820o3((DynamicScheme) obj);
                return m23820o3;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.ccj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23827p3;
                m23827p3 = MaterialDynamicColors.this.m23827p3((DynamicScheme) obj);
                return m23827p3;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.ncj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23834q3;
                m23834q3 = MaterialDynamicColors.this.m23834q3((DynamicScheme) obj);
                return m23834q3;
            }
        }, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onSecondaryFixedVariant() {
        return new DynamicColor("on_secondary_fixed_variant", new Function() { // from class: com.sunia.HTREnginev2.qbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.sbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23847s3;
                m23847s3 = MaterialDynamicColors.m23847s3((DynamicScheme) obj);
                return m23847s3;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.tbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23853t3;
                m23853t3 = MaterialDynamicColors.this.m23853t3((DynamicScheme) obj);
                return m23853t3;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.ubj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23859u3;
                m23859u3 = MaterialDynamicColors.this.m23859u3((DynamicScheme) obj);
                return m23859u3;
            }
        }, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public DynamicColor onSurface() {
        return new DynamicColor("on_surface", new Function() { // from class: com.sunia.HTREnginev2.qdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.sdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23871w3;
                m23871w3 = MaterialDynamicColors.m23871w3((DynamicScheme) obj);
                return m23871w3;
            }
        }, false, new gdj(this), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onSurfaceVariant() {
        return new DynamicColor("on_surface_variant", new Function() { // from class: com.sunia.HTREnginev2.cfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.dfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23883y3;
                m23883y3 = MaterialDynamicColors.m23883y3((DynamicScheme) obj);
                return m23883y3;
            }
        }, false, new gdj(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public DynamicColor onTertiary() {
        return new DynamicColor("on_tertiary", new Function() { // from class: com.sunia.HTREnginev2.mfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.nfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23566A3;
                m23566A3 = MaterialDynamicColors.m23566A3((DynamicScheme) obj);
                return m23566A3;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.ofj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23572B3;
                m23572B3 = MaterialDynamicColors.this.m23572B3((DynamicScheme) obj);
                return m23572B3;
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onTertiaryContainer() {
        return new DynamicColor("on_tertiary_container", new Function() { // from class: com.sunia.HTREnginev2.faj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.gaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23584D3;
                m23584D3 = MaterialDynamicColors.this.m23584D3((DynamicScheme) obj);
                return m23584D3;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.haj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23590E3;
                m23590E3 = MaterialDynamicColors.this.m23590E3((DynamicScheme) obj);
                return m23590E3;
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onTertiaryFixed() {
        return new DynamicColor("on_tertiary_fixed", new Function() { // from class: com.sunia.HTREnginev2.hfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.ifj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23602G3;
                m23602G3 = MaterialDynamicColors.m23602G3((DynamicScheme) obj);
                return m23602G3;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.kfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23608H3;
                m23608H3 = MaterialDynamicColors.this.m23608H3((DynamicScheme) obj);
                return m23608H3;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.lfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23614I3;
                m23614I3 = MaterialDynamicColors.this.m23614I3((DynamicScheme) obj);
                return m23614I3;
            }
        }, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    @NonNull
    public DynamicColor onTertiaryFixedVariant() {
        return new DynamicColor("on_tertiary_fixed_variant", new Function() { // from class: com.sunia.HTREnginev2.ybj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.zbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23626K3;
                m23626K3 = MaterialDynamicColors.m23626K3((DynamicScheme) obj);
                return m23626K3;
            }
        }, false, new Function() { // from class: com.sunia.HTREnginev2.acj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23632L3;
                m23632L3 = MaterialDynamicColors.this.m23632L3((DynamicScheme) obj);
                return m23632L3;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.bcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DynamicColor m23638M3;
                m23638M3 = MaterialDynamicColors.this.m23638M3((DynamicScheme) obj);
                return m23638M3;
            }
        }, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    @NonNull
    public DynamicColor outline() {
        return new DynamicColor("outline", new Function() { // from class: com.sunia.HTREnginev2.jbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.kbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23650O3;
                m23650O3 = MaterialDynamicColors.m23650O3((DynamicScheme) obj);
                return m23650O3;
            }
        }, false, new gdj(this), null, new ContrastCurve(1.5d, 3.0d, 4.5d, 7.0d), null);
    }

    @NonNull
    public DynamicColor outlineVariant() {
        return new DynamicColor("outline_variant", new Function() { // from class: com.sunia.HTREnginev2.sej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.tej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23662Q3;
                m23662Q3 = MaterialDynamicColors.m23662Q3((DynamicScheme) obj);
                return m23662Q3;
            }
        }, false, new gdj(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), null);
    }

    @NonNull
    public DynamicColor primary() {
        return new DynamicColor("primary", new Function() { // from class: com.sunia.HTREnginev2.ydj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.zdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23674S3;
                m23674S3 = MaterialDynamicColors.m23674S3((DynamicScheme) obj);
                return m23674S3;
            }
        }, true, new gdj(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), new Function() { // from class: com.sunia.HTREnginev2.aej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23680T3;
                m23680T3 = MaterialDynamicColors.this.m23680T3((DynamicScheme) obj);
                return m23680T3;
            }
        });
    }

    @NonNull
    public DynamicColor primaryContainer() {
        return new DynamicColor("primary_container", new Function() { // from class: com.sunia.HTREnginev2.z9j
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.vcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23692V3;
                m23692V3 = MaterialDynamicColors.m23692V3((DynamicScheme) obj);
                return m23692V3;
            }
        }, true, new gdj(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.sunia.HTREnginev2.rdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23698W3;
                m23698W3 = MaterialDynamicColors.this.m23698W3((DynamicScheme) obj);
                return m23698W3;
            }
        });
    }

    @NonNull
    public DynamicColor primaryFixed() {
        return new DynamicColor("primary_fixed", new Function() { // from class: com.sunia.HTREnginev2.ucj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.wcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23710Y3;
                m23710Y3 = MaterialDynamicColors.m23710Y3((DynamicScheme) obj);
                return m23710Y3;
            }
        }, true, new gdj(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.sunia.HTREnginev2.xcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23716Z3;
                m23716Z3 = MaterialDynamicColors.this.m23716Z3((DynamicScheme) obj);
                return m23716Z3;
            }
        });
    }

    @NonNull
    public DynamicColor primaryFixedDim() {
        return new DynamicColor("primary_fixed_dim", new Function() { // from class: com.sunia.HTREnginev2.vdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.wdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23730b4;
                m23730b4 = MaterialDynamicColors.m23730b4((DynamicScheme) obj);
                return m23730b4;
            }
        }, true, new gdj(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.sunia.HTREnginev2.xdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23737c4;
                m23737c4 = MaterialDynamicColors.this.m23737c4((DynamicScheme) obj);
                return m23737c4;
            }
        });
    }

    @NonNull
    public DynamicColor primaryPaletteKeyColor() {
        return DynamicColor.fromPalette("primary_palette_key_color", new Function() { // from class: com.sunia.HTREnginev2.odj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.pdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23751e4;
                m23751e4 = MaterialDynamicColors.m23751e4((DynamicScheme) obj);
                return m23751e4;
            }
        });
    }

    @NonNull
    public DynamicColor scrim() {
        return new DynamicColor("scrim", new Function() { // from class: com.sunia.HTREnginev2.lej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.mej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23765g4;
                m23765g4 = MaterialDynamicColors.m23765g4((DynamicScheme) obj);
                return m23765g4;
            }
        }, false, null, null, null, null);
    }

    @NonNull
    public DynamicColor secondary() {
        return new DynamicColor("secondary", new Function() { // from class: com.sunia.HTREnginev2.yej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.jfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23779i4;
                m23779i4 = MaterialDynamicColors.m23779i4((DynamicScheme) obj);
                return m23779i4;
            }
        }, true, new gdj(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), new Function() { // from class: com.sunia.HTREnginev2.ufj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23786j4;
                m23786j4 = MaterialDynamicColors.this.m23786j4((DynamicScheme) obj);
                return m23786j4;
            }
        });
    }

    @NonNull
    public DynamicColor secondaryContainer() {
        return new DynamicColor("secondary_container", new Function() { // from class: com.sunia.HTREnginev2.qaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.raj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23800l4;
                m23800l4 = MaterialDynamicColors.m23800l4((DynamicScheme) obj);
                return m23800l4;
            }
        }, true, new gdj(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.sunia.HTREnginev2.saj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23807m4;
                m23807m4 = MaterialDynamicColors.this.m23807m4((DynamicScheme) obj);
                return m23807m4;
            }
        });
    }

    @NonNull
    public DynamicColor secondaryFixed() {
        return new DynamicColor("secondary_fixed", new Function() { // from class: com.sunia.HTREnginev2.fgj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.kaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23821o4;
                m23821o4 = MaterialDynamicColors.m23821o4((DynamicScheme) obj);
                return m23821o4;
            }
        }, true, new gdj(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.sunia.HTREnginev2.vaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23828p4;
                m23828p4 = MaterialDynamicColors.this.m23828p4((DynamicScheme) obj);
                return m23828p4;
            }
        });
    }

    @NonNull
    public DynamicColor secondaryFixedDim() {
        return new DynamicColor("secondary_fixed_dim", new Function() { // from class: com.sunia.HTREnginev2.ycj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.zcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23842r4;
                m23842r4 = MaterialDynamicColors.m23842r4((DynamicScheme) obj);
                return m23842r4;
            }
        }, true, new gdj(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.sunia.HTREnginev2.adj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23848s4;
                m23848s4 = MaterialDynamicColors.this.m23848s4((DynamicScheme) obj);
                return m23848s4;
            }
        });
    }

    @NonNull
    public DynamicColor secondaryPaletteKeyColor() {
        return DynamicColor.fromPalette("secondary_palette_key_color", new Function() { // from class: com.sunia.HTREnginev2.hdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).secondaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.idj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23860u4;
                m23860u4 = MaterialDynamicColors.m23860u4((DynamicScheme) obj);
                return m23860u4;
            }
        });
    }

    @NonNull
    public DynamicColor shadow() {
        return new DynamicColor("shadow", new Function() { // from class: com.sunia.HTREnginev2.pfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.qfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23872w4;
                m23872w4 = MaterialDynamicColors.m23872w4((DynamicScheme) obj);
                return m23872w4;
            }
        }, false, null, null, null, null);
    }

    @NonNull
    public DynamicColor surface() {
        return new DynamicColor("surface", new Function() { // from class: com.sunia.HTREnginev2.cbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.dbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23884y4;
                m23884y4 = MaterialDynamicColors.m23884y4((DynamicScheme) obj);
                return m23884y4;
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceBright() {
        return new DynamicColor("surface_bright", new Function() { // from class: com.sunia.HTREnginev2.taj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.uaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23567A4;
                m23567A4 = MaterialDynamicColors.m23567A4((DynamicScheme) obj);
                return m23567A4;
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceContainer() {
        return new DynamicColor("surface_container", new Function() { // from class: com.sunia.HTREnginev2.wej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.xej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23579C4;
                m23579C4 = MaterialDynamicColors.m23579C4((DynamicScheme) obj);
                return m23579C4;
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceContainerHigh() {
        return new DynamicColor("surface_container_high", new Function() { // from class: com.sunia.HTREnginev2.waj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.xaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23591E4;
                m23591E4 = MaterialDynamicColors.m23591E4((DynamicScheme) obj);
                return m23591E4;
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceContainerHighest() {
        return new DynamicColor("surface_container_highest", new Function() { // from class: com.sunia.HTREnginev2.abj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.bbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23603G4;
                m23603G4 = MaterialDynamicColors.m23603G4((DynamicScheme) obj);
                return m23603G4;
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceContainerLow() {
        return new DynamicColor("surface_container_low", new Function() { // from class: com.sunia.HTREnginev2.uej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.vej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23615I4;
                m23615I4 = MaterialDynamicColors.m23615I4((DynamicScheme) obj);
                return m23615I4;
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceContainerLowest() {
        return new DynamicColor("surface_container_lowest", new Function() { // from class: com.sunia.HTREnginev2.fej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.gej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23627K4;
                m23627K4 = MaterialDynamicColors.m23627K4((DynamicScheme) obj);
                return m23627K4;
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceDim() {
        return new DynamicColor("surface_dim", new Function() { // from class: com.sunia.HTREnginev2.ebj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.fbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23639M4;
                m23639M4 = MaterialDynamicColors.m23639M4((DynamicScheme) obj);
                return m23639M4;
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceTint() {
        return new DynamicColor("surface_tint", new Function() { // from class: com.sunia.HTREnginev2.jdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).primaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.kdj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23651O4;
                m23651O4 = MaterialDynamicColors.m23651O4((DynamicScheme) obj);
                return m23651O4;
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public DynamicColor surfaceVariant() {
        return new DynamicColor("surface_variant", new Function() { // from class: com.sunia.HTREnginev2.lcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.mcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23663Q4;
                m23663Q4 = MaterialDynamicColors.m23663Q4((DynamicScheme) obj);
                return m23663Q4;
            }
        }, true, null, null, null, null);
    }

    @NonNull
    public DynamicColor tertiary() {
        return new DynamicColor("tertiary", new Function() { // from class: com.sunia.HTREnginev2.iaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.jaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23675S4;
                m23675S4 = MaterialDynamicColors.m23675S4((DynamicScheme) obj);
                return m23675S4;
            }
        }, true, new gdj(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), new Function() { // from class: com.sunia.HTREnginev2.laj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23681T4;
                m23681T4 = MaterialDynamicColors.this.m23681T4((DynamicScheme) obj);
                return m23681T4;
            }
        });
    }

    @NonNull
    public DynamicColor tertiaryContainer() {
        return new DynamicColor("tertiary_container", new Function() { // from class: com.sunia.HTREnginev2.agj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.bgj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23693V4;
                m23693V4 = MaterialDynamicColors.m23693V4((DynamicScheme) obj);
                return m23693V4;
            }
        }, true, new gdj(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.sunia.HTREnginev2.cgj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23699W4;
                m23699W4 = MaterialDynamicColors.this.m23699W4((DynamicScheme) obj);
                return m23699W4;
            }
        });
    }

    @NonNull
    public DynamicColor tertiaryFixed() {
        return new DynamicColor("tertiary_fixed", new Function() { // from class: com.sunia.HTREnginev2.caj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.daj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23711Y4;
                m23711Y4 = MaterialDynamicColors.m23711Y4((DynamicScheme) obj);
                return m23711Y4;
            }
        }, true, new gdj(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.sunia.HTREnginev2.eaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23717Z4;
                m23717Z4 = MaterialDynamicColors.this.m23717Z4((DynamicScheme) obj);
                return m23717Z4;
            }
        });
    }

    @NonNull
    public DynamicColor tertiaryFixedDim() {
        return new DynamicColor("tertiary_fixed_dim", new Function() { // from class: com.sunia.HTREnginev2.xfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.yfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23731b5;
                m23731b5 = MaterialDynamicColors.m23731b5((DynamicScheme) obj);
                return m23731b5;
            }
        }, true, new gdj(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 7.0d), new Function() { // from class: com.sunia.HTREnginev2.zfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ToneDeltaPair m23738c5;
                m23738c5 = MaterialDynamicColors.this.m23738c5((DynamicScheme) obj);
                return m23738c5;
            }
        });
    }

    @NonNull
    public DynamicColor tertiaryPaletteKeyColor() {
        return DynamicColor.fromPalette("tertiary_palette_key_color", new Function() { // from class: com.sunia.HTREnginev2.jcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).tertiaryPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.kcj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23752e5;
                m23752e5 = MaterialDynamicColors.m23752e5((DynamicScheme) obj);
                return m23752e5;
            }
        });
    }

    @NonNull
    public DynamicColor textHintInverse() {
        return DynamicColor.fromPalette("text_hint_inverse", new Function() { // from class: com.sunia.HTREnginev2.oaj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.paj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23766g5;
                m23766g5 = MaterialDynamicColors.m23766g5((DynamicScheme) obj);
                return m23766g5;
            }
        });
    }

    @NonNull
    public DynamicColor textPrimaryInverse() {
        return DynamicColor.fromPalette("text_primary_inverse", new Function() { // from class: com.sunia.HTREnginev2.hej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.iej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23780i5;
                m23780i5 = MaterialDynamicColors.m23780i5((DynamicScheme) obj);
                return m23780i5;
            }
        });
    }

    @NonNull
    public DynamicColor textPrimaryInverseDisableOnly() {
        return DynamicColor.fromPalette("text_primary_inverse_disable_only", new Function() { // from class: com.sunia.HTREnginev2.obj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.pbj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23794k5;
                m23794k5 = MaterialDynamicColors.m23794k5((DynamicScheme) obj);
                return m23794k5;
            }
        });
    }

    @NonNull
    public DynamicColor textSecondaryAndTertiaryInverse() {
        return DynamicColor.fromPalette("text_secondary_and_tertiary_inverse", new Function() { // from class: com.sunia.HTREnginev2.cej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralVariantPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.nej
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23808m5;
                m23808m5 = MaterialDynamicColors.m23808m5((DynamicScheme) obj);
                return m23808m5;
            }
        });
    }

    @NonNull
    public DynamicColor textSecondaryAndTertiaryInverseDisabled() {
        return DynamicColor.fromPalette("text_secondary_and_tertiary_inverse_disabled", new Function() { // from class: com.sunia.HTREnginev2.rfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette tonalPalette;
                tonalPalette = ((DynamicScheme) obj).neutralPalette;
                return tonalPalette;
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.sfj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double m23822o5;
                m23822o5 = MaterialDynamicColors.m23822o5((DynamicScheme) obj);
                return m23822o5;
            }
        });
    }
}
